/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for psi_test
-- CREATE DATABASE IF NOT EXISTS `psi_test` /*!40100 DEFAULT CHARACTER SET utf8 */;
-- USE `psi_test`;

-- Dumping structure for table psi_test.authors
DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `webID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table psi_test.authors: ~7 rows (approximately)
DELETE FROM `authors`;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` (`id`, `name`, `webID`) VALUES
	(66, 'ΑΓΓΕΛΟΣ ΑΓΓΕΛΟΥ, ΕΜΗ ΣΙΝΗ', 685),
	(73, 'ΑΘΗΝΑ ΡΕΪΖΑΚΗ', 765),
	(208, 'ΓΙΩΤΑ Κ. ΑΛΕΞΑΝΔΡΟΥ', 864),
	(246, 'ΕΙΡΗΝΗ ΚΑΜΑΡΑΤΟΥ-ΓΙΑΛΛΟΥΣΗ', 264),
	(495, 'ΜΑΝΟΣ ΚΟΝΤΟΛΕΩΝ', 775),
	(732, 'ΡΑΝΙΑ ΜΠΟΥΜΠΟΥΡΗ', 210),
	(828, 'ΣΤΑΥΡΟΥΛΑ ΚΑΤΣΟΥ-ΚΑΝΤΑΝΗ', 676);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;

