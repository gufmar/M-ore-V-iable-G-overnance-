# Governance di budget strategico per Cardano

## Una proposta per una governance del tesoro scalabile ed economicamente efficace

**Lingue:** [English](README-short.md) · [Deutsch](README-short.de.md) · **Italiano** · [日本語](README-short.ja.md) · [한국어](README-short.ko.md)

> I documenti collegati ([README.md](README.md), [docs/](docs/)) sono attualmente **in inglese**.

**Proposta completa:** [README.md](README.md) _(English)_ · **Adozione e pilota:** [Path Forward](docs/path-forward.md) _(English)_

---

## Il problema

Cardano ha decentralizzato con successo la governance del tesoro. DRep, guardrail costituzionali, prelievi dal tesoro e voto delegato hanno creato una base che molti ecosistemi blockchain non hanno ancora raggiunto.

La prossima sfida non è la legittimità — è **scala e gestione responsabile**. Migliaia di holder ADA, centinaia di DRep, amministratori, revisori, fornitori e futuri partecipanti non possono prendere decisioni strategiche in modo sostenibile mentre annegano nella complessità operativa.

Questa proposta libera anche la Costituzione a concentrarsi su **elementi costituzionali duraturi e stabilizzanti** — ruoli, diritti, guardrail e responsabilità — e a distanziarsi da norme esecutive e operative che devono adattarsi continuamente a mercati e circostanze. Quelle scelte operative appartengono invece ai framework annuali.

Il modello attuale centrato sulle proposte crea attriti ricorrenti:

* **Sovraccarico dei DRep** — agli elettori si chiede di agire contemporaneamente come strateghi, responsabili degli acquisti, revisori e project manager
* **Sovraccarico di proposte** — iniziative non correlate arrivano insieme e non possono essere confrontate in modo significativo
* **Scarsa comparabilità** — lavori simili appaiono con strutture, condizioni e assunzioni diverse
* **Nessun segnale strutturato di co-financing** — quasi tutte le richieste chiedono il finanziamento integrale del tesoro senza metadati ordinabili sulla quota di tesoro
* **Fasi di budget ambigue** — i round Net Change Limit possono sostituirsi a vicenda senza passaggio di consegne fisso; pianificazione multi-trimestre e responsabilità restano poco chiare
* **Lacune di esecuzione** — restituzioni parziali o rimborsi volontari prima del round successivo non devono sostituire la consegna; le prestazioni devono trascinarsi nell'anno di budget successivo
* **Blocco del budget NCL** — grandi budget approvati che sotto-consegnano consumano comunque capacità NCL non riassegnabile; altri proponenti vengono esclusi mentre il valore non consegnato resta incerto fino a tarda fase del ciclo

I proponenti con budget approvati significativi spesso non hanno consegnato per intero o non hanno ottenuto l'approvazione delle milestone per una quota rilevante del volume del progetto — eppure quelle somme erano già state dedotte dall'NCL e non potevano andare ad altri progetti. Non si tratta solo di deliverable mancanti; danneggia economicamente i partecipanti che non rientravano nei limiti NCL.

La maggior parte delle grandi organizzazioni separa pianificazione strategica, allocazione del budget, approvvigionamento, amministrazione, revisione ed esecuzione. La governance Cardano oggi pone gran parte di questo carico direttamente sugli elettori. Non scala.

---

## Il concetto

Questa proposta fa evolvere la governance del tesoro da un modello **centrato sulle proposte** verso un modello di **budget strategico**.

### Cosa significano framework e categorie

Un **framework** è un blueprint strategico completo per un anno di budget: come si divide l'envelope annuale del tesoro, quali **categorie** esistono e quali regole valgono in ogni lane. Una **categoria** è un'area tematica di finanziamento — scope, KPI e quota di sub-budget — non un singolo progetto. I fornitori competono per slot di progetto **all'interno** delle categorie solo dopo che i DRep adottano un framework.

Esempio illustrativo — due proposte Q4 concorrenti per lo stesso anno di budget (cifre fittizie; si assume un envelope da 50M ADA):

