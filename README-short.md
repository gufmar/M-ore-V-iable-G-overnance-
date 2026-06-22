# Strategic Budget Governance for Cardano

## A Proposal for Scalable, Cost-Effective Treasury Governance

**Languages:** **English** · [Deutsch](README-short.de.md) · [日本語](README-short.ja.md) · [한국어](README-short.ko.md)

**Full proposal:** [README.md](README.md) · **Adoption and pilot:** [Path Forward](docs/path-forward.md)

---

## The Problem

Cardano decentralized treasury governance successfully. DReps, constitutional guardrails, treasury withdrawals, and delegated voting established a foundation many blockchain ecosystems have not yet achieved.

The next challenge is not legitimacy — it is **scale and responsible stewardship**. Thousands of ADA holders, hundreds of DReps, administrators, auditors, vendors, and future participants cannot sustainably make strategic decisions while drowning in operational complexity.

This proposal also frees the Constitution to focus on **lasting, stabilizing constitutional elements** — roles, rights, guardrails, and accountability — and step back from executive and operational rulings that must continuously adapt to markets and circumstances. Those operational choices belong in annual frameworks instead.

Today's proposal-centric model creates recurring friction:

* **DRep overload** — voters are asked to act as strategists, procurement officers, auditors, and project managers at once
* **Proposal overload** — unrelated initiatives arrive together and cannot be meaningfully compared
* **Weak comparability** — similar work appears with different structures, conditions, and assumptions
* **No structured co-funding signal** — nearly all requests ask for full treasury funding with no rankable metadata for treasury share
* **Ambiguous budget phases** — Net Change Limit rounds can supersede each other without fixed handover, so multi-quarter planning and accountability stay unclear
* **Execution gaps** — partial fund returns or voluntary repayments before the next round must not substitute for delivery; performance should carry into the next budget year
* **NCL budget lock** — large approved budgets that under-deliver still consume NCL capacity that cannot be reassigned; other proposers are denied while undelivered value stays unclear until late in the cycle

Proposers with significant approved budgets have often failed to deliver fully or to sign off milestones for a noticeable share of their project volume — yet those amounts were already deducted from the NCL and could not go to other projects. That is not only missing deliverables; it economically harms participants who did not fit within NCL limits.

Most large organizations separate strategic planning, budget allocation, procurement, administration, auditing, and execution. Cardano governance currently places much of that burden directly on voters. That does not scale.

---

## The Concept

This proposal evolves treasury governance from a **proposal-centric** model toward a **strategic budget** model.

### What frameworks and categories mean

A **framework** is a complete strategic blueprint for one budget year: how the annual treasury envelope is divided, which **categories** exist, and what rules apply in each lane. A **category** is a themed funding area — scope, KPIs, and a sub-budget share — not an individual project. Vendors compete for project slots **inside** categories only after DReps adopt a framework.

Illustrative example — two competing Q4 proposals for the same budget year (fictional figures; assume a 50M ADA envelope):

| Category | Framework A — "Builder-first" | Framework B — "Enterprise & security" |
| -------- | ----------------------------- | ------------------------------------- |
| Core infrastructure & reliability | 18M ADA (36%) | 14M ADA (28%) |
| Developer tooling & SDKs | 12M ADA (24%) | — |
| Education & onboarding | 8M ADA (16%) | 4M ADA (8%) |
| Governance tooling & DRep support | 7M ADA (14%) | — |
| Open innovation (broad scope) | 5M ADA (10%) | — |
| Enterprise & real-world integrations | — | 15M ADA (30%) |
| Community & events | — | 9M ADA (18%) |
| Security audits & formal methods | — | 8M ADA (16%) |
| **Total** | **50M ADA (100%)** | **50M ADA (100%)** |

DReps rank their preferred **framework as a whole** — not each category separately. The winning framework fixes the category map and sub-budget shares for the year. Example: under Framework A, a team might compete in Q1 for a wallet-SDK project inside "Developer tooling & SDKs"; under Framework B, that category does not exist, but "Security audits & formal methods" might fund an audit of wallet libraries instead.

At a high level:

