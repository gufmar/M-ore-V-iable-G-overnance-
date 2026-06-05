# Regenerate SVG diagrams from D2 sources.
# Requires d2: https://d2lang.com
#   Windows: download from GitHub releases, or place d2.exe in .tools/

$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$DiagramsDir = Join-Path $Root "docs\diagrams"
$OutDir = Join-Path $DiagramsDir "generated"

# Resolve d2 binary
$D2 = $null
$Candidates = @(
    (Join-Path $Root ".tools\d2-v0.7.1\bin\d2.exe"),
    (Join-Path $Root ".tools\bin\d2.exe"),
    "d2"
)
foreach ($c in $Candidates) {
    if ($c -eq "d2") {
        if (Get-Command d2 -ErrorAction SilentlyContinue) { $D2 = "d2"; break }
    } elseif (Test-Path $c) {
        $D2 = $c
        break
    }
}
if (-not $D2) {
    Write-Error "d2 not found. Install from https://github.com/terrastruct/d2/releases or run from repo with .tools/d2."
}

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

Get-ChildItem (Join-Path $DiagramsDir "*.d2") | ForEach-Object {
    $out = Join-Path $OutDir ($_.BaseName + ".svg")
    Write-Host "Generating $($_.Name) -> generated\$($_.BaseName).svg"
    & $D2 $_.FullName $out
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
}

Write-Host "Done. $($((Get-ChildItem $OutDir '*.svg').Count)) SVG(s) in docs/diagrams/generated/"
