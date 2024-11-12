-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: DB_Sito
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Args`
--

DROP TABLE IF EXISTS `Args`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Args` (
  `numero_argomento` int NOT NULL,
  `numero_pagina` int NOT NULL,
  `titolo` text NOT NULL,
  `testo` text NOT NULL,
  `link_immagine` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Args`
--

LOCK TABLES `Args` WRITE;
/*!40000 ALTER TABLE `Args` DISABLE KEYS */;
INSERT INTO `Args` VALUES (1,1,'La parola \"impresa\"','Il dizionario italiano ha molteplici significati: il significato principale si riferisce a un\'attività economica organizzata con l\'obiettivo di <b>produrre</b> beni o fornire <b>servizi</b> per ottenere un <b>profitto</b>. Impresa può anche essere un’<b>azione</b> difficile o complessa, che richiede <b>impegno</b>, <b>coraggio</b> e <b>determinazione</b> per essere completata. La parola impresa come si può vedere ha più significati, i quali sono molto <b>differenti</b> tra loro. Apparentemente sembrano non essere <b>collegati</b> eppure presentano <b>elementi comuni</b>. Entrambe sono accomunate da un <b>obiettivo</b>, da un <b>leader</b> e da un <b>progetto</b>. Questi infatti sono gli <b>elementi più importanti</b>, devono sempre essere presenti altrimenti si finirà in un completo <b>fallimento</b>. <br><br> L\'impresa è un sistema:<br> -<b>Aperto</b>: e\' in continua mutazione, in base al tempo e al luogo in cui si trova. Trasforma gli input dell\'ambiente in output <b>(beni e servizi)</b><br> -<b>Sociale</b>: e\' creata dall\'uomo per l\'uomo e al suo interno si sviluppano gruppi sociali. <br> -<b>Non spontanto</b>: non ha alcuno scopo di per se\', serve l\'elemento umano e creativo dela produzione per fargliene avere uno.','/IMG/IMPRESA/impresa.jpg'),(2,1,'L\'impresa economica','L\'impresa economica rappresenta un\'unità fondamentale all\'interno del sistema economico, ed è classificabile in vari tipi, dai piccoli negozi di quartiere alle multinazionali con una presenza globale. Anche se ogni impresa è diversa per dimensioni, organizzazione e settore, l\'obiettivo principale rimane costante: generare <b>profitto</b>.<br><br> Le imprese economiche possono raggiungere il loro scopo in due principali modi:<br><br> -<b>Vendita di Prodotti</b>:<br> Nel settore <b>primario</b> legato all\'estrazione e raccolta di risorse naturali. Forniscono materie prime ad altre imprese.<br> Nel settore <b>secondario</b> legato all\'industria e alla trasformazione da materia prima a prodotto finito.<br><br> -<b>Offerta di Servizi</b>:<br> Nel settore <b>terziario</b> in costante sviluppo ed espansione che include attività come <b>turismo</b>, <b>istruzione</b>, <b>sanità</b>, e <b>servizi finanziari</b>.<br> Queste aziende si differenziano per la loro capacità di soddisfare le esigenze dei consumatori attraverso l\'iterazione e l\'assistenza diretta.<br><br> Inoltre, le imprese economiche svolgono un ruolo vitale nel contesto socio-economico, contribuendo alla creazione di <b>posti di lavoro</b>, allo sviluppo tecnologico e alla crescita del <b>PIL</b>.<br> La loro capacità di adattarsi alle dinamiche di mercato e alle esigenze dei consumatori è fondamentale per la loro sostenibilità e il loro <b>successo</b> a lungo termine.','/IMG/IMPRESA/impresa_economica.jpg'),(3,1,'Avere Successo','Com\'è possibile però che un\'azienda riesca ad avere <b>successo</b>? Beh, è molto semplice: questa deve riuscire a creare un <b>bisogno</b> alla <b>società</b>, il quale lei riuscirà a soddisfare. Così facendo, riuscirà a crearsi la sua <b>fetta di mercato</b> nella quale può generare un <b>guadagno</b> senza problemi.<br> Un\'impresa però per arrivare al <b>successo</b> deve essere ben <b>strutturata</b> ed <b>organizzata</b>:<br><br> - A capo c\'è il <b>leader</b>, la persona fondatrice dell\'azienda la quale sa come creare un bisogno per poi soddisfarlo. È la persona che guida l\'azienda prendendo le decisioni o delegandole a dei suoi dipendenti. È la persona di riferimento.<br><br> - L\'impresa ha un <b>obiettivo comune</b>, potrebbe essere la realizzazione di un prodotto oppure la messa in circolo di un <b>servizio specifico</b>. In ogni caso l\'impresa ha bisogno di soddisfare un bisogno, che sia creato da lei o no.<br><br> - Infine ci deve essere un <b>progetto</b> ben pensato, il quale deve essere strutturato in vari punti da completare e scadenze che bisogna rispettare, rientrare nel budget e avere una buona qualità in corrispondenza a costi e tempo.','/IMG/IMPRESA/impresa_successo.png'),(1,2,'Il Progetto','Un altro elemento fondamentale dell\'impresa è il progetto; questo è tutto il processo che porta la nostra impresa a raggiungere il suo obiettivo. Questo è fondamentale in un’azienda complessa, dove ci sono diverse persone con diverse competenze. Infatti, grazie a un buon progetto si possono coordinare tutti i membri del team, ottimizzando i tempi e riducendo al minimo le spese. Per essere efficace, un piano deve avere una caratteristica: avere un obiettivo chiaro e ben definito. - Voglio comprare un bel maglione → non è chiaro. - Vorrei diventare molto ricco → obiettivo non chiaro. - Vorrei comprare un computer usato spendendo al massimo 400 euro → obiettivo chiaro. È importante avere un\'idea ben precisa dei tempi di realizzazione del progetto, di una data di scadenza, in modo da poter ottimizzare al meglio la gestione delle risorse umane e materiali. Inoltre, per ottimizzare al meglio l\'utilizzo di queste risorse, bisogna anche avere ben chiaro il budget e la qualità che si vuole far avere al prodotto finito. Un progetto è un’impresa: - Complessa: ne prendono parte numerosi attori con differenti competenze tecniche. - Unica e irripetibile: per quanto sia simile a iniziative precedenti, ogni progetto cambia lo scenario economico, finanziario e sociale in cui esso è inserito. - Durata determinata: che per quanto variabile è sempre fissata, perché il tempo influisce sui costi e sulla qualità.','IMG/GESTIONE_PROGETTO/projrct.jpg'),(2,2,'WBS','La struttura più famosa riguardo al project management è WBS → work breakdown structure. Questa consiste nel suddividere il progetto in ogni sua minima parte. Queste parti sono dette WP → work packages. Ognuno di questi è schedulato in modo da avere una data di scadenza e il numero di persone che ci lavoreranno. Ciò permette di lavorare contemporaneamente a più WP, rendendo così molto più breve il tempo di completamento del progetto. Inoltre, permette, nel caso di ritardi, di non avere un’incisione troppo importante a livello di costi di realizzazione. Vantaggi del WBS: - Pianificazione più precisa: progetto più dettagliato e assegnazione del tempo e delle risorse più accurata. - Monitoraggio dell\'avanzamento: ogni WP può essere monitorato più facilmente e quindi accertarsi meglio dell\'avanzamento del progetto. - Chiarezza delle responsabilità: ogni WP viene assegnato a persone o team specifici, sapendo chi ha la responsabilità per quale parte del progetto. Esempio di WBS: - Livello 1: Progetto di costruzione dell\'edificio. - Livello 2: Pianificazione, Costruzione, Ispezioni. - Livello 3 (per la Costruzione): Fondazioni, Struttura, Tetto. - Livello 4 (per le Fondazioni): Scavo, Cementazione.','IMG/GESTIONE_PROGETTO/wbs.png'),(3,2,'Mappa di un Progetto','Qui di fianco c’è un grafico che rappresenta l’organizzazione di un viaggio perfetto. Ovvero sono elencati tutti gli step per realizzare il viaggio nel migliore dei modi, permettendoti così di sfruttare al massimo il tempo a tua disposizione nel luogo che hai scelto. Il grafico è molto semplice: - WP primari: scegliere la meta, scegliere le attività e i punti di interesse che si vogliono visitare, decidere il periodo di permanenza e infine, prima della partenza, cercare di prenotare tutto quello che ci interessa. - WP secondari: i WP primari di solito hanno dei sotto WP, i quali vanno a specificare cosa comprende quella categoria. Nel nostro caso, il periodo di permanenza comprende quanto durerà nel complesso il viaggio e in quale periodo dell’anno avverrà. Inoltre, c’è anche la suddivisione del tempo generale in ogni singolo punto di interesse deciso nel WP precedente. La sezione prenotazioni comprende sia i biglietti aerei che gli hotel, i quali è importante avere prima della partenza. Però comprende anche tutte le escursioni e i biglietti necessari in modo da non incontrare imprevisti non programmati.','IMG/GESTIONE_PROGETTO/schema_progetto.jpeg'),(1,3,'Il ruolo del Leader','Il leader è una figura cruciale per il successo e la crescita di un\'azienda. Non è solo colui che dirige, ma anche chi guida, ispira e motiva il team verso il raggiungimento di obiettivi chiari. Un buon leader deve avere una visione del futuro dell\'azienda e saperla comunicare in modo efficace a tutti i membri del team, coinvolgendoli nei progetti. La capacità di prendere decisioni strategiche è fondamentale, specialmente in momenti di crisi o cambiamento. Un leader deve essere in grado di mantenere la calma, valutare le opzioni disponibili e scegliere la strada migliore. Inoltre, un leader deve possedere forti abilità di comunicazione. Comunicare in modo chiaro e trasparente crea un ambiente di fiducia e collaborazione, dove i membri del team si sentono valorizzati e ascoltati. Essere un leader richiede anche una forte dose di responsabilità. Un leader deve essere pronto a rispondere delle proprie azioni e decisioni, e a imparare dai propri errori. Non tutti possono ricoprire questo ruolo, poiché richiede capacità e un approccio proattivo.','IMG/LEADER/leader_pic.jpg'),(2,3,'Qualita\' di un leader','Un leader efficace possiede diverse qualità fondamentali: - Visione chiara: deve avere una chiara idea del futuro dell\'azienda e sapere come raggiungerlo. Comunica questa visione in modo coinvolgente per motivare il team. - Empatia: un buon leader comprende i bisogni e le preoccupazioni dei suoi dipendenti. Questa empatia aiuta a creare un ambiente di lavoro positivo e a valorizzare le capacità di ciascun membro. - Capacità di ascolto: saper ascoltare le opinioni e i suggerimenti del team è essenziale. Un leader che è aperto al dialogo crea un clima di fiducia e favorisce la collaborazione. - Capacità decisionale: prendere decisioni in modo rapido e ponderato è una delle sfide più importanti. Un leader deve essere pronto a fare scelte difficili e a rimanere motivato anche dopo eventuali fallimenti. - Integrità: agire con onestà e trasparenza è fondamentale per guadagnarsi la fiducia del team. I leader devono essere coerenti tra le loro parole e azioni. - Carisma: il carisma aiuta un leader a coinvolgere e motivare le persone. Un leader carismatico sa valorizzare i punti di forza dei membri del team, facendoli sentire parte di qualcosa di più grande.','IMG/LEADER/leader_autorevole.jpeg'),(3,3,'Vari tipi di Leader','Nella storia si sono visti molti leader, però molto spesso si confondono un leader autorevole e uno autoritario. Ecco qui la differenza tra i due: - Leader autorevole: Il leader autorevole basa la sua leadership sulla fiducia e sul rispetto reciproco. È in grado di motivare il suo team grazie alla sua competenza, integrità e capacità di comunicare una visione chiara. L\'autorità che esercita deriva dal consenso e dall\'influenza, piuttosto che dalla coercizione. Incoraggia la partecipazione, favorisce lo sviluppo professionale e promuove un ambiente di lavoro collaborativo. - Leader autoritario: Un leader autoritario, invece, impone la propria autorità senza coinvolgere il team nei processi decisionali. Le decisioni vengono prese unilateralmente, e il leader si aspetta obbedienza senza discussione. Questo stile può creare un clima di tensione e inibire la creatività e la collaborazione. Sebbene possa essere efficace in situazioni di crisi o emergenze, a lungo termine può minare la motivazione e la fiducia dei dipendenti.','IMG/LEADER/leader_autoritario.jpeg'),(1,4,'Stellantis top o flop?','Il 16 gennaio segna la nascita di <b>Stellantis</b>, una nuova e ambiziosa multinazionale nel settore dei <b>motori</b>.<br> Questa fusione rappresenta un\'importante risposta strategica alla crescente competitività dei <b>marchi automobilistici</b> asiatici, che hanno saputo conquistare il mercato grazie a un\'offerta di <b>veicoli</b> con una buona qualità a un prezzo inferiore rispetto a quelli dei <b>marchi tradizionali</b>.<br><br> Questi concorrenti sono riusciti a ottenere una <b>fetta significativa di mercato</b>, costringendo Stellantis a trovare il proprio spazio in un <b>panorama automobilistico</b> in continua evoluzione.<br><br> Stellantis è formata da un mix di alcuni dei <b>marchi più famosi</b> al mondo, tra cui <b>Alfa Romeo</b>, <b>Chrysler</b>, <b>Citroën</b>, <b>FIAT</b>, <b>Jeep</b>, <b>Lancia</b>, <b>Maserati</b>, <b>Peugeot</b> e <b>Opel</b>.<br><br> L\'idea alla base della creazione di Stellantis è stata quella di ridurre i <b>costi di produzione</b> e di <b>ricerca</b> per diversi veicoli, consentendo così di abbattere i prezzi e competere più efficacemente con gli altri marchi.<br> Questa mossa strategica mirava a rafforzare la <b>presenza</b> dell\'azienda nel mercato e a migliorare la propria <b>competitività</b>.<br><br> Tuttavia, nonostante le buone intenzioni e le strategie messe in atto, l\'azienda ha faticato a ottenere i <b>risultati sperati</b>.<br> Le <b>sfide</b> legate alla crescente concorrenza e alle dinamiche di mercato hanno messo in evidenza le difficoltà di Stellantis nell\'adattarsi rapidamente alle esigenze dei <b>consumatori</b> e nel cogliere le <b>opportunità di crescita</b>.<br><br> La mancanza di un <b>approccio efficace</b> ha portato a domande sul <b>futuro</b> dell\'azienda e sulla sua capacità di rimanere competitiva in un <b>settore in rapido cambiamento</b>.<br><br>','IMG/STELLANTIS/stellants.webp'),(2,4,'Stellantis e il suo Flop','Nonostante le <b>aspettative iniziali</b> che avevano suscitato grande entusiasmo, <b>Stellantis</b> ha affrontato numerosi <b>problemi</b> che hanno compromesso seriamente il suo operato.<br> La <b>fusione</b> tra i vari <b>marchi</b> avrebbe dovuto portare a <b>sinergie</b> e a una maggiore <b>efficienza</b>, ma una serie di <b>decisioni strategiche</b> si sono rivelate inefficaci.<br> Questi <b>errori</b> hanno generato una serie di <b>fallimenti</b> che hanno non solo minato la <b>fiducia nel marchio</b>, ma hanno anche messo in difficoltà i <b>vertici aziendali</b>.<br><br> Uno degli esempi più significativi di questo <b>flop</b> è rappresentato dalla <b>FIAT 500e</b>, una <b>macchina elettrica</b> pensata per essere una <b>city car moderna</b>, comoda e ideale per l\'uso urbano nelle grandi <b>metropoli</b>.<br> Nonostante il grande <b>potenziale</b> di questo veicolo, il suo lancio si è rivelato un vero e proprio <b>disastro</b>.<br> Le <b>vendite</b> sono state estremamente basse, evidenziando un <b>calo del 42%</b> nel <b>2024</b> rispetto all\'anno precedente.<br><br> Questa mancanza di <b>interesse</b> da parte dei <b>consumatori</b> è stata attribuita all’alto prezzo della vettura, che si aggira attorno ai <b>30.000 euro</b> per un\'autonomia di appena <b>190 km</b>.<br> Le <b>aspettative</b> non sono state soddisfatte e ciò ha influenzato negativamente la <b>percezione</b> del marchio sul mercato, alimentando dubbi sulla capacità di Stellantis di competere con i <b>rivali più agguerriti</b>.<br><br>','IMG/STELLANTIS/500e.jpg'),(3,4,'Dal flop della 500e alla chiusura dello stabilimento Mirafiori','Il <b>calo delle vendite</b> della <b>500e</b> ha avuto ripercussioni dirette e significative sui <b>dipendenti</b> di <b>Stellantis</b>.<br> È importante notare che le 500e venivano prodotte nello stabilimento di <b>Mirafiori</b> in <b>Italia</b>, il quale ha una <b>capacità produttiva</b> di oltre <b>100.000 veicoli</b> all\'anno.<br> Tuttavia, con solo <b>20.000 modelli</b> venduti nei primi sei mesi del <b>2024</b>, lo stabilimento ha dovuto operare a una <b>capacità ridotta</b> di circa <b>1/5</b>, un dato che mette in luce la gravità della <b>situazione</b>.<br><br> Questa condizione ha portato Stellantis a prendere <b>decisioni drastiche</b>, come la <b>chiusura temporanea</b> dello stabilimento dal <b>5 luglio</b> al <b>4 agosto</b>.<br> Questa mossa ha costretto tutti i dipendenti a ricorrere alla <b>cassa integrazione</b>, una misura che ha generato notevoli <b>disagi economici</b> e <b>personali</b>.<br> Inoltre, dal <b>5</b> al <b>25 agosto</b>, le attività sono state sospese per la consueta <b>chiusura estiva</b>, aggravando ulteriormente la situazione.<br><br> Attualmente, ad oggi, <b>11 ottobre 2024</b>, il sito di Mirafiori rimarrà chiuso fino al <b>14 ottobre 2024</b>.<br> Questa serie di eventi ha creato notevoli difficoltà a ben <b>2.200 lavoratori</b>, portando alla luce le <b>fragilità</b> di un\'azienda che, pur avendo una lunga <b>storia</b> alle spalle, si trova ora ad affrontare <b>sfide senza precedenti</b> nel contesto attuale del <b>mercato automobilistico</b>.<br><br>','IMG/STELLANTIS/mirafiori.jpg'),(1,5,'Cos\'è il PIL e a cosa Serve','Il Prodotto Interno Lordo (PIL) è una misura economica che indica il valore complessivo di tutti i beni e servizi finali prodotti all\'interno di un paese in un determinato periodo, solitamente un anno. In sostanza, il PIL ci dà un\'idea della grandezza e della salute dell\'economia di un paese.<br><br> Misurare la crescita economica: Il PIL ci permette di capire se l\'economia di un paese sta crescendo o diminuendo nel tempo. Un aumento del PIL indica generalmente una crescita economica, mentre una diminuzione segnala una recessione.<br> Confrontare le economie: Confrontare il PIL di diversi paesi ci aiuta a capire le dimensioni relative delle loro economie e a identificare i paesi più sviluppati.<br> Valutare le politiche economiche: I governi utilizzano il PIL per valutare l\'efficacia delle loro politiche economiche e per prendere decisioni sulle future politiche fiscali e monetarie.<br> Monitorare i cicli economici: Il PIL può essere utilizzato per identificare i cicli economici, ovvero le fasi di espansione e contrazione dell\'attività economica.<br>','IMG/PIL/pil.jpg'),(2,5,'Come viene calcolato il PIL','Esistono 3 metodi principali per calcolare il PIL:<br><br>1. Metodo della Spesa: Questo è il metodo più usato, calcola il PIL sommando la spesa totale effettuata da diversi settori dell\'economia per acquistare beni e servizi finali. Si esamina il mercato dal lato della domanda e la formula è: PIL=Consumi + Investimenti + Spesa pubblica + Esportazioni nette. In questo metodo, si considerano solo le spese per i beni e i servizi finali per evitare il conteggio doppio dei beni intermedi.<br><br>2. Metodo del Valore Aggiunto: Questo metodo esamina il PIL dal lato dell\'offerta. Durante il processo produttivo infatti tutte le fasi che portano al prodotto finito aggiungono un valore alle materie prime e ai semilavorati di cui i prodotti sono fatti. Quindi la somma di questi valori aggiunti porta al valore del PIL, calcolato tramite la seguente formula: PIL= Ricavi – Spese sostenute per la produzione.<br><br>3. Metodo dei Redditi: Questo metodo calcola il PIL dal punto di vista dei fattori produttivi utilizzati, ovvero il lavoro e il capitale. Questi vengono remunerati come stipendi e profitti. Questo si ottiene tramite il seguente calcolo: PIL= Retribuzioni + Redditi da capitale.<br>','IMG/PIL/calcolo_pil.jpg'),(3,5,'Le Criticità del PIL','Il Prodotto Interno Lordo (PIL) è spesso utilizzato come indicatore principale della salute economica di un Paese, ma presenta molte criticità che ne limitano l\'affidabilità come misura del benessere complessivo.<br><br> Ecco alcune delle principali limitazioni:<br>1. Non Rappresenta il Benessere Sociale: Il PIL misura solo l\'attività economica, non il benessere effettivo della popolazione. Anche in presenza di un PIL elevato, disuguaglianze sociali, scarsa qualità della vita o limitato accesso a servizi essenziali possono compromettere il benessere dei cittadini.<br>2. Ignora la Qualità della Crescita: Il PIL include anche attività economiche che non generano vero valore per la società, come la spesa per la ricostruzione dopo disastri. Eventi negativi possono far aumentare il PIL, ma non migliorano la qualità della vita.<br>3. Esclude l\'Economia Non Osservata: Settori come il lavoro domestico, il volontariato e l\'economia informale non vengono rilevati dal PIL. Queste attività contribuiscono al benessere, ma non sono misurate, sottostimando così l\'attività economica effettiva.<br>4. Qualità dei Servizi Pubblici non Rilevata: Un aumento del PIL non indica automaticamente un miglioramento nella qualità dei servizi pubblici, come sanità e istruzione, essenziali per il benessere. La spesa pubblica può aumentare il PIL senza migliorare l\'efficacia dei servizi offerti.<br><br> In conclusione, il PIL offre un quadro parziale della realtà economica e sociale. Indicatori come l\'Indice di Sviluppo Umano (ISU) e l\'Indice di Benessere Economico Lordo (IBEWL) forniscono una visione più ampia, aiutando a comprendere meglio il benessere effettivo e la sostenibilità di un Paese.<br>','IMG/PIL/criticità_pil.webp'),(1,6,'Cos\'è l\'inflazione e da cosa è causata','L\'inflazione è un fenomeno economico che rappresenta l\'aumento generale e prolungato dei prezzi dei beni e dei servizi in un\'economia. Quando l\'inflazione cresce, il potere d\'acquisto della moneta diminuisce: con la stessa quantità di denaro si possono acquistare meno beni e servizi rispetto a prima. L’inflazione è spesso misurata tramite l’indice dei prezzi al consumo (CPI) o altri indici dei prezzi che monitorano come variano i costi di un paniere di beni e servizi tipici nel tempo.<br><br>L\'inflazione può avere diverse cause, e spesso è il risultato di una combinazione di fattori:<br><b>1. Inflazione da domanda: </b> Si verifica quando la domanda aggregata di beni e servizi supera la capacità produttiva di un’economia. Questa pressione sulla domanda, a fronte di un\'offerta limitata, spinge i prezzi verso l\'alto. È comune in periodi di espansione economica.<br><b>2. Inflazione da costi: </b> Si manifesta quando il costo di produzione dei beni e dei servizi aumenta, come per un aumento dei salari o del costo delle materie prime. Tali costi aggiuntivi vengono spesso trasferiti sui consumatori tramite un aumento dei prezzi.<br><b>3. Inflazione strutturale: </b> È causata da inefficienze strutturali nell\'economia, come problemi nella distribuzione o nella produzione che portano a una scarsità di beni. Questo tipo di inflazione può essere influenzato da politiche economiche inadeguate o da settori economici poco competitivi.<br><b>- 4. Inflazione importata: </b> Avviene quando i prezzi delle importazioni aumentano, magari a causa dell’apprezzamento di una valuta straniera rispetto alla moneta nazionale o di una crisi internazionale che limita l\'offerta di beni esteri essenziali. Questo è particolarmente rilevante per i Paesi che dipendono dalle importazioni di beni come il petrolio o le materie prime.<br>','IMG/INFLAZIONE/inflazione.webp'),(2,6,'Negativa o positiva per il mercato?','L\'inflazione può avere sia effetti positivi che negativi sull\'economia, a seconda della sua intensità e delle condizioni economiche generali.<br><br><b> Effetti positivi dell\'inflazione se oderata e controllata: </b><br> Un tasso d\'inflazione basso e stabile può stimolare la crescita economica, incoraggiando consumatori e aziende a spendere e investire piuttosto che accumulare denaro. Ciò promuove la circolazione della ricchezza e può portare alla creazione di posti di lavoro.<br><br><b> Effetti negativi dell\'inflazione se elevata e fuori controllo: </b> <br> Un\'inflazione troppo alta (iperinflazione) può destabilizzare l\'economia, erodendo rapidamente il potere d\'acquisto e creando incertezza, che disincentiva il risparmio e gli investimenti. Ciò può portare a situazioni di crisi economica e a un deterioramento del benessere generale.<br><br><b>Conclusione</b><br>L\'inflazione è quindi un fenomeno complesso, che può avere effetti sia benefici che dannosi sul mercato, a seconda del contesto e del livello a cui si manifesta. Un\'inflazione moderata è spesso segno di un’economia in salute, ma è essenziale che i governi e le banche centrali la tengano sotto controllo per evitare che danneggi la stabilità economica a lungo termine.<br>','IMG/INFLAZIONE/effetti.jpeg'),(1,7,'La scuola come un impresa?','Secondo il codice civile un’impresa è un’attività economica organizzata volta alla produzione o scambio di beni o servizi. Nonostante ciò è molto acceso il dibattito riguardo all’appartenenza della scuola pubblica al settore delle imprese o meno. Per capire quale sia la risposta dobbiamo però esaminare ogni punto della definizione e cercare di capire se la scuola la rispetti o meno.<br><br>Analizziamo punto per punto la definizione di impresa:<br>-Attività economica: La scuola svolge un\'attività che ha un impatto economico, anche se non è il suo obiettivo primario. Ci sono costi legati a stipendi, materiali, edifici, ecc., e spesso anche ricavi da contributi statali o regionali. Tuttavia, il fine ultimo della scuola non è il profitto, ma la formazione.<br><br>- Organizzata: Come hai giustamente sottolineato, la scuola è un\'organizzazione complessa con regole, strutture e ruoli ben definiti. La presenza di studenti, professori, personale amministrativo, un dirigente scolastico, ecc., dimostra un alto livello di organizzazione.<br><br>- Produzione o scambio di beni o servizi: Qui sorge il nodo cruciale. La scuola produce un servizio: l\'istruzione. Questo servizio è fondamentale per la società e ha un valore economico intrinseco, in quanto contribuisce alla crescita culturale e professionale degli individui.<br>','IMG/SCUOLA_IMPRESA/scuola.png'),(2,7,'Perchè questo dibattito?','Perché il dibattito è così acceso?<br>- Scopi diversi: L\'impresa ha come obiettivo primario il profitto, mentre la scuola ha finalità sociali e culturali. <br><br>- Finanziamento: Le imprese si autofinanziano attraverso la vendita dei loro prodotti o servizi, mentre la scuola dipende in gran parte da finanziamenti pubblici. <br><br>- Regolamentazione: Le imprese sono soggette a una regolamentazione diversa rispetto alle istituzioni pubbliche come le scuole. <br><br>- Autonomia: Le scuole hanno una certa autonomia, ma sono anche soggette a vincoli normativi e ministeriali. <br><br>La scuola presenta molti elementi che la avvicinano al concetto di impresa: è organizzata, svolge un\'attività che ha un impatto economico e produce un servizio. Tuttavia, la sua finalità sociale e il suo finanziamento pubblico la distinguono dalle imprese private. Possiamo quindi dire che la scuola nonostante tutto non si può considerare come un’impresa. Questa svolge un ruolo essenziale nella società. Però secondo i suoi scopi e i metodi di sostentamento è molto più lontana dal concetto di impresa rispetto a quanto sembri.<br>','IMG/SCUOLA_IMPRESA/dibattito.jpeg');
/*!40000 ALTER TABLE `Args` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cards`
--

DROP TABLE IF EXISTS `Cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cards` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Arg_Desc` text NOT NULL,
  `Link` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cards`
--

LOCK TABLES `Cards` WRITE;
/*!40000 ALTER TABLE `Cards` DISABLE KEYS */;
INSERT INTO `Cards` VALUES (1,'Impresa','Limpresa economica, cos\'è e quali obiettivi si pone. Elementi principali e come è strutturata.','HTML/impresa.html'),(2,'Progetto','Il progetto è il perno dell\'impresa. Sta alla base della buona riuscita dei nostri piani. Qui viene spiegato com\'è strutturato.','HTML/gestione_progetto.html'),(3,'Leader','La figura più importante dell\'impresa. Deve essere in grado di farsi seguire e deve guidare il proprio team alla buona riuscita del progetto.','HTML/leader.html'),(4,'Stellantis','Leader globale nel settore automobilistico, impegnato nella produzione di veicoli innovativi e sostenibili, con una forte attenzione all’ambiente e ai clienti.','HTML/stellantis.html'),(5,'Pil','pil','HTML/pil.html'),(6,'Inflazione','inflazione','HTML/inflazione.html'),(7,'Scuola Impresa?','scuola impresa','HTML/scuola_impresa.html'),(8,'Our Projects','Vieni a scoprire i migliori progetti (quelli che funzionano) del miglior terzetto di programmatori di sempre :&#41','HTML/our_projects.html');
/*!40000 ALTER TABLE `Cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Projects`
--

DROP TABLE IF EXISTS `Projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Projects` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Arg_Desc` text NOT NULL,
  `Link` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Projects`
--

LOCK TABLES `Projects` WRITE;
/*!40000 ALTER TABLE `Projects` DISABLE KEYS */;
INSERT INTO `Projects` VALUES (1,'TCP In RUST','Implementazione del protocollo di comunicazione TCP fatta in RUST, con l\'utilizzo del protocollo UDP','https://github.com/tridoz06/TCP-IN-RUST'),(2,'Indovina la Parola','Piccolo gioco client e server (multiclient) TCP di indovinare la parola fatto in C','https://github.com/tridoz/Indovina_la_parola_multiclient_TCP'),(3,'Chat Web C++','Chat Web implementata attraverso un server HTTP in C++ asincrono','https://github.com/tridoz/capolavoro_quinta'),(4,'Sito Gestione e Progetto','Sito sviluppato durante le ore di Gestione e Progetto (ancora Work in Progress)','https://github.com/tridoz06/SitoGestioneProgettoImpresa');
/*!40000 ALTER TABLE `Projects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-12 16:31:35