-- Dumping structure for table psi_test.books
DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `web_id` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `age_group` varchar(50) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `barcode` (`barcode`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table psi_test.books: ~18 rows (approximately)
DELETE FROM `books`;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`id`, `code`, `barcode`, `web_id`, `title`, `description`, `age_group`, `author_id`, `image`, `published`) VALUES
	(1, '11759', '9789604968718', '1001381', 'ΚΟΚΚΙΝΟ ΚΑΡΑΒΑΚΙ, ΚΟΚΚΙΝΟ ΠΟΔΗΛΑΤΟ', 'Παραμονές Χριστουγέννων και ο επτάχρονος Μάνος στολίζει μαζί με τους γονείς του το χριστουγεννιάτικο δέντρο. Η μητέρα του Μάνου είναι έγκυος και ο Μάνος φοβάται πως ο ερχομός μιας αδελφούλας θα κάνει τους γονείς του να πάψουν να τον αγαπούν. Μα όταν τη μέρα της μεγάλης γιορτής θα επισκεφθεί ένα καταυλισμό προσφύγων, τότε ένα χάρτινο καραβάκι και ένα κόκκινο ποδήλατο θα του μάθουνε πως όσο πιο μεγάλη αγάπη δώσει κάποιος, τόσο πιο πολλή αγάπη θα πάρει. ', '4,5', 495, 'http://hdcovers.psichogios.gr/GR/9789604968718.jpg', 1),
	(2, '11525', '9789604967681', '1001317', 'Ο ΚΟΠΕΡΝΙΚΟΣ ΚΑΙ Ο ΞΥΠΟΛΥΤΟΣ ΜΥΩΨ', '«Για πες μας, καλέ μου Ευτύχη, τι βλέπεις αυτή τη στιγμή μπροστά σου;» ρώτησε ο κύριος Κοπέρνικος και περίμενε την απάντησή του με μεγάλη περιέργεια. \nΟ ξυπόλυτος μπόμπιρας αιφνιδιάστηκε. Έπρεπε να σκαρφιστεί γρήγορα μιαν απάντηση! Τι να έλεγε όμως; Στην πραγματικότητα, μπροστά του έβλεπε μονάχα απροσδιόριστες σκιές και θολά περιγράμματα! \n«Βλέπω, βλέπω... ένα μεγάλο κοτέτσι, μια αρκούδα που χορεύει βάλς και μια γιαγιούλα που οδηγεί μια κόκκινη νταλίκα!», είπε τελικά εντελώς στη τύχη και ευχήθηκε να ‘χει πετύχει διάνα!', '5,6', 66, 'http://hdcovers.psichogios.gr/GR/9789604967681.jpg', 1),
	(3, '12275', '9786180101959', '1001664', 'ΑΠΟ ΔΕΥΤΕΡΑ ΩΣ ΚΥΡΙΑΚΗ', 'Στο πρώτο μας σχολείο περνάμε καλά,\nμαθαίνουμε πολλά, και τις μέρες που είναι επτά.\nΜια ιστορία με διασκεδαστικά στιχάκια και πανέμορφες ζωγραφιές, που βοηθά στην ομαλή μετάβαση του παιδιού στον παιδικό σταθμό, ενώ παράλληλα του μαθαίνει με ευχάριστο τρόπο τις ημέρες της εβδομάδας.', '1,2', 73, 'http://hdcovers.psichogios.gr/GR/9786180101959.jpg', 1),
	(4, '15851', '9786180108330', '1003170', 'ΓΛΥΚΙΑ ΜΟΥ ΠΙΠΙΛΑ', 'Ο Λευτέρης αγαπάει πολύ την πιπίλα του, πλησιάζει όμως η στιγμή να την αποχωριστεί για πάντα. Το ποτάμι θα την ταξιδέψει μακριά, στην όμορφη πιπιλο- λίμνη, όπου την περιμένουν οι αδελφές της. Αλλά ο Λευτέρης δε στενοχωριέται, γιατί τον περιμένει μια υπέροχη έκπληξη…', '1,2', 732, 'http://hdcovers.psichogios.gr/GR/9786180108330.jpg', 1),
	(5, '08783', '9789604960941', '1000314', 'Η ΠΡΑΣΙΝΟΣΚΟΥΦΙΤΣΑ ΑΝΑΔΑΣΩΝΕΙ', 'Δυο χρόνια μετά τη μεγάλη φωτιά η Πρασινοσκουφίτσα, παρέα με τους πιτσιρικάδες, αναδασώνει. Ποιος είναι ο δάσκαλος Φουκουόκα; Τι «μαγειρεύει» μέσα στο τεράστιο μίξερ του μαζί με την Πρ??σινοσκουφίτσα; Πώς θα χρησιμοποιήσουν τους αμέτρητους σβώλους που πλάθουν; Για ποια «Δρακόντεια» μέτρα κάνουν λόγο; Μια ακόμη ιστορ??α με την πανέξυπνη ??ρ??σινοσκουφίτσα, το έλατο της πλατείας, τους πιτσιρικάδες, την Άρκτο και τα παιδιά της, το δάσος! Ένα βιβλίο που ευαισθητοποιεί μικρούς και μεγάλους σχετικά με την αναδάσωση και την προστασία των δασών.', '5,6', 828, 'http://hdcovers.psichogios.gr/GR/9789604960941.jpg', 1),
	(6, '08209', '9789604537709', '1000184', 'ΣΤΟ ΝΗΣΙ ΜΕ ΤΑ ΚΡΥΜΜΕΝΑ ΜΥΣΤΙΚΑ', 'Δυο αγόρια, ο Μάνθος και ο Δημήτρης, γνωρίζονται το καλοκαίρι στο νησί. Ωστόσο, κάποιο μυστήριο κρύβεται πίσω από τη θεία που φιλοξενεί το δεύτερο αγόρι. Η αινιγματική συμπεριφορά της κάνει τη φαντασία των δυο αγοριών να καλπάζει, ενώ ταυτόχρονα τα οδηγεί σε περιπέτειες και αγωνία. Ποια είναι η πριγκίπισσα της θάλασσας; Τι κρύβουν τα αρχαία νομίσματα, τα ζύγια; Ποιο είναι το μυστικό της σπηλιάς; Ποιος είναι ο Αρχέλων και τι ρόλο παίζει; Ένα μυθιστόρημα γεμάτο μυστήριο, περιπέτεια και δράση. Ένας ύμνος στη φύση, την ομορφιά, τη φιλία, τη ζωή.', '7,8', 828, 'http://hdcovers.psichogios.gr/GR/9789604537709.jpg', 1),
	(7, '12671', '9786180102208', '1001813', 'Ο ΚΟΠΕΡΝΙΚΟΣ ΚΑΙ Ο ΜΙΚΡΟΣ ΑΜΠΑΚΟΣ', '«Αντί να φάτε ένα ολόκληρο κοτόπουλο, απολαύστε μια ξεροψημένη φτερούγα. Αντί να καταβροχθίσετε ένα αγριογούρουνο, γλείψτε λίγο τους χαυλιόδοντες και αντί να εξαφανίσετε μια τριώροφη τούρτα, πιπιλήστε απλώς το κερασάκι της οροφής!» πρότεινε ο Κοπέρνικος, φτάνοντας στο αποκορύφωμα του λόγου του.\nΗ μαμά Άμπακος, όμως, δεν ήταν σε θέση να τον ακούσει. Κρατώντας σφιχτά στο ένα της χέρι ένα πασχαλιάτικο τσουρέκι και στο άλλο μια λαδερή παστουρμαδόπιτα,  είχε «χυθεί» κυριολεκτικά στην πράσινη πολυθρόνα, ανήμπορη να αντιδράσει. Είχε υποστεί αναμφισβήτητα ένα ισχυρό σοκ. \nΈνα βιβλίο γεμάτο βραστές, ψητές και παστές νοστιμιές που θα θέλαμε, αλλά θα πρέπει να το σκεφτούμε καλά, πριν τις καταβροχθίσουμε!', '5,6', 66, 'http://hdcovers.psichogios.gr/GR/9786180102208.jpg', 1),
	(8, '09312', '9789604962853', '1000598', 'ΘΕΛΩ ΝΑ ΑΡΡΩΣΤΗΣΩ', 'Γεια σας ΣΤΟΠ Είμαι ο Αχιλλέας ΣΤΟΠ Θέλω να αρρωστήσω ΣΤΟΠ εθελοντικά ΣΤΟΠ Για να γλιτώσω σχολείο ΣΤΟΠ (διαγώνισμα στη γεωγραφία) ΣΤΟΠ Μην αργήσετε, παρακαλώ ΣΤΟΠ Θα περιμένω ΣΤΟΠ Φιλικά, Αχιλλέας ΣΤΟΠ \nΠέντε λεπτά αργότερα, ο κύριος Πυρετός, με το ειδικό βαλιτσάκι του στο χέρι, κλείδωνε τον πύργο του και καβαλούσε το ιπτάμενο θερμόμετρό του, με κατεύθυνση το σπίτι του μικρού Αχιλλέα...', '5,6', 66, 'http://hdcovers.psichogios.gr/GR/9789604962853.jpg', 1),
	(9, '13364', '9786180102901', '1002017', 'Ο ΑΛΕΚΟΣ ΣΤΗ ΧΩΡΑ ΤΩΝ ΠΑΘΗΜΑΤΩΝ', 'Την περασμένη εβδομάδα πέρασα απίθανα στο χωριό του παππού. Έπιανα πυγολαμπίδες, τους έβαζα φωτιά και τις έκανα πυρολαμπίδες. Ζουλούσα τις πασχαλίτσες για να φύγουν οι μαύρες βούλες. Τραβούσα τα πόδια στις ακρίδες να μακρύνουν, για να πηδούν πιο μακριά, και γίνονταν μακρίδες. Όλα αυτά βέβαια τα έκανα από «καθαρά επιστημονικό ενδιαφέρον», όπως λέει και ο μπαμπάς, που είναι αληθινός επιστήμονας, με πτυχίο και γραφείο. Σήμερα, όμως, το νέο μου πείραμα με τις πεταλούδες δεν πήγε όπως το υπολόγιζα… ', '4,5', 208, 'http://hdcovers.psichogios.gr/GR/9786180102901.jpg', 1),
	(10, '13528', '9786180104820', '1002038', 'ΘΕΛΩ ΝΑ ΓΙΝΩ ΜΑΓΟΣ', 'Είμαι η Μάνια και θέλω να γίνω μάγος. Σαν αυτόν στα γενέθλια της Έλλης. Και σαν τους μάγους των παραμυθιών. Να εμφανίζω κουνέλια και να εξαφανίζω τον μικρό μου αδερφό. Να βγάζω λουλούδια από το μανίκι μου για τη μαμά και να διώχνω τους εφιάλτες όταν κοιμάμαι. Να σβήνω όσα μας στενoχωρούν και να είναι όλοι χαρούμενοι. Γι’ αυτό, προχθές άρχισα τα μαγικά. Πήρα το πλατύ ψάθινο καπέλο της μαμάς και… \nΜια τρυφερή ιστορία, με την αθωότητα και το χιούμορ ενός μικρού παιδιού, που ενθουσιάζεται με τη μαγεία και θέλει τη χαρά για όλους γύρω του με τον δικό του μοναδικό τρόπο.', '4,5', 208, 'http://hdcovers.psichogios.gr/GR/9786180104820.jpg', 1),
	(11, '07637', '9789604536177', '22794', 'Η ΠΕΙΣΜΑΤΑΡΑ', 'Σήμερα είναι Κυριακή και έχουμε πάει σ\'\' ένα εστιατόριο. Όλοι τρώνε χαρούμενοι. Εγώ έχω μία μπουκιά στο στόμα μου, όμως δεν τη μασάω, δεν την καταπίνω αλλά και ούτε τη φτύνω. \n"Ροδούλα, τι πείσμα είναι πια αυτό;" λέει ο μπαμπάς. "Δεν ήρθαμε στο εστιατόριο για να φας γαριδάκια..." \nΕγώ δεν απαντώ. Πώς να μιλήσω έτσι μπουκωμένη που είμαι; \n', '4,5', 246, 'http://hdcovers.psichogios.gr/GR/9789604536177.jpg', 1),
	(12, '07628', '9789604536160', '22769', 'Ο ΠΟΝΗΡΟΥΛΗΣ', 'Το Σάββατο πήγαμε στα γενέθλια της Τασούλας. Πάνω σε ένα τραπεζάκι ήταν ένα μπολ με τα αγαπημένα μου μπισκότα. Για να μην τα δούνε και μου τα φάνε, τα σκέπασα με μια χαρτοπετσέτα. Έπαιζα με τα άλλα παιδιά και έκανα τον αδιάφορο. Κάθε τόσο πήγαινα κρυφά και έτρωγα ένα μπισκότο μέχρι που τα έφαγα όλα. Μετά πονούσε η κοιλιά μου και δεν μπορούσα να παίξω…', '4,5', 246, 'http://hdcovers.psichogios.gr/GR/9789604536160.jpg', 1),
	(13, '06171', '9789604534395', '22578', 'Ο ΑΤΑΚΤΟΥΛΗΣ', 'Η μαμά μου είναι πολύ καλή. Τόσο καλή που την κάνω ότι θέλω. Η μαμά με φωνάζει: "Αντώνη, Αντωνάκη! Τακτοποίησε, παιδί μου, τα παιχνίδια σου και έλα να φας. Σε λίγο πρέπει να πας για ύπνο". Τα παιχνίδια στο δωμάτιό μου είναι ένα βουνό. Βαριέμαι να τα τακτοποιήσω. Είναι όλα μπροστά στην πόρτα και δεν μπορώ να βγω έξω. Πετώ πάνω στο αστυνομικό αυτοκίνητο και αρχίζει να σφυρίζει η σειρήνα. Μετά γλιστρώ πάνω στο πάνινο σκυλάκι κι εκείνο αρχίζει να γαβγίζει...', '4,5', 246, 'http://hdcovers.psichogios.gr/GR/9789604534395.jpg', 1),
	(14, '06169', '9789604534401', '22576', 'Ο ΨΕΥΤΑΚΟΣ', 'Η μαμά φωνάζει από την κουζίνα: "Μανόλη, εσύ έσπασες το ποτήρι;" "Όχι!" της απαντώ εγώ. "Ποιος το έσπασε;" "Η Βούλα". \nΗ Βούλα έρχεται τρέχοντας  στο δωμάτιό μου. Φοράει μόνο μία παντόφλα. "Δεν το έσπασα εγώ, είσαι ένας ψεύτης!" μου λέει. Σε λίγο έρχεται και η μαμά. "Μαμά, ο Μανόλης είπε ψέματα ότι το έσπασα εγώ", παραπονιέται η Βούλα. Από την κουζίνα ακούγεται ένας κρότος. Τρέχουμε όλοι μαζί. Έσπασε ένα βάζο. Το έριξε ο δυνατός αέρας που φυσούσε από το ανοικτό παράθυρο...\n', '4,5', 246, 'http://hdcovers.psichogios.gr/GR/9789604534401.jpg', 1),
	(15, '05475', '9789604531882', '22325', 'Ο ΖΗΛΙΑΡΟΥΛΗΣ', 'Η αδελφή μου είναι δύο και μιλάει μωρουδίστικα. "Τι ωραία που μιλάει!" λέει ο μπαμπάς. Εγώ είμαι πέντε και μιλάω μωρουδίστικα όπως η αδελφή μου. "Γιατί δε μιλάς καθαρά;" με ρωτάει ο μπαμπάς. "Μην παριστάνεις το μωρό", λέει και η μαμά. \nΕγώ θυμώνω, πάω στο δωμάτιό μου και κρύβομαι μέσα στην ντουλάπα. "Αντώνη, Αντωνάκη," με ψάχνει η μαμά. Εγώ δε βγαίνω. Θέλω να με ψάχνει, όλο να με ψάχνει και να ανησυχεί όπως ανησυχεί και για την Αννούλα. \n\nΔιαβάστε και τα άλλα όμορφα βιβλία για μικρά παιδιά, που κυκλοφορούν από τις Εκδόσεις ΨΥΧΟΓΙΟΣ.\n', '4,5', 246, 'http://hdcovers.psichogios.gr/GR/9789604531882.jpg', 1),
	(16, '05474', '9789604531899', '22324', 'Ο ΤΕΜΠΕΛΑΚΟΣ', 'Ο αδελφός μου μοιάζει με μυρμήγκι. Όταν μοιάζεις με μυρμήγκι, όλοι σε θαυμάζουνε και σου λένε "μπράβο". Εμένα δε μου λέει κανένας "μπράβο" γιατί όλο μ\'\' αρέσει να είμαι ξαπλωμένος στο κρεβάτι μου ανάσκελα, να ακουμπάω τα πόδια μου στον τοίχο και να κοιτάζω τα δαχτυλάκια μου. \nΌταν το κάνεις αυτό, δε σε λένε μυρμήγκι, δηλαδή εργατικό, σε λένε κηφήνα, δηλαδή τεμπέλη.\n \n \nΔιαβάστε και τα άλλα όμορφα βιβλία για μικρά παιδιά, που κυκλοφορούν από τις Εκδόσεις ΨΥΧΟΓΙΟΣ.\n', '4,5', 246, 'http://hdcovers.psichogios.gr/GR/9789604531899.jpg', 1),
	(17, '02799', '9789602748954', '22067', 'Η ΝΤΡΟΠΑΛΟΥΛΑ', 'Η μαμά με ψάχνει. Με ψάχνει πίσω από την πολυθρόνα. Δεν είμαι. Πίσω από την πόρτα δεν είμαι. Κάτω από το κρεβάτι όμως είμαι. Με βρήκε! "Έλα, Βασούλα, έλα, μην ντρέπεσαι. Αν ήξερες ποιος ήρθε! "Εγώ όμως ήξερα ποιος ήρθε, γι\'\' αυτό κρύφτηκα. Ήρθε η θεία Αντωνία που όλο με κοιτάει και με ρωτάει... Κι εγώ ντρέπομαι και κοκκινίζω. Και ντρέπομαι που ντρέπομαι και ντρέπομαι που κοκκινίζω...', '4,5', 246, 'http://hdcovers.psichogios.gr/GR/9789602748954.jpg', 1),
	(18, '02798', '9789602748947', '22066', 'Η ΓΚΡΙΝΙΑΡΑ', 'Η γιαγιά μου μένει στο χωριό και έχει πέντε αδελφές. Την πέμπτη αδελφή της τη λένε Μαρουλία και είναι γκρινιάρα. Εγώ σ\'\' αυτή μοιάζω. Το είπε ο μπαμπάς. Το είπε κι η μαμά. Το άκουσε ο αδελφός μου και το λέει κι αυτός. Μου το λένε όλοι πως είμαι γκρινιάρα. Ο μπαμπάς και η μαμά δουλεύουν πολύ. Ο αδελφός μου διαβάζει πολύ. Κι εγώ κάθε μέρα γκρινιάζω πολύ... ', '4,5', 246, 'http://hdcovers.psichogios.gr/GR/9789602748947.jpg', 1);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