1. **Annual framework first** — In Q4, competing frameworks define categories, budgets, KPIs, and operating rules for the next budget year. DReps choose via preference voting, not hundreds of unrelated proposals at once.
2. **Quarterly competitions inside categories** — Vendors compete within shared scopes, lanes, and KPIs defined by the active framework. Category-scoped votes let DReps participate and influence where they have competence, with no effect on proposals in other categories.
3. **Comparable submissions** — Structured templates with human-readable narrative and machine-readable fields.
4. **Treasury share and co-funding up front** — Every withdrawal declares what share comes from treasury versus proposer contribution.
5. **Strong disclosure** — Conflicts of interest and third-party relationships declared before votes.
6. **Option 0 always on the ballot** — Treasury retention competes with every funding decision; spending must be justified.
7. **Separated roles** — DReps set direction and trust; vendors, administrators, and auditors compete under constitutional guardrails.

The framework borrows effective patterns from public procurement and corporate budgeting — but arranges them as **decentralized governance without central authority**. Rules define the playing field; DReps retain choice at every stage. Annual frameworks, categories, and procurement structure are not central planning.

![Concept overview](docs/diagrams/moreViableGovernance_sticks-usecases.png)

*This creates a path from governance experimentation toward governance maturity.*

---

## How the Budget Year Works

The budget year is **calendar-aligned and fixed** — in contrast to NCL rounds that can be superseded at any time.

| When | What happens | Who decides |
| ---- | ------------ | ----------- |
| **Q4** | Framework proposals submitted; DReps rank-vote on the annual framework for the upcoming year | DReps |
| **Q4** | Administrator trust reallocated after observable performance in the current year | DReps |
| **Each quarter** | Projects submitted within categories → challenge period → refinement → confirmation vote | DReps; auditors at confirmation |
| **Throughout** | Milestone delivery, reporting, verification; reputation carries forward | Administrators, auditors |

![Annual governance cycle](docs/diagrams/generated/annual-cycle.svg)

**Framework selection.** Anyone may submit a complete governance framework in Q4. Framework authors disclose identity, interests, and conflicts in a standardized template. DReps express ordered preferences; the strongest collective preference becomes active for the following budget year. Categories are therefore not permanent — each year the ecosystem may choose an entirely new strategic structure inside constitutional guardrails.

**Category competitions.** Once a framework is approved, categories operate independently each quarter. The quarterly vote determines prioritization, not project duration (projects may run up to twelve months). Multi-year flags make long-term intent visible but create **no rights** to future funding — every phase competes again in its own cycle.

**Refinement and confirmation.** The first vote identifies the preferred proposal. It then enters challenge, clarification, combination, and refinement. Budgets, co-funding terms, and deliverables may improve. A second confirmation vote ratifies the refined proposal together with the responsible auditor and final funding terms.

**Governance as data.** Proposals, frameworks, disclosures, and votes use structured fields so DReps and tools can filter, compare, and pre-assess at scale.

*This creates predictability. Everyone knows when decisions happen.*