| Categoria | Framework A — «Builder-first» | Framework B — «Enterprise & security» |
| -------- | ----------------------------- | ------------------------------------- |
| Core infrastructure & reliability | 18M ADA (36%) | 14M ADA (28%) |
| Developer tooling & SDKs | 12M ADA (24%) | — |
| Education & onboarding | 8M ADA (16%) | 4M ADA (8%) |
| Governance tooling & DRep support | 7M ADA (14%) | — |
| Open innovation (broad scope) | 5M ADA (10%) | — |
| Enterprise & real-world integrations | — | 15M ADA (30%) |
| Community & events | — | 9M ADA (18%) |
| Security audits & formal methods | — | 8M ADA (16%) |
| **Totale** | **50M ADA (100%)** | **50M ADA (100%)** |

I DRep classificano il **framework preferito nel suo insieme** — non ogni categoria separatamente. Il framework vincente fissa la mappa delle categorie e le quote di sub-budget per l'anno. Esempio: con il Framework A, un team potrebbe competere in Q1 per un progetto wallet-SDK in «Developer tooling & SDKs»; con il Framework B quella categoria non esiste, ma «Security audits & formal methods» potrebbe finanziare un audit delle librerie wallet.

A livello generale:

1. **Prima il framework annuale** — In Q4, framework concorrenti definiscono categorie, budget, KPI e regole operative per l'anno di budget successivo. I DRep scelgono tramite voto per preferenze, non centinaia di proposte non correlate in una volta.
2. **Competizioni trimestrali nelle categorie** — I fornitori competono entro scope, lane e KPI condivisi definiti dal framework attivo. I voti per categoria permettono ai DRep di partecipare e influenzare dove hanno competenza, senza effetto sulle proposte di altre categorie.
3. **Proposte comparabili** — Template strutturati con narrativa leggibile e campi machine-readable.
4. **Quota di tesoro e co-funding in anticipo** — Ogni prelievo dichiara quale quota proviene dal tesoro e quale dal contributo del proponente.
5. **Divulgazione forte** — Conflitti di interesse e relazioni con terzi dichiarati prima dei voti.
6. **Option 0 sempre in scheda** — La conservazione del tesoro compete con ogni decisione di finanziamento; la spesa deve essere giustificata.
7. **Ruoli separati** — I DRep definiscono direzione e fiducia; fornitori, amministratori e revisori competono entro guardrail costituzionali.

Il framework riprende modelli efficaci dall'approvvigionamento pubblico e dal budgeting aziendale — ma li organizza come **governance decentralizzata senza autorità centrale**. Le regole definiscono il campo di gioco; i DRep mantengono scelta in ogni fase. Framework annuali, categorie e struttura di approvvigionamento non sono pianificazione centralizzata.

![Panoramica del concetto](docs/diagrams/moreViableGovernance_sticks-usecases.png)

*Questo crea un percorso dalla sperimentazione di governance verso la maturità di governance.*

---

## Come funziona l'anno di budget

L'anno di budget è **allineato al calendario e fisso** — a differenza dei round NCL che possono essere sostituiti in qualsiasi momento.

| Quando | Cosa succede | Chi decide |
| ---- | ------------ | ----------- |
| **Q4** | Proposte di framework inviate; i DRep votano per preferenze sul framework annuale per l'anno imminente | DRep |
| **Q4** | Fiducia negli amministratori riallocata dopo le prestazioni osservabili nell'anno corrente | DRep |
| **Ogni trimestre** | Progetti inviati nelle categorie → periodo di challenge → perfezionamento → voto di conferma | DRep; revisori alla conferma |
| **Durante l'anno** | Consegna milestone, reporting, verifica; la reputazione si trascina | Amministratori, revisori |

![Ciclo annuale di governance](docs/diagrams/generated/annual-cycle.svg)

**Selezione del framework.** Chiunque può inviare un framework di governance completo in Q4. Gli autori del framework divulgano identità, interessi e conflitti in un template standardizzato. I DRep esprimono preferenze ordinate; la preferenza collettiva più forte diventa attiva per l'anno di budget successivo. Le categorie non sono quindi permanenti — ogni anno l'ecosistema può scegliere una struttura strategica del tutto nuova entro i guardrail costituzionali.

**Competizioni per categoria.** Una volta approvato un framework, le categorie operano indipendentemente ogni trimestre. Il voto trimestrale determina la prioritizzazione, non la durata del progetto (i progetti possono durare fino a dodici mesi). I flag pluriennali rendono visibile l'intento a lungo termine ma **non creano diritti** a finanziamenti futuri — ogni fase compete di nuovo nel proprio ciclo.

