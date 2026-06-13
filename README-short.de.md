# Strategische Budget-Governance für Cardano

## Ein Vorschlag für skalierbare, kosteneffiziente Treasury-Governance

**Sprachen:** [English](README-short.md) · **Deutsch** · [日本語](README-short.ja.md) · [한국어](README-short.ko.md)

> Verlinkte ausführliche Dokumente ([README.md](README.md), [docs/](docs/)) sind derzeit **auf Englisch**.

**Vollständiger Vorschlag:** [README.md](README.md) _(English)_ · **Einführung und Pilot:** [Path Forward](docs/path-forward.md) _(English)_

---

## Das Problem

Cardano hat Treasury-Governance erfolgreich dezentralisiert. DReps, verfassungsrechtliche Leitplanken, Treasury-Abhebungen und delegiertes Voting haben eine Grundlage geschaffen, die viele Blockchain-Ökosysteme noch nicht erreicht haben.

Die nächste Herausforderung ist nicht Legitimität — sondern **Skalierung und verantwortungsvolle Verwaltung**. Tausende ADA-Inhaber, Hunderte DReps, Administratoren, Prüfer, Anbieter und künftige Teilnehmer können nicht dauerhaft strategische Entscheidungen treffen, während sie in operativer Komplexität ertrinken.

Das heutige proposal-zentrische Modell erzeugt wiederkehrende Reibung:

* **DRep-Überlastung** — Wähler sollen gleichzeitig als Strategen, Beschaffungsbeauftragte, Prüfer und Projektmanager agieren
* **Proposal-Überlastung** — unzusammenhängende Initiativen treffen gleichzeitig ein und lassen sich nicht sinnvoll vergleichen
* **Schwache Vergleichbarkeit** — ähnliche Vorhaben erscheinen mit unterschiedlichen Strukturen, Bedingungen und Annahmen
* **Kein strukturiertes Co-Funding-Signal** — fast alle Anträge fordern volle Treasury-Finanzierung ohne rankbare Metadaten zum Treasury-Anteil
* **Unklare Budgetphasen** — Net-Change-Limit-Runden können sich ohne feste Übergabe ablösen; Planung über mehrere Quartale und Rechenschaftspflicht bleiben unklar
* **Umsetzungslücken** — teilweise Rückzahlungen oder freiwillige Erstattungen vor der nächsten Runde dürfen Lieferung nicht ersetzen; Leistung soll ins nächste Budgetjahr tragen

Die meisten großen Organisationen trennen strategische Planung, Budgetzuweisung, Beschaffung, Administration, Prüfung und Ausführung. Cardano-Governance legt einen Großteil dieser Last derzeit direkt auf Wähler. Das skaliert nicht.

---

## Das Konzept

Dieser Vorschlag entwickelt Treasury-Governance von einem **proposal-zentrischen** Modell zu einem **strategischen Budget**-Modell.

Auf hoher Ebene:

1. **Jährlicher Rahmen zuerst** — Im Q4 definieren konkurrierende Rahmenwerke Kategorien, Budgets, KPIs und Betriebsregeln für das nächste Budgetjahr. DReps wählen per Präferenzvoting, nicht über Hunderte unzusammenhängender Proposals auf einmal.
2. **Vierteljährliche Wettbewerbe innerhalb von Kategorien** — Anbieter konkurrieren innerhalb gemeinsamer Scopes, Lanes und KPIs des aktiven Rahmenwerks.
3. **Vergleichbare Einreichungen** — Strukturierte Vorlagen mit menschenlesbarer Narrative und maschinenlesbaren Feldern.
4. **Treasury-Anteil und Co-Funding von Anfang an** — Jede Abhebung deklariert, welcher Anteil aus dem Treasury und welcher aus Beiträgen des Antragstellers stammt.
5. **Starke Offenlegung** — Interessenkonflikte und Drittbeziehungen vor Abstimmungen deklariert.
6. **Option 0 immer auf dem Stimmzettel** — Treasury-Beibehaltung konkurriert mit jeder Finanzierungsentscheidung; Ausgaben müssen begründet werden.
7. **Getrennte Rollen** — DReps setzen Richtung und Vertrauen; Anbieter, Administratoren und Prüfer konkurrieren innerhalb verfassungsrechtlicher Leitplanken.

