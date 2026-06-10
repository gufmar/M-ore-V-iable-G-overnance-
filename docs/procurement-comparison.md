# Procurement & Budget Process Comparison

This page compares the [Strategic Budget Governance](../README.md) concept with typical **business budgeting** and **public procurement** processes used around the world.

The main proposal borrows proven patterns — annual planning, competitive selection, milestone administration, independent audit — and arranges them for decentralized treasury governance. This document maps those patterns to familiar institutional practice so readers can see what is conventional, what is adapted, and what is specific to Cardano.

This is an **introductory reference**. It lists common elements, requirements, rules, and processes, and notes where comparable obligations typically appear in selected jurisdictions. Detailed country and sub-national profiles may be added later.

---

## Why Compare?

Large organizations — governments, municipalities, state-owned enterprises, and major corporations — rarely ask their highest decision-makers to simultaneously:

* Set multi-year strategy
* Draft procurement specifications
* Evaluate vendor bids line by line
* Administer contracts and milestone payments
* Conduct financial and performance audits

They **separate** these functions into planning cycles, procurement rules, contract administration, and oversight bodies.

The governance framework in this repository applies the same separation logic: DReps focus on strategy and trust allocation; vendors, administrators, and auditors compete within constitutional guardrails and an annual operational framework.

Understanding how familiar jurisdictions structure similar work helps explain **why** the proposal uses annual frameworks, categories, tender lanes, administrator trust votes, and reputation systems — and **what** is intentionally different in a permissionless, on-chain context.

---

## Typical Elements Mapped to This Framework