Detail on preference voting methods, treasury-share fields, challenge mechanics, funding slots, and newcomer lanes: [README — Part III](README.md#part-iii---annual-budget-model).

---

## Design Principles

| Principle | What it means | This creates |
| --------- | --------------- | ------------ |
| **Strategy over operations** | DReps decide priorities, budgets, trust, and project selection — not day-to-day project management. Execution rules belong in the shared framework, not bespoke proposal attachments. | Clarity — strategic decisions with voters; execution open to competition |
| **Fixed annual calendar** | Known Q4 framework and trust votes; quarterly category competitions; explicit budget year boundaries | Predictability — participants can plan and hold funded work accountable |
| **Option 0** | Every competition includes no award / treasury retention alongside spending options | Treasury protection — spending must be justified |
| **Co-funding metadata** | Treasury share is a structured, filterable field on every request; 100% treasury funding remains valid | Comparability — proposer commitment visible before voting |
| **Institutional memory** | Delivery history carries into the next budget year; partial returns do not erase poor performance | Accountability — performance visible over time |
| **Competition everywhere** | Frameworks, vendors, administrators, and auditors all compete; no alternativeless roles | Resilience — no single actor becomes indispensable |

**Constitutional vs operational layer.** The Constitution defines roles, responsibilities, constraints, timelines, treasury guardrails, and accountability mechanisms. Annual frameworks define the operational execution model for one budget year: categories, budgets, KPIs, and processes. Strategy can evolve without constant constitutional amendments.

![Distributed roles and power](docs/diagrams/generated/role-model_proposer-dreps.svg)

*This creates flexibility. Strategy evolves while constitutional stability remains intact.*

**Scope.** This proposal addresses **treasury and budget governance only**. Constitutional amendments, parameter changes, hard forks, and informational actions continue through existing processes.

---

## Roles

| Role | Proposes | DReps decide | Competes on |
| ---- | -------- | ------------ | ----------- |
| **Framework author** | Complete annual strategic blueprint (categories, budgets, KPIs, admin/audit models) | Q4 preference vote | Merit, transparency, disclosure |
| **Vendor** | Category projects within defined scopes and lanes | Quarterly preference votes | Delivery quality and value |
| **Administrator** | Operational trust bid | Q4 trust allocation | Reporting quality, capacity, reliability |
| **Auditor** | Verification services | Per-project confirmation | Expertise, independence, pricing |

Power is distributed: framework designers do not define the only process; administrators compete for trust rather than embedding fees in proposals; auditors register in a competitive market. No role should be self-defining and unavoidable.

*This creates balance. Strategic direction is chosen democratically without permanent, unchallengeable governance actors.*

Vendor identity tiers, reputation mechanics, capacity limits, and auditor rotation: [README — Part IV](README.md#part-iv---roles-and-accountability).

---

## Payoffs by Participant

| Participant | Main gains |
| ----------- | ---------- |
| **ADA holders** | Clearer priorities, predictable spending cycles, transparent performance history, easier delegation when DReps focus on strategy |
| **DReps** | One question per governance phase; structured comparable proposals; machine-readable filtering; focus on direction, budgets, and trust |
| **Vendors** | Known category scopes and KPIs; fair competition within lanes; newcomer paths to larger projects; Option 0 forces value justification |
| **Administrators** | Mandate from DRep trust, not proposer fees; competitive market for operational excellence |
| **Auditors** | Defined role, registered expertise, competitive opportunities across categories |
| **Framework authors** | Visible role shaping annual direction; competition between complete strategies rather than fragmented debates |

*This creates alignment. Every participant gains clearer rules, fairer competition, and fewer ambiguous responsibilities.*

---

## Key Risks (Summary)

| Risk | Safeguard |
| ---- | --------- |
| Framework capture | Open Q4 submission, ranked DRep vote, mandatory disclosure, annual reset |
| Self-defining monopoly roles | No alternativeless administrators or auditors; all proposing sides compete |
| Weak delivery accountability | Milestones, auditor verification, reputation across budget years; no reset via fund return alone |
| Ambiguous budget phases (NCL) | Fixed annual cycle, known Q4 and quarterly calendar |
| Bureaucracy perception | Governance minimization — fewer, higher-value DRep decisions |

The strongest protection is architectural: by asking which decisions DReps should make at all, the model reduces attack surface rather than optimizing voting mechanics alone. Cardano's treasury challenge is mainly a **governance architecture** problem, not a voting problem.

*This creates resilience. Known risks have named countermeasures rather than assumed goodwill.*

Full risk table and safeguards: [README — Risks and Safeguards](README.md#risks-and-safeguards).

---

## Status and Next Steps

This is a **raw concept draft** — concrete enough to test whether experienced DReps would support a fundamental rethink of treasury governance, yet intentionally incomplete in operational detail.

**Collaborative drafting is the main goal.** The text opens discussion; it is not a finished reform. If the direction finds support, the next stage should bring more DReps into workshops, review, and fine-tuning.

Initial adoption could start incrementally — annual framework proposals, category definitions, preference-based selection, structured challenges — while preserving existing mechanisms. Pilot design, staged modules, and legal review timing: [Path Forward](docs/path-forward.md).

*This creates a practical path forward. Evolution becomes possible without disruption.*

---

## Further Reading

* [README.md](README.md) — full proposal: motivation, operational detail, treasury infrastructure, conclusion
* [Path Forward](docs/path-forward.md) — collaborative drafting, pilot vs full adoption, staged modules, legal review timing
* [Document Structure](docs/document-structure.md) — how to read this repo and future doc splits
* [Procurement & Budget Process Comparison](docs/procurement-comparison.md) — business and public procurement patterns; co-financing
* [Preference Voting Methods](docs/preference-voting.md) — Ranked Choice, Condorcet, Schulze
* [Governance Diagrams](docs/diagrams.md) — illustration sources and CI regeneration
