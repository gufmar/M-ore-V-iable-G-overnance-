# Preference Voting Methods

This document explains how ranked preference voting works, how the main counting methods differ, and which approach may suit Cardano strategic budget governance.

The main [README](../README.md) proposes that DReps express **ordered preferences** rather than only Yes / No / Abstain when choosing between competing frameworks, category proposals, or similar multi-option decisions.

---

## Why Preference Voting?

Binary voting loses information.

Suppose four frameworks compete:

| Framework | Focus |
| --------- | ----- |
| A | Research-heavy |
| B | Development-heavy |
| C | Marketing-heavy |
| D | Balanced growth |

A DRep may think:

```text
B > D > C > A
```

With yes/no voting, that preference is lost. The ballot becomes a fragmented set of independent approvals, which encourages vote splitting and makes it harder to identify a collective winner.

Preference voting preserves ordering. Governance learns not only what a DRep accepts, but what they prefer relative to alternatives.

This creates better signal quality. Voters express priorities rather than isolated binary positions.

---

## What DReps Submit

A **ranked ballot** lists options in order of preference.

Example with five options (including Option 0):

```text
1. Framework B
2. Framework D
3. Option 0 - No Award / Treasury Retention
4. Framework A
5. Framework C
```

Rules that should be standardized:

* **Minimum ranking** - DReps rank as many options as they have opinions about; unranked options are treated as tied below ranked ones
* **Option 0 always present** - in funding competitions, treasury retention competes on equal footing (see [README - Treasury Funds Should Compete Against Treasury Retention](../README.md#treasury-funds-should-compete-against-treasury-retention))
* **No bullet voting** - ranking one option does not automatically reject others; the counting method resolves the collective outcome
* **Equal treatment** - all DRep ballots use the same format, human-readable and machine-readable

---

## Where This Applies in the Framework

Preference voting is intended for **multi-option selection** decisions:

| Decision | Options | Typical method |
| -------- | ------- | ---------------- |
| Q4 annual framework selection | Competing complete frameworks + Option 0 | Ranked preference (Condorcet-family or Schulze recommended) |
| Quarterly category competition | Competing proposals within a lane + Option 0 | Ranked preference |
| Administrator trust allocation | Multiple administrators with percentage weights | Trust allocation vote (separate mechanism - see below) |

**Confirmation votes** after refinement (pass / fail on a single matured proposal) may remain threshold-based yes/no votes. Preference voting is for choosing among alternatives, not for ratifying one finalized candidate.

**Administrator trust allocation** is a weighted distribution across administrators (for example 40% / 35% / 25%), not a winner-take-all ranking. That is a distinct vote type and should not be confused with Condorcet or RCV selection.

---

## Method 1: Ranked Choice Voting (RCV / Instant Runoff)

Also called **Instant Runoff Voting (IRV)**.

### How it works

1. Count first-preference votes for each option
2. If one option has more than 50% of first preferences, it wins
3. Otherwise, eliminate the option with the fewest first-preference votes
4. Transfer eliminated ballots to each voter's next ranked choice
5. Repeat until one option has a majority

### Example

10 DReps rank three frameworks:

| DRep | 1st | 2nd | 3rd |
| ---- | --- | --- | --- |
| 1-4 | A | B | C |
| 5-7 | B | C | A |
| 8-9 | C | B | A |
| 10 | B | A | C |

**Round 1** first preferences: A=4, B=4, C=2 - no majority.

**Round 2** eliminate C (fewest). C's ballots transfer: DReps 8-9 go to B.

Result: A=4, B=6 → **B wins**.

### Strengths

* Easy to explain to voters
* Familiar from municipal elections
* Produces a single winner with majority support (relative to remaining candidates)
* Works well with Option 0 - treasury retention can survive early rounds if enough DReps rank it highly

### Weaknesses

* Elimination order can change the outcome (sensitive to which candidate is removed first)
* Does not always select the option that would beat every other option in pairwise comparisons
* Later preferences may never matter if a voter's first choice remains competitive

### Best fit in this framework

RCV is a reasonable **transition method** when explainability matters more than mathematical optimality - for example, early Q4 pilots using off-chain tooling.

---

## Method 2: Condorcet Methods

Named after the Marquis de Condorcet, who observed that collective preferences are not always transitive.

### Core idea: pairwise comparison

For every pair of options (A vs B), ask: how many DReps prefer A over B?

If one option beats every other option in head-to-head comparisons, it is the **Condorcet winner**.

### Example

Three frameworks, 9 DReps:

| DRep | Ranking |
| ---- | ------- |
| 1-3 | A > B > C |
| 4-6 | B > C > A |
| 7-9 | C > A > B |

Pairwise results:

| Matchup | A wins | B wins | C wins |
| ------- | ------ | ------ | ------ |
| A vs B | 6 | 3 | - |
| B vs C | 6 | 3 | - |
| C vs A | 6 | 3 | - |

Every option beats one and loses one. There is **no Condorcet winner**. This is a **Condorcet cycle** (rock-paper-scissors).

When a cycle exists, a **Condorcet completion method** is needed to resolve the tie.

### Strengths

* Asks the natural question: "Which option does the electorate prefer head-to-head?"
* Reduces vote-splitting compared to plurality
* If a Condorcet winner exists, it is a strong democratic choice
* Well-suited to framework selection where several coherent alternatives compete

### Weaknesses

* Cycles are possible - a completion rule is mandatory
* Harder to explain than RCV
* Requires more computation and transparent publication of pairwise matrices

### Best fit in this framework

Condorcet logic aligns well with **annual framework selection** and **category competitions** where DReps compare a small set of coherent alternatives and Option 0.

---

## Method 3: Schulze Method

The **Schulze method** is a Condorcet completion rule based on **strongest beatpaths**.

### Core idea

Option A beats option B if there is a path of victories from A to B that is stronger than any path from B to A.

Think of it as: "A is reachable from B through a chain of pairwise wins, and that chain is stronger than B's best chain back."

If A has stronger beatpaths to B than B has to A, A is ranked above B in the final ordering.

### How it differs from basic Condorcet

| Aspect | Basic Condorcet | Schulze |
| ------ | --------------- | ------- |
| Cycle handling | Requires a separate completion rule | Built-in completion via beatpath strength |
| Output | Winner (or unresolved cycle) | Complete ranking of all options |
| Stability | Depends on chosen tiebreaker | Generally resistant to strategic nomination |
| Complexity | Moderate | Higher |

### Example intuition

In a cycle A > B > C > A:

* Schulze measures the **strength** of paths (weakest link in each path)
* The option with the strongest overall beatpath support ranks highest
* The result is a full ordering, not just a single winner

### Strengths

* One of the most highly regarded Condorcet completion methods
* Produces a complete ranking - useful when governance wants ordered results, not only a winner
* Resistant to many forms of strategic manipulation
* Used in practice by organizations including Wikimedia and some political parties

### Weaknesses

* Most difficult method to explain to non-technical voters
* Requires transparent tooling - voters should not need to compute beatpaths manually
* Implementation must be auditable and published alongside results

### Best fit in this framework

Schulze is a strong **long-term recommendation** for framework and category selection when:

* Native or off-chain tooling can compute and publish results automatically
* The ecosystem values mathematical robustness over simplicity
* A full ranking (not just first place) is useful for governance analytics

---

## Comparison Summary

| Criterion | RCV / IRV | Condorcet | Schulze |
| --------- | --------- | --------- | ------- |
| Voter simplicity | High | Medium | Low (without tooling) |
| Finds pairwise majority winner | Not guaranteed | Yes, when one exists | Yes, with cycle resolution |
| Handles cycles | N/A (elimination-based) | Needs completion rule | Built-in |
| Full ranking output | Partial (elimination trace) | Depends on method | Yes |
| Resistance to vote splitting | Good | Very good | Very good |
| Implementation complexity | Low | Medium | Medium-high |
| Auditability | Straightforward | Pairwise matrix publishable | Beatpath matrix publishable |
| Transition suitability | Excellent | Good | Good with tooling |

---

## Recommendation for Cardano Budget Governance

### Short term (Q4 pilot)

Use **RCV / Instant Runoff** via platforms such as [Ekklesia](https://docs.ekklesia.vote/) (Hydra-based, with on-chain result settlement), with:

* Published ranked ballots (or verifiable commitments)
* Open elimination-round results
* Option 0 included in every funding competition

This prioritizes participation and understandability while native L1 support is developed.

### Medium term

Adopt a **Condorcet-family method** for framework and category selection, publishing:

* The full pairwise preference matrix
* Whether a Condorcet winner exists
* The completion result if a cycle occurs

### Long term

Implement **Schulze** (or an equivalently robust Condorcet completion method) in the governance business logic layer, with:

* Machine-readable ballot schemas
* Wallet and portal integration
* On-chain or verifiable off-chain result publication
* Full ranking output for analytics and transparency

---

## Implementation Requirements

Whatever method is chosen, the governance business logic layer should standardize:

### Ballot schema

```json
{
  "vote_id": "2026-q4-framework",
  "voter": "drep_credential_hash",
  "rankings": [
    { "option_id": "framework_b", "rank": 1 },
    { "option_id": "framework_d", "rank": 2 },
    { "option_id": "option_0", "rank": 3 },
    { "option_id": "framework_a", "rank": 4 }
  ],
  "submitted_at": "2026-11-15T12:00:00Z"
}
```

### Result publication

* Raw aggregated preference data (or privacy-preserving equivalent)
* Round-by-round or pairwise results depending on method
* Final winner and full ranking
* Method identifier (for example `schulze`, `irv`, `condorcet-ranked-pairs`)

### Auditability

* Any DRep or delegate should be able to verify that published results match submitted ballots
* Tools, explorers, and portals should render the same outcome from the same data

This creates interoperability. Many tools can participate in a shared governance ecosystem using common preference-voting standards.

---

## Further Reading

* [Condorcet method (Wikipedia)](https://en.wikipedia.org/wiki/Condorcet_method)
* [Schulze method (Wikipedia)](https://en.wikipedia.org/wiki/Schulze_method)
* [Instant-runoff voting (Wikipedia)](https://en.wikipedia.org/wiki/Instant-runoff_voting)
* Tezos governance - staged proposal funneling and preference-based selection
* Main proposal: [README - Preference Voting](../README.md#preference-voting)

---

## Glossary

| Term | Meaning |
| ---- | ------- |
| **Ranked ballot** | Ordered list of options from most to least preferred |
| **First preference** | The option ranked #1 on a ballot |
| **Pairwise comparison** | Head-to-head contest between two options across all ballots |
| **Condorcet winner** | Option that beats every other option in pairwise comparisons |
| **Condorcet cycle** | Situation where no single option wins all pairwise matchups |
| **Beatpath** | Chain of pairwise victories connecting one option to another |
| **Option 0** | No Award / Treasury Retention - competes against spending proposals |
| **Completion method** | Algorithm to resolve Condorcet cycles and select a winner |
