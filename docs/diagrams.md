# Governance Diagrams

This repository maintains governance illustrations as **text-based [D2](https://d2lang.com) sources** with **generated SVG** artifacts for publication in the README and other docs.

The principle matches the governance model itself: human-readable source → machine-readable structure → generated artifacts.

---

## Repository Layout

```text
docs/
├── diagrams.md              ← this file
├── preference-voting.md
├── procurement-comparison.md
└── diagrams/
    ├── annual-cycle.d2
    ├── category-lifecycle.d2
    ├── framework-funnel.d2
    ├── role-model.d2
    ├── treasury-flow.d2
    └── generated/
        ├── annual-cycle.svg
        ├── category-lifecycle.svg
        ├── framework-funnel.svg
        ├── role-model.svg
        └── treasury-flow.svg

scripts/
├── generate-diagrams.ps1    ← Windows
└── generate-diagrams.sh     ← Linux / macOS / CI
```

**Canonical sources** are the `.d2` files. **Derived artifacts** are the `.svg` files in `generated/`. Edit sources, regenerate SVGs, commit both.

---

## Diagram Index

| Source | SVG | Used in README section |
| ------ | --- | ---------------------- |
| `annual-cycle.d2` | `annual-cycle.svg` | Annual Governance Framework Selection |
| `framework-funnel.d2` | `framework-funnel.svg` | Annual Governance Framework Selection |
| `category-lifecycle.d2` | `category-lifecycle.svg` | Quarterly Category Competitions |
| `role-model.d2` | `role-model.svg` | Constitutional Layer vs Operational Layer |
| `treasury-flow.d2` | `treasury-flow.svg` | Treasury Protection |

---

## Prerequisites

Install [D2](https://d2lang.com) v0.6+:

* **Windows** - download from [GitHub releases](https://github.com/terrastruct/d2/releases) or place `d2.exe` in `.tools/`
* **macOS / Linux** - `curl -fsSL https://d2lang.com/install.sh | sh -s --`

Verify:

```bash
d2 --version
```

---

## Regenerating SVGs

### Windows (PowerShell)

```powershell
.\scripts\generate-diagrams.ps1
```

### Linux / macOS

```bash
bash scripts/generate-diagrams.sh
```

### Single diagram

```bash
d2 docs/diagrams/annual-cycle.d2 docs/diagrams/generated/annual-cycle.svg
```

After editing any `.d2` file, regenerate and commit the matching `.svg` in `docs/diagrams/generated/`.

---

## Continuous Integration

The workflow `.github/workflows/diagrams.yml` runs on changes to `docs/diagrams/**`:

1. Installs D2
2. Regenerates all SVGs
3. Fails if committed SVGs are out of date with their `.d2` sources

If CI fails with “SVGs are out of date”, run the generate script locally and commit the updated files.

---

## Authoring Guidelines

* Prefer **vertical** (`direction: down`) layouts for mobile readability
* Keep labels short; expand detail in README prose rather than diagram nodes
* Use `classes` in D2 for consistent colours across diagrams
* Avoid long cross-diagram arrows - nest notes near the node they annotate
* Never edit `generated/*.svg` by hand; always change the `.d2` source

---

## Why D2 (not hand-drawn graphics)

| Approach | Advantage |
| -------- | --------- |
| D2 source in Git | Diffable, reviewable in pull requests |
| Generated SVG | Scales cleanly on desktop and mobile |
| Regeneration script | One command updates all diagrams |
| CI verification | Sources and artifacts stay in sync |

Hand-crafted PNGs or slide graphics may still be useful for workshops or social posts, but they should remain **derived presentations**, not the authoritative diagram source.