Das Rahmenwerk übernimmt bewährte Muster aus öffentlicher Beschaffung und Unternehmensbudgetierung — ordnet sie aber als **dezentralisierte Governance ohne Zentralautorität**. Regeln definieren das Spielfeld; DReps behalten in jeder Phase die Wahl. Jährliche Rahmenwerke, Kategorien und Beschaffungsstruktur sind keine zentrale Planwirtschaft.

![Konzeptübersicht](docs/diagrams/moreViableGovernance_sticks-usecases.png)

*Das schafft einen Weg von Governance-Experimenten hin zu Governance-Reife.*

---

## Wie das Budgetjahr funktioniert

Das Budgetjahr ist **kalenderausgerichtet und fest** — im Gegensatz zu NCL-Runden, die jederzeit abgelöst werden können.

| Wann | Was passiert | Wer entscheidet |
| ---- | ------------ | --------------- |
| **Q4** | Rahmenwerk-Vorschläge eingereicht; DReps ranken das Jahresrahmenwerk für das kommende Jahr | DReps |
| **Q4** | Administrator-Vertrauen neu zugewiesen nach beobachtbarer Leistung im laufenden Jahr | DReps |
| **Jedes Quartal** | Projekte in Kategorien eingereicht → Challenge-Phase → Verfeinerung → Bestätigungsvote | DReps; Prüfer bei Bestätigung |
| **Fortlaufend** | Meilenstein-Lieferung, Berichterstattung, Verifikation; Reputation trägt weiter | Administratoren, Prüfer |

![Jährlicher Governance-Zyklus](docs/diagrams/generated/annual-cycle.svg)

**Rahmenwerk-Auswahl.** Jeder kann im Q4 ein vollständiges Governance-Rahmenwerk einreichen. Autoren legen Identität, Interessen und Konflikte in einer standardisierten Vorlage offen. DReps geben geordnete Präferenzen ab; die stärkste kollektive Präferenz wird für das folgende Budgetjahr aktiv. Kategorien sind daher nicht dauerhaft — jedes Jahr kann das Ökosystem eine völlig neue strategische Struktur innerhalb verfassungsrechtlicher Leitplanken wählen.

**Kategorie-Wettbewerbe.** Nach Genehmigung eines Rahmenwerks arbeiten Kategorien jedes Quartal unabhängig. Das Quartalsvote bestimmt Priorisierung, nicht Projektdauer (Projekte können bis zu zwölf Monate laufen). Mehrjahres-Flags machen langfristige Absicht sichtbar, schaffen aber **keine Rechte** auf künftige Finanzierung — jede Phase konkurriert erneut in ihrem eigenen Zyklus.

**Verfeinerung und Bestätigung.** Die erste Abstimmung identifiziert den bevorzugten Vorschlag. Danach folgen Challenge, Klärung, Zusammenführung und Verfeinerung. Budgets, Co-Funding-Bedingungen und Deliverables können verbessert werden. Eine zweite Bestätigungsabstimmung ratifiziert den verfeinerten Vorschlag zusammen mit dem verantwortlichen Prüfer und den finalen Finanzierungsbedingungen.

**Governance als Daten.** Proposals, Rahmenwerke, Offenlegungen und Votes nutzen strukturierte Felder, damit DReps und Tools filtern, vergleichen und in großem Maßstab vorab bewerten können.

*Das schafft Planbarkeit. Alle wissen, wann Entscheidungen anstehen.*