-- Dumping structure for table psi_test.book_category_ref
DROP TABLE IF EXISTS `book_category_ref`;
CREATE TABLE IF NOT EXISTS `book_category_ref` (
  `book_id` int(11) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`book_id`,`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table psi_test.book_category_ref: ~21 rows (approximately)
DELETE FROM `book_category_ref`;
/*!40000 ALTER TABLE `book_category_ref` DISABLE KEYS */;
INSERT INTO `book_category_ref` (`book_id`, `cat_id`) VALUES
	(1, 6),
	(2, 10),
	(2, 21),
	(3, 28),
	(4, 21),
	(4, 25),
	(5, 15),
	(6, 19),
	(7, 1),
	(8, 18),
	(9, 21),
	(10, 21),
	(11, 21),
	(12, 21),
	(13, 21),
	(14, 21),
	(15, 21),
	(16, 21),
	(17, 21),
	(18, 15),
	(18, 21);
/*!40000 ALTER TABLE `book_category_ref` ENABLE KEYS */;

-- Dumping structure for table psi_test.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table psi_test.categories: ~29 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `alias`, `description`, `published`) VALUES
	(1, ' Ανθρώπινες σχέσεις', 'anthrwpines-sxeseis', 'Βιβλία που βοηθούν τα παιδιά στην καθημερινή τους συμπεριφορά', 1),
	(2, ' Αξίες ζωής', 'aksies-zwhs', 'Βασικό βοήθημα για τους γονείς που θέλουν να μεγαλώσουν παιδιά ανεξάρτητα και ευτυχισμένα', 1),
	(3, ' Διατροφή – υγεία', 'diatrofi-ygeia', 'Βιβλία για την αξία της υγιεινής και σωστής διατροφής', 1),
	(4, ' Διαφορετικότητα', 'diaforetikotita', 'Τα παιδιά μέσα από τα βιβλία μαθαίνουν για τον ρατσισμό', 1),
	(5, ' Δικαιώματα του παιδιού', 'dikaiwmata-paidiou', 'Σπουδαίο υλικό για να μάθουν τα παιδιά τα δικαιώματά τους', 1),
	(6, ' Εκπαιδευτικά βιβλία', 'ekpaideytika-vivlia', 'Βιβλία με εκπαιδευτικές δραστηριότητες', 1),
	(7, ' Ελλάδα', 'ellada', 'Η ιστορία και τα ελληνικά έθιμα μέσα από τις σελίδες ενός βιβλίου', 1),
	(8, ' Επιστήμες – τεχνολογία', 'epistimes-texnologia', 'Βιβλία για τους μικρούς μας επιστήμονες!', 1),
	(9, ' Θάλασσα', 'thalassa', 'Βιβλία με θαλασσινούς ήρωες', 1),
	(10, ' Θάνατος- Απώλεια', 'thanatos-apwleia', 'Τρυφερές ιστορίες που βοηθούν τα μικρά παιδιά να συμφιλιωθούν με την έννοια της απώλειας και του κύκλου της ζωής.', 1),
	(11, ' Ιστορία', 'istoria', 'Ένα ταξίδι στο παρελθόν!', 1),
	(12, ' Κυκλοφοριακή αγωγή', 'kykloforiaki-agwgh', 'Μαθαίνω να συμπεριφέρομαι σωστά στον δρόμο', 1),
	(13, ' Μυστήριο', 'mystirio', 'Συναρπαστικές περιπέτειες που απκαλύπτουν ένα σωρό μυστικά και ψέματα!', 1),
	(14, ' Οικογένεια', 'oikogeneia', 'Βιβλία που βοηθούν τα παιδιά να αντιληφθούν τις σχέσεις μεταξύ μιας οικογένειας', 1),
	(15, ' Οικολογία', 'oikologia', 'Μαθαίνουμε για την ανακύκλωση και την προστασία του περιβάλλοντος', 1),
	(16, ' Παραμύθια – μύθοι', 'paramythia-mythoi', 'Αρκούν οι λέξεις «μια φορά κι έναν καιρό», και το ταξίδι ξεκινά…', 1),
	(17, ' Πάσχα', 'pasxa', 'Ιστορίες για το παραδοσιακό ελληνικό Πάσχα', 1),
	(18, ' Περιπέτεια', 'peripeteia', 'Περιπέτεια γεμάτη δράση και ανατροπές', 1),
	(19, ' Περιπέτεια φαντασίας', 'peripeteia-fantasias', 'Μέσα από μια ιστορία μυστηρίου, εξάπτεται η φαντασία των μικρών μας φίλων', 1),
	(20, ' Πολιτισμός', 'politismos', 'Βιβλία για την πολιτιστική μας κληρονομιά', 1),
	(21, ' Συμπεριφορές – συναισθήματα', 'symperifores-synaisthimata', 'Μαθαίνουμε να διαχειριζόμαστε τα συναισθήματά μας', 1),
	(22, ' Σχολική ζωή', 'sxoliki-zwh', 'Μικρές συμβουλές για εύκολη προσαρμογή στο σχολικό περιβάλλον', 1),
	(23, ' Τηλεόραση - πρότυπα', 'tileorasi-protypa', 'Βιβλία για τα πρότυπα που προβάλλονται στην τηλεόραση', 1),
	(24, ' Φιλία', 'filia', 'Βιβλία που αναδεικνύουν την έννοια της φιλίας', 1),
	(25, ' Φιλοζωία', 'filozwia', 'Βιβλία που μας μαθαίνουν να αγαπάμε τα ζώα', 1),
	(26, ' Φοβίες', 'fovies', 'Ένας έμμεσος τρόπος να μάθουμε να ξεπερνάμε τις φοβίες μας', 1),
	(27, ' Φυσικό περιβάλλον', 'fysiko-perivallon', 'Μαθαίνουμε να αγαπάμε το περιβάλλον και να προστατεύουμε τη φύση', 1),
	(28, ' Χιούμορ', 'xioumor', 'Παραμύθια με αστείες ιστορίες και διασκεδαστικούς χαρακτήρες', 1),
	(29, ' Χριστούγεννα', 'xristougenna', 'Χριστουγεννιάτικες παιδικές ιστορίες', 1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table psi_test.edu_grades
DROP TABLE IF EXISTS `edu_grades`;
CREATE TABLE IF NOT EXISTS `edu_grades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `age_group` varchar(50) DEFAULT NULL,
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table psi_test.edu_grades: ~11 rows (approximately)
DELETE FROM `edu_grades`;
/*!40000 ALTER TABLE `edu_grades` DISABLE KEYS */;
INSERT INTO `edu_grades` (`id`, `name`, `parent_id`, `age_group`, `published`) VALUES
	(1, 'Προσχολική ηλικία', NULL, '0-5', 1),
	(2, 'Νηπιαγωγείο', NULL, '5-6', 1),
	(3, 'Δημοτικό', NULL, '6-12', 1),
	(4, 'Α\' Δημοτικού', 3, '6-7', 1),
	(5, 'Β\' Δημοτικού', 3, '7-8', 1),
	(6, 'Γ\' Δημοτικού', 3, '8-9', 1),
	(7, 'Δ\' Δημοτικού', 3, '9-10', 1),
	(8, 'Ε\' Δημοτικού', 3, '10-11', 1),
	(9, 'ΣΤ\' Δημοτικού', 3, '11-12', 1),
	(10, 'Γυμνάσιο', NULL, '12-15', 1),
	(11, 'Λύκειο', NULL, '15-18', 1);
/*!40000 ALTER TABLE `edu_grades` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