**Perfezionamento e conferma.** Il primo voto identifica la proposta preferita. Entra poi in challenge, chiarimento, combinazione e perfezionamento. Budget, termini di co-funding e deliverable possono migliorare. Un secondo voto di conferma ratifica la proposta perfezionata insieme al revisore responsabile e ai termini finali di finanziamento.

**Governance come dati.** Proposte, framework, divulgazioni e voti usano campi strutturati così DRep e strumenti possono filtrare, confrontare e pre-valutare su larga scala.

*Questo crea prevedibilità. Tutti sanno quando avvengono le decisioni.*

Dettagli su metodi di voto per preferenze, campi quota tesoro, meccanismi di challenge, slot di finanziamento e lane per newcomer: [README — Part III](README.md#part-iii---annual-budget-model) _(English)_.

---

## Principi di progettazione

| Principio | Cosa significa | Questo crea |
| --------- | --------------- | ------------ |
| **Strategia prima dell'operativo** | I DRep decidono priorità, budget, fiducia e selezione progetti — non la gestione quotidiana. Le regole di esecuzione appartengono al framework condiviso, non ad allegati su misura alle proposte. | Chiarezza — decisioni strategiche con gli elettori; esecuzione aperta alla competizione |
| **Calendario annuale fisso** | Voti Q4 su framework e fiducia noti; competizioni trimestrali per categoria; confini espliciti dell'anno di budget | Prevedibilità — i partecipanti possono pianificare e rendere conto del lavoro finanziato |
| **Option 0** | Ogni competizione include nessuna assegnazione / conservazione del tesoro accanto alle opzioni di spesa | Protezione del tesoro — la spesa deve essere giustificata |
| **Metadati di co-funding** | La quota di tesoro è un campo strutturato e filtrabile su ogni richiesta; il finanziamento 100% tesoro resta valido | Comparabilità — impegno del proponente visibile prima del voto |
| **Memoria istituzionale** | La cronologia delle consegne si trascina nell'anno di budget successivo; restituzioni parziali non cancellano prestazioni scarse | Responsabilità — prestazioni visibili nel tempo |
| **Competizione ovunque** | Framework, fornitori, amministratori e revisori competono tutti; nessun ruolo senza alternative | Resilienza — nessun attore singolo diventa indispensabile |

**Livello costituzionale vs operativo.** La Costituzione definisce ruoli, responsabilità, vincoli, tempistiche, guardrail del tesoro e meccanismi di responsabilità. I framework annuali definiscono il modello operativo di esecuzione per un anno di budget: categorie, budget, KPI e processi. La strategia può evolvere senza continui emendamenti costituzionali.

![Ruoli e poteri distribuiti](docs/diagrams/generated/role-model_proposer-dreps.svg)

*Questo crea flessibilità. La strategia evolve mentre la stabilità costituzionale resta intatta.*

**Ambito.** Questa proposta riguarda **solo la governance del tesoro e del budget**. Emendamenti costituzionali, modifiche ai parametri, hard fork e azioni informative continuano tramite i processi esistenti.

---

## Ruoli

| Ruolo | Propone | I DRep decidono | Compete su |
| ---- | -------- | --------------- | ---------- |
| **Autore del framework** | Blueprint strategico annuale completo (categorie, budget, KPI, modelli admin/revisione) | Voto per preferenze Q4 | Merito, trasparenza, divulgazione |
| **Fornitore (vendor)** | Progetti di categoria entro scope e lane definiti | Voti trimestrali per preferenze | Qualità di consegna e valore |
| **Amministratore** | Offerta di fiducia operativa | Allocazione fiducia Q4 | Qualità reporting, capacità, affidabilità |
| **Revisore (auditor)** | Servizi di verifica | Conferma per progetto | Competenza, indipendenza, prezzo |

Il potere è distribuito: i progettisti del framework non definiscono l'unico processo; gli amministratori competono per fiducia invece di ancorare commissioni nelle proposte; i revisori si registrano in un mercato competitivo. Nessun ruolo dovrebbe auto-definirsi e risultare inevitabile.

*Questo crea equilibrio. La direzione strategica è scelta democraticamente senza attori di governance permanenti e incontestabili.*

Livelli di identità vendor, meccanismi di reputazione, limiti di capacità e rotazione revisori: [README — Part IV](README.md#part-iv---roles-and-accountability) _(English)_.

---

## Vantaggi per partecipante

| Partecipante | Principali guadagni |
| ------------ | ------------------- |
| **Holder ADA** | Priorità più chiare, cicli di spesa prevedibili, cronologia prestazioni trasparente, delega più semplice quando i DRep si concentrano sulla strategia |
| **DRep** | Una domanda per fase di governance; proposte strutturate e comparabili; filtri machine-readable; focus su direzione, budget e fiducia |
| **Fornitori** | Scope e KPI di categoria noti; competizione equa nelle lane; percorsi per newcomer verso progetti più grandi; Option 0 impone giustificazione del valore |
| **Amministratori** | Mandato dalla fiducia dei DRep, non da commissioni dei proponenti; mercato competitivo per l'eccellenza operativa |
| **Revisori** | Ruolo definito, competenza registrata, opportunità competitive tra categorie |
| **Autori del framework** | Ruolo visibile nella direzione annuale; competizione tra strategie complete invece di dibattiti frammentati |

*Questo crea allineamento. Ogni partecipante ottiene regole più chiare, competizione più equa e meno responsabilità ambigue.*

---

## Rischi principali (sintesi)

| Rischio | Salvaguardia |
| ------- | ------------ |
| Cattura del framework | Invio Q4 aperto, voto DRep classificato, divulgazione obbligatoria, reset annuale |
| Ruoli monopolistici auto-definiti | Nessun amministratore o revisore senza alternative; tutte le parti proponenti competono |
| Debole responsabilità di consegna | Milestone, verifica revisore, reputazione tra anni di budget; nessun reset solo tramite restituzione fondi |
| Fasi di budget ambigue (NCL) | Ciclo annuale fisso, calendario Q4 e trimestrale noto |
| Percezione di burocrazia | Minimizzazione della governance — meno decisioni DRep, a maggior valore |

La protezione più forte è architettonica: chiedendo quali decisioni i DRep debbano prendere, il modello riduce la superficie d'attacco invece di ottimizzare solo la meccanica di voto. La sfida del tesoro Cardano è soprattutto un problema di **architettura di governance**, non di voto.

*Questo crea resilienza. I rischi noti hanno contromisure nominate invece di buona volontà presunta.*

Tabella completa rischi e salvaguardie: [README — Risks and Safeguards](README.md#risks-and-safeguards) _(English)_.

---

## Stato e prossimi passi

Questa è una **bozza grezza di concetto** — concreta abbastanza per verificare se DRep esperti supporterebbero un ripensamento fondamentale della governance del tesoro, ma volutamente incompleta nei dettagli operativi.

**La stesura collaborativa è l'obiettivo principale.** Il testo apre la discussione; non è una riforma finita. Se la direzione trova supporto, la fase successiva dovrebbe coinvolgere più DRep in workshop, revisione e perfezionamento.

L'adozione iniziale potrebbe partire in modo incrementale — proposte di framework annuale, definizioni di categorie, selezione per preferenze, challenge strutturate — preservando i meccanismi esistenti. Design pilota, moduli graduali e tempistiche revisione legale: [Path Forward](docs/path-forward.md) _(English)_.

*Questo crea un percorso pratico in avanti. L'evoluzione diventa possibile senza disruption.*

---

## Lettura approfondita

* [README.md](README.md) _(English)_ — proposta completa: motivazione, dettaglio operativo, infrastruttura del tesoro, conclusione
* [Path Forward](docs/path-forward.md) _(English)_ — stesura collaborativa, pilota vs adozione completa, moduli graduali, tempistiche revisione legale
* [Document Structure](docs/document-structure.md) _(English)_ — come leggere questo repo e future suddivisioni documentali
* [Procurement & Budget Process Comparison](docs/procurement-comparison.md) _(English)_ — modelli di approvvigionamento pubblico e aziendale; co-financing
* [Preference Voting Methods](docs/preference-voting.md) _(English)_ — Ranked Choice, Condorcet, Schulze
* [Governance Diagrams](docs/diagrams.md) _(English)_ — fonti illustrazioni e rigenerazione CI