Details zu Präferenzvoting-Methoden, Treasury-Anteil-Feldern, Challenge-Mechanik, Funding-Slots und Newcomer-Lanes: [README — Part III](README.md#part-iii---annual-budget-model) _(English)_.

---

## Designprinzipien

| Prinzip | Bedeutung | Das schafft |
| ------- | --------- | ----------- |
| **Strategie vor Operative** | DReps entscheiden Prioritäten, Budgets, Vertrauen und Projektauswahl — nicht das Tagesgeschäft im Projektmanagement. Ausführungsregeln gehören in den gemeinsamen Rahmen, nicht in individuelle Proposal-Anhänge. | Klarheit — strategische Entscheidungen bei Wählern; Ausführung offen für Wettbewerb |
| **Fester Jahreskalender** | Bekannte Q4-Rahmenwerk- und Vertrauensvotes; vierteljährliche Kategorie-Wettbewerbe; explizite Budgetjahresgrenzen | Planbarkeit — Teilnehmer können planen und finanzierte Arbeit zur Rechenschaft ziehen |
| **Option 0** | Jeder Wettbewerb enthält „keine Vergabe / Treasury-Beibehaltung“ neben Ausgabeoptionen | Treasury-Schutz — Ausgaben müssen begründet werden |
| **Co-Funding-Metadaten** | Treasury-Anteil ist ein strukturiertes, filterbares Feld bei jedem Antrag; 100 % Treasury-Finanzierung bleibt gültig | Vergleichbarkeit — Engagement des Antragstellers vor der Abstimmung sichtbar |
| **Institutionelles Gedächtnis** | Lieferhistorie trägt ins nächste Budgetjahr; Teilrückzahlungen tilgen schlechte Leistung nicht | Rechenschaftspflicht — Leistung über Zeit sichtbar |
| **Wettbewerb überall** | Rahmenwerke, Anbieter, Administratoren und Prüfer konkurrieren alle; keine alternativlosen Rollen | Resilienz — kein einzelner Akteur wird unverzichtbar |

**Verfassungs- vs. operative Ebene.** Die Verfassung definiert Rollen, Verantwortlichkeiten, Einschränkungen, Zeitpläne, Treasury-Leitplanken und Rechenschaftsmechanismen. Jährliche Rahmenwerke definieren das operative Ausführungsmodell für ein Budgetjahr: Kategorien, Budgets, KPIs und Prozesse. Strategie kann sich entwickeln, ohne ständige Verfassungsänderungen.

![Verteilte Rollen und Macht](docs/diagrams/generated/role-model_proposer-dreps.svg)

*Das schafft Flexibilität. Strategie entwickelt sich, während verfassungsrechtliche Stabilität erhalten bleibt.*

**Geltungsbereich.** Dieser Vorschlag betrifft **nur Treasury- und Budget-Governance**. Verfassungsänderungen, Parameteränderungen, Hard Forks und Informationsaktionen laufen weiter über bestehende Prozesse.

---

## Rollen

| Rolle | Schlägt vor | DReps entscheiden | Konkurriert über |
| ----- | ----------- | ----------------- | ---------------- |
| **Rahmenwerk-Autor** | Vollständiger jährlicher strategischer Blueprint (Kategorien, Budgets, KPIs, Admin-/Prüfmodelle) | Q4-Präferenzvote | Verdienst, Transparenz, Offenlegung |
| **Anbieter (Vendor)** | Kategorieprojekte innerhalb definierter Scopes und Lanes | Vierteljährliche Präferenzvotes | Lieferqualität und Wert |
| **Administrator** | Operatives Vertrauensangebot | Q4-Vertrauenszuweisung | Berichtsqualität, Kapazität, Zuverlässigkeit |
| **Prüfer (Auditor)** | Verifikationsdienstleistungen | Projektspezifische Bestätigung | Expertise, Unabhängigkeit, Preis |

Macht ist verteilt: Rahmenwerk-Designer definieren nicht den einzigen Prozess; Administratoren konkurrieren um Vertrauen statt Gebühren in Proposals zu verankern; Prüfer registrieren sich in einem Wettbewerbsmarkt. Keine Rolle sollte sich selbst definieren und unvermeidbar sein.

*Das schafft Balance. Strategische Richtung wird demokratisch gewählt, ohne dauerhafte, unanfechtbare Governance-Akteure.*

Identitätsstufen für Anbieter, Reputationsmechanik, Kapazitätsgrenzen und Prüferrotation: [README — Part IV](README.md#part-iv---roles-and-accountability) _(English)_.

---

## Nutzen nach Teilnehmergruppe

| Teilnehmer | Hauptgewinne |
| ---------- | ------------ |
| **ADA-Inhaber** | Klarere Prioritäten, planbare Ausgabezyklen, transparente Leistungshistorie, einfachere Delegation wenn DReps sich auf Strategie konzentrieren |
| **DReps** | Eine Frage pro Governance-Phase; strukturierte vergleichbare Proposals; maschinenlesbares Filtern; Fokus auf Richtung, Budgets und Vertrauen |
| **Anbieter** | Bekannte Kategorie-Scopes und KPIs; fairer Wettbewerb innerhalb von Lanes; Einstiegswege für Newcomer zu größeren Projekten; Option 0 erzwingt Wertbegründung |
| **Administratoren** | Mandat aus DRep-Vertrauen, nicht aus Antragsteller-Gebühren; Wettbewerbsmarkt für operative Exzellenz |
| **Prüfer** | Definierte Rolle, registrierte Expertise, Wettbewerbschancen über Kategorien |
| **Rahmenwerk-Autoren** | Sichtbare Rolle bei der jährlichen Richtung; Wettbewerb zwischen vollständigen Strategien statt fragmentierter Debatten |

*Das schafft Ausrichtung. Jeder Teilnehmer erhält klarere Regeln, faireren Wettbewerb und weniger unklare Verantwortlichkeiten.*

---

## Zentrale Risiken (Kurzfassung)

| Risiko | Gegenmaßnahme |
| ------ | ------------- |
| Rahmenwerk-Erfassung | Offene Q4-Einreichung, geranktes DRep-Vote, Pflicht-Offenlegung, jährlicher Reset |
| Selbstdefinierte Monopolrollen | Keine alternativlosen Administratoren oder Prüfer; alle vorschlagenden Seiten konkurrieren |
| Schwache Liefer-Rechenschaft | Meilensteine, Prüfer-Verifikation, Reputation über Budgetjahre; kein Reset allein durch Fonds-Rückgabe |
| Unklare Budgetphasen (NCL) | Fester Jahreszyklus, bekannter Q4- und Quartalskalender |
| Bürokratie-Wahrnehmung | Governance-Minimierung — weniger, höherwertige DRep-Entscheidungen |

Der stärkste Schutz ist architektonisch: Indem gefragt wird, welche Entscheidungen DReps überhaupt treffen sollen, verringert das Modell die Angriffsfläche — statt nur Abstimmungsmechanik zu optimieren. Cardanos Treasury-Herausforderung ist vor allem ein **Governance-Architektur**-Problem, kein Voting-Problem.

*Das schafft Resilienz. Bekannte Risiken haben benannte Gegenmaßnahmen statt angenommenem Wohlwollen.*

Vollständige Risikotabelle und Gegenmaßnahmen: [README — Risks and Safeguards](README.md#risks-and-safeguards) _(English)_.

---

## Status und nächste Schritte

Dies ist ein **Rohkonzept-Entwurf** — konkret genug zu prüfen, ob erfahrene DReps eine grundlegende Neuausrichtung der Treasury-Governance unterstützen würden, aber absichtlich unvollständig in operativen Details.

**Kollaboratives Ausarbeiten ist das Hauptziel.** Der Text eröffnet Diskussion; er ist keine fertige Reform. Findet die Richtung Unterstützung, sollte die nächste Stufe mehr DReps in Workshops, Review und Feinschliff einbeziehen.

Erste Einführung kann schrittweise beginnen — jährliche Rahmenwerk-Vorschläge, Kategoriedefinitionen, präferenzbasierte Auswahl, strukturierte Challenges — bei Erhalt bestehender Mechanismen. Pilot-Design, gestaffelte Module und Timing der Rechtsprüfung: [Path Forward](docs/path-forward.md) _(English)_.

*Das schafft einen praktischen Weg nach vorn. Evolution wird möglich ohne Disruption.*

---

## Weiterführende Literatur

* [README.md](README.md) _(English)_ — vollständiger Vorschlag: Motivation, operative Details, Treasury-Infrastruktur, Fazit
* [Path Forward](docs/path-forward.md) _(English)_ — kollaboratives Ausarbeiten, Pilot vs. volle Einführung, gestaffelte Module, Timing der Rechtsprüfung
* [Document Structure](docs/document-structure.md) _(English)_ — Leseführung durch das Repo und künftige Aufteilung der Dokumente
* [Procurement & Budget Process Comparison](docs/procurement-comparison.md) _(English)_ — Muster aus Wirtschaft und öffentlicher Beschaffung; Co-Finanzierung
* [Preference Voting Methods](docs/preference-voting.md) _(English)_ — Ranked Choice, Condorcet, Schulze
* [Governance Diagrams](docs/diagrams.md) _(English)_ — Illustrationsquellen und CI-Regenerierung