| Element | Typical purpose | Analog in this proposal |
| ------- | ----------------- | ----------------------- |
| **Annual budget / planning cycle** | Align spending with strategy for a fixed period | Q4 framework selection; quarterly category competitions within the budget year |
| **Strategic priorities / portfolio** | Translate policy into fundable programs | Annual framework categories and sub-budgets |
| **Procurement method selection** | Choose open tender, restricted procedure, framework agreement, etc. | Category type: open innovation vs tender-based vs outcome-defined |
| **Publication / transparency** | Notice of opportunity, evaluation criteria, award | Structured governance objects; on-chain or publicly queryable records |
| **Competition / anti-splitting** | Ensure fair comparison among bidders | Competing proposals within the same category; Option 0 (treasury retention) |
| **Evaluation criteria** | Price, quality, experience, methodology | DRep preference voting; category KPIs; reputation scores; [treasury funding ratio](../README.md#treasury-share-and-proposer-co-funding) |
| **Co-financing / cost sharing** | Beneficiary own contribution, matching funds, leverage | Proposer contribution metadata; treasury funding ratio on every TW request |
| **Conflict-of-interest rules** | Prevent biased award or administration | Constitutional constraints; competitive administrator and auditor roles |
| **Contract administration** | Milestones, change control, payment holds | Administrator trust allocation; milestone-based disbursement |
| **Audit & inspection** | Independent verification of spend and delivery | Competitive auditors; transparency levels; delivery history |
| **Vendor qualification / debarment** | Eligibility, past performance, sanctions | Reputation and institutional memory across budget years |
| **Appeals / protest** | Challenge improper procedure or award | Governance dispute paths defined at constitutional layer |
| **Record retention** | Evidence for oversight and future cycles | Governance-as-data; machine-readable artifacts |

Not every element exists in every jurisdiction. The table describes **recurring patterns**, not a claim that Cardano governance replicates any single legal code.

---

## Typical Requirements, Rules & Processes

The following processes appear repeatedly in public procurement and corporate sourcing. Wording and thresholds differ by country; the **sequence** is remarkably stable.

### 1. Planning & authorization

* Needs assessment and market consultation
* Budget envelope approval before solicitation
* Choice of procurement category and procedure type

**Jurisdictional note:** Mandatory for public bodies above value thresholds; common in large corporate capex/opex cycles.

### 2. Solicitation & competition

* Publication of opportunity and evaluation methodology
* Minimum response time and document access
* Open competition, restricted shortlist, or framework call-off

**Jurisdictional note:** Open competition is the default in EU-style and many Commonwealth systems; US federal practice uses FAR Part 6 competition requirements with defined exceptions.

### 3. Evaluation & award

* Scored or ranked evaluation against published criteria
* Standstill period or protest window before contract signature
* Award documentation and unsuccessful bidder notification

**Jurisdictional note:** Documented evaluation records are routinely required for audit defense in Germany, Italy, UK, India, and US federal procurement.

### 4. Contract execution

* Milestone or performance-based payment schedules
* Change orders within authorized scope
* Performance monitoring and reporting

**Jurisdictional note:** Standard in government IT and works contracts worldwide; corporate analogs use stage-gate funding.

### 5. Oversight & closure

* Financial audit and performance review
* Lessons learned and vendor performance files
* Sanctions or debarment for material non-performance

**Jurisdictional note:** Central audit institutions (e.g. supreme audit bodies, comptroller functions) are common in public sectors; Ethiopia, India, Japan, and US states each maintain distinct audit chains.

### 6. Co-financing and cost sharing

* Applicant own contribution or matching funds declared in the application
* Minimum co-financing thresholds by program type (research, SME, infrastructure)
* Audit of declared versus delivered contribution at project close
* In-kind contributions quantified and subject to verification

**Jurisdictional note:** Standard in EU Horizon and national R&D grants (*own contribution*, *Eigenmittel*); US federal grants (NSF, NIH) use cost sharing and matching requirements; World Bank and bilateral development finance use counterpart funding and leverage ratios. Classic price-competition tenders optimize total contract price rather than treasury share — but blended-finance and PPP models routinely combine public subsidy with private capital.

**Analog in this proposal:** Every treasury withdrawal declares `treasury_funding_ratio` and proposer contribution fields. DReps may filter and rank by ratio; categories may optionally cap maximum treasury share. Verification mechanics (escrow, milestone matching) may strengthen in later phases — see [Path Forward](path-forward.md).

---

## Co-financing and Cost Sharing

Public grant programs rarely treat the government as the sole funder. Recurring patterns:

| Pattern | Typical use | Terminology |
| ------- | ----------- | ----------- |
| **Mandatory minimum match** | R&D grants, regional SME subsidies | Cost sharing (US), co-financing (EU), Eigenmittel (Germany) |
| **Scored contribution** | Competitive grant panels | Value for money, applicant resources, sustainability after grant |
| **Counterpart funding** | Development banks, bilateral aid | Leverage ratio, counterpart obligation |
| **In-kind allowance** | University and nonprofit grants | Matched effort, donated equipment or staff time |
| **Milestone-matched release** | Stage-gate and tranched finance | Disbursement tied to verified co-payment |

This proposal adopts a **lighter-touch** version for Cardano: co-funding is structured metadata from day one, not necessarily a universal minimum match. That fits a permissionless ecosystem while still enabling DReps to prefer proposals with verified proposer commitment when comparable scope and quality exist.

See [Treasury Share and Proposer Co-Funding](../README.md#treasury-share-and-proposer-co-funding) for field definitions.

---

## Jurisdiction Overview

The table below summarizes **where comparable elements are typically required** — not a legal compliance checklist. Thresholds, exceptions, and enforcement differ widely. Consult national counsel for binding interpretation.

| Element | USA (federal) | Germany | Italy | UK | India | Japan | Ethiopia |
| ------- | ------------- | ------- | ----- | -- | ----- | ----- | -------- |
| **Governing procurement law / rules** | FAR; agency supplements | GWB / VgV; sector laws | Codice dei contratti pubblici (D.Lgs. 36/2023) | Procurement Act 2023 | GFR; CVC guidelines; state rules | Accounts Act; Cabinet Order on Contracts | Proclamation No. 649/2009 (as amended) |
| **Open competition default** | Yes (FAR Part 6) | Yes (above EU thresholds) | Yes (above EU thresholds) | Yes (above thresholds) | Yes (central govt; GeM for goods) | Yes (principle; exceptions listed) | Yes (principle in proclamation) |
| **Prior budget authorization** | Appropriations / apportionment | Budget law / commitment authorization | Bilancio / stanziamento | Supply estimates / budget Act | Vote on Account / budget approval | Budget approval by Diet | Budget proclamation / appropriation |
| **Publication of opportunities** | SAM.gov; FedBizOpps successor | TED / national portals | ANAC / national portals | Find a Tender | CPPP / GeM | GEPS (electronic portal) | Public bodies via procuring entities |
| **Standstill / protest window** | GAO / agency-level bid protests | Nachprüfungsverfahren | Ricorsi to TAR / ANAC | Standstill (UK regime) | CVC / administrative remedies | Administrative review systems | Complaint to procuring entity / oversight |
| **Conflict-of-interest disclosure** | Ethics rules; FAR organizational conflicts | Vergaberecht integrity rules | Codice anti-corruption linkage | Declarations in tender docs | Integrity pact; CVC norms | National Public Service ethics | Ethics and anti-corruption provisions |
| **Audit trail / documentation** | FAR Part 4; IG oversight | Vergabeakte; BVerfG/Bundesrechnungshof oversight | ANAC documentation duties | Contract registers | CAG audit; GeM logs | Board of Audit (JAC) | Federal Auditor General |
| **Performance / delivery audit** | CPARS; IG audits | Prüfung durch Rechnungshöfe | Collaudo / verification stages | Contract management reviews | CAG performance audits | JAC inspections | FAG performance reviews |
| **SME / preference programs** | Small business set-asides | Mittelstand considerations | PMI quotas in Italian code | SME flexibilities in UK Act | MSME preferences (policy) | SME promotion policies | Local preference provisions |
| **Framework / catalog contracts** | GWACs; IDIQ; schedules | Rahmenvereinbarungen | Accordi quadro | Framework agreements | GeM; rate contracts | Multiple-year framework contracts | Framework contracting allowed |

**USA scope:** Federal row reflects **FAR-based** practice. US states (e.g. Wyoming) operate under **state procurement codes** with different thresholds, protest forums, and preference rules — see [planned US state profiles](#planned-extensions-us-states) below.

**EU members:** Germany and Italy implement EU public procurement directives; the UK regime diverged post-Brexit but retains similar structural elements.

**Enforcement reality:** Rules on paper ≠ uniform practice. Implementation capacity, digital infrastructure, and corruption risk vary — especially relevant when comparing mature OECD systems with emerging public financial management regimes.

---

## How This Proposal Aligns and Differs

### Aligns with common practice

* **Separated roles** — strategy (DReps), execution competition (vendors), administration (trusted administrators), verification (auditors)
* **Annual rhythm** — predictable cycle instead of ad-hoc proposal floods
* **Structured comparison** — proposals within shared categories rather than incomparable one-offs
* **Competition includes non-award** — Option 0 mirrors "no bid accepted / funds retained"
* **Institutional memory** — reputation carries across budget years, analogous to vendor performance files
* **Co-financing visibility** — treasury funding ratio and proposer contribution metadata, analogous to grant cost-sharing declarations

### Differs by design

* **No central procurement authority** — rules are constitutional and framework-level; no single ministry awards contracts
* **Permissionless participation** — vendor eligibility is not limited to a pre-registered national supplier list
* **On-chain transparency option** — publication and audit artifacts can be natively verifiable
* **Delegated trust voting** — administrator allocation resembles framework-contract panel selection, but weighted by DRep trust votes
* **Preference voting** — collective choice among multiple frameworks or proposals may use Condorcet-family methods rather than single-score evaluation committees

---

## Planned Extensions — National Profiles

The following sections are **reserved for future detailed write-ups**. Each profile will describe planning law, procurement procedure types, oversight institutions, SME treatment, digital platforms, and notable reform trends — then map them explicitly to framework elements in this repository.

| Profile | Primary legal / institutional anchors | Status |
| ------- | --------------------------------------- | ------ |
| [Germany](#germany) | GWB, VgV, Vergabekammern, Rechnungshöfe | Planned |
| [Italy](#italy) | Codice dei contratti pubblici, ANAC | Planned |
| [Switzerland](#switzerland) | Bundesgesetz über das öffentliche Beschaffungswesen (IBG); cantonal rules | Planned |
| [Japan](#japan) | Accounts Act; Cabinet Order; JAC | Planned |
| [India](#india) | GFR; GeM; CAG; state procurement manuals | Planned |

### Germany

*Planned section: federal vs state (Länder) competence, VgV procedure types, Nachprüfung, Mittelstand policy, alignment with EU directives.*

### Italy

*Planned section: ANAC oversight, accordi quadro, sub-threshold rules, anti-corruption linkage, post-2023 code reforms.*

### Switzerland

*Planned section: federal IBG, WTO/GATT thresholds, cantonal diversity, SME and sustainability criteria in public tenders.*

### Japan

*Planned section: GEPS electronic procedures, designated procurement categories, Board of Audit role, keiretsu-neutral competition principles.*

### India

*Planned section: GeM centralization, GFR compliance, CAG audit chain, MSME preferences, state-level variation.*

---

## Planned Extensions — US States

US federal FAR practice does not govern state and local procurement. State codes differ materially on protest rights, cooperative purchasing, and preference programs.

| Profile | Primary legal / institutional anchors | Status |
| ------- | --------------------------------------- | ------ |
| [Wyoming](#wyoming) | Wyoming Procurement Code (W.S. 9-2-1001 et seq.); State Purchasing Division | Planned |

### Wyoming

*Planned section: state purchasing division structure, competitive sealed bidding vs negotiation, protest process, preference for Wyoming goods and services, comparison to federal FAR concepts.*

---

## Contributing

When adding a national or state profile:

1. Cite primary legislation and official portals — not secondary summaries alone.
2. Distinguish **legal requirement** from **common practice**.
3. End each profile with a short **mapping table** to framework elements in the [README](../README.md).
4. Keep jurisdictional content separate from normative governance recommendations — this page describes the world; the README proposes the model.

---

## Further Reading

* [Strategic Budget Governance — main proposal](../README.md)
* [Preference Voting Methods](preference-voting.md) — how multi-option selection works in the framework
* [Governance Diagrams](diagrams.md) — annual cycle, roles, treasury flow, and category lifecycle illustrations
