page 50010 "O365 Sales Activities DAXZ1"
{
  // version NAVW111.00
  CaptionML = Comment='Use same translation as ''Profile Description'' (if applicable)', ENU='Sales Activities', ENC='Sales Activities', DES='Verkaufsaktivitäten', ITS='Attività di vendita', FRS='Activités de vente';
  PageType = RoleCenter;

  layout
  {
    area(rolecenter)
    {
      part(NewNew;9039)
      {
        ApplicationArea = Basic, Suite, Invoicing;
      }
      part(Invoices;2103)
      {
        ApplicationArea = Basic, Suite, Invoicing;
        CaptionML = ENU='Invoices', ENC='Invoices', DES='Rechnungen', ITS='Fatture', FRS='Factures';
      }
      part(CustomersNew;2101)
      {
        ApplicationArea = Basic, Suite, Invoicing;
        CaptionML = ENU='Customers', ENC='Customers', DES='Debitoren', ITS='Clienti', FRS='Clients';
      }
      part(Prices;2104)
      {
        ApplicationArea = Basic, Suite, Invoicing;
        CaptionML = ENU='Prices', ENC='Prices', DES='Preise', ITS='Prezzi', FRS='Prix';
        SubPageView = WHERE(Blocked=CONST(false));
      }
    }
  }
  actions
  {
    area(embedding)
    {
      ToolTipML = ENU='Manage sales processes. See KPIs and your favorite items and customers.', ENC='Manage sales processes. See KPIs and your favorite items and customers.', DES='Verwaltet Verkaufsprozesse. Zeigt KPIs und bevorzugte Artikel und Debitoren an.', ITS='Gestire processi di vendita. Esaminare KPI e articoli e clienti preferiti.', FRS='Gérez les processus de vente. Examinez les KPI et vos articles et clients favoris.';

      action(SalesOrders)
      {
        ApplicationArea = Basic, Suite;
        CaptionML = ENU='Sales Orders', ENC='Sales Orders', DES='Verkaufsaufträge', ITS='Ordini vendita', FRS='Commandes vente';
        Image = "Order";
        RunObject = Page 9305;
        ToolTipML = ENU='Record your agreements with customers to sell certain products on certain delivery and payment terms. Sales orders, unlike sales invoices, allow you to ship partially, deliver directly from your vendor to your customer, initiate warehouse handling, and print various customer-facing documents. Sales invoicing is integrated in the sales order process.', DES='Dokumentieren Sie Ihre Vereinbarungen mit Debitoren, um bestimmte Produkte zu bestimmten Liefer- und Zahlungsbedingungen zu verkaufen. Verkaufsaufträge ermöglichen Ihnen im Gegensatz zu Verkaufsrechnungen Teillieferungen, Direktlieferungen von Ihrem Kreditor an Ihren Debitor, das Starten des Lagerdurchlaufs und das Drucken verschiedener kundenrelevanter Belege. Die Fakturierung ist in den Verkaufsauftragsprozess integriert.', ITS='Registra i contratti con i clienti per vendere determinati prodotti sulla base di condizioni di pagamento e di consegna specifici. Gli ordini di vendita, a differenza delle fatture di vendita, consentono di eseguire spedizioni parziali, di consegnare direttamente dal fornitore al cliente, di avviare la gestione warehouse e di stampare documenti diversi rivolti al cliente. La fatturazione vendite è integrata nell''elaborazione degli ordini di vendita.', FRS='Enregistrez vos accords avec les clients pour vendre certains produits sous certaines conditions de livraison et de paiement. ‡ la différence des factures vente, les commandes vente vous permettent de réaliser des expéditions partielles, de livrer directement de votre fournisseur à votre client, de démarrer la gestion entrepôt et d''imprimer différents documents destinés aux clients. La facturation vente est intégrée dans le processus de commande vente.';
      }
      action("Sales Quotes")
      {
        ApplicationArea = Basic, Suite;
        CaptionML = ENU='Sales Quotes', ENC='Sales Quotes', DES='Verkaufsofferten', ITS='Offerte vendita', FRS='Devis';
        Image = Quote;
        RunObject = Page 9300;
        ToolTipML = ENU='Make offers to customers to sell certain products on certain delivery and payment terms. While you negotiate with a customer, you can change and resend the sales quote as much as needed. When the customer accepts the offer, you convert the sales quote to a sales invoice or a sales order in which you process the sale.', ENC='Make offers to customers to sell certain products on certain delivery and payment terms. While you negotiate with a customer, you can change and resend the sales quote as much as needed. When the customer accepts the offer, you convert the sales quote to a sales invoice or a sales order in which you process the sale.', DES='Debitoren Offerten machen, bestimmte Produkte zu bestimmten Liefer- und Zahlungsbedingungen zu verkaufen. Während der Verhandlung mit einem Debitor können Sie die Verkaufsofferte je nach Bedarf ändern und neu senden. Wenn der Debitor die Offerte akzeptiert, wandeln Sie die Verkaufsofferte in eine Verkaufsrechnung oder einen Verkaufsauftrag um, in der/dem Sie den Verkauf abwickeln.', ITS='Crea offerte ai clienti per vendere determinati prodotti sulla base di condizioni di pagamento e di consegna specifiche. Durante la trattativa con un cliente, è possibile modificare e inviare nuovamente l''offerta di vendita a seconda delle esigenze. Quando il cliente l''accetta, convertire l''offerta in una fattura oppure in un ordine di vendita in cui elaborare la vendita stessa.', FRS='Établissez des offres aux clients pour vendre certains produits sous certaines conditions de livraison et de paiement. Lors de la négociation avec un client, vous pouvez modifier le devis autant que nécessaire et ensuite le renvoyer. Lorsque le client accepte l''offre, vous convertissez le devis en facture vente ou en commande vente dans laquelle vous traitez la vente.';
      }
      action("Sales Invoices")
      {
        ApplicationArea = Basic, Suite;
        CaptionML = ENU='Sales Invoices', ENC='Sales Invoices', DES='Verkaufsrechnungen', ITS='Fatture vendite', FRS='Factures vente';
        Image = Invoice;
        RunObject = Page 9301;
        ToolTipML = ENU='Register your sales to customers and invite them to pay according to the delivery and payment terms by sending them a sales invoice document. Posting a sales invoice registers shipment and records an open receivable entry on the customer''s account, which will be closed when payment is received. To manage the shipment process, use sales orders, in which sales invoicing is integrated.', ENC='Register your sales to customers and invite them to pay according to the delivery and payment terms by sending them a sales invoice document. Posting a sales invoice registers shipment and records an open receivable entry on the customer''s account, which will be closed when payment is received. To manage the shipment process, use sales orders, in which sales invoicing is integrated.', DES='Ihre Verkäufe bei Debitoren registrieren und sie gemäss den Liefer- und Zahlungsbedingungen durch Senden eines Verkaufsrechnungsbelegs zur Zahlung auffordern. Beim Buchen einer Verkaufsrechnung wird die Lieferung registriert und ein offener Posten im Debitorenkonto erfasst, der bei Zahlungseingang geschlossen wird. Zur Verwaltung des Lieferprozesses verwenden Sie Verkaufsaufträge mit integrierten Verkaufsrechnungen.', ITS='Registra le vendite ai clienti e li invita a effettuare il pagamento in base alle condizioni di pagamento e di consegna tramite l''invio di una fattura di vendita. La registrazione di una fattura di vendita determina la registrazione della spedizione e di un movimento di contabilità clienti aperto nel conto del cliente. Il movimento verrà chiuso alla ricezione del pagamento. Per gestire il processo di spedizione, utilizzare ordini di vendita, in cui è integrata la fatturazione vendite.', FRS='Enregistrez vos ventes aux clients et invitez-les à payer selon les conditions de livraison et de paiement en leur envoyant un document facture vente. La validation d''une facture vente consigne l''expédition et enregistre une écriture client ouverte sur le compte du client, laquelle va être clôturée lorsque le paiement sera reçu. Pour gérer le processus d''expédition, utilisez les commandes vente, dans lesquelles la facturation vente est intégrée.';
      }
      action("Sales Credit Memos")
      {
        ApplicationArea = Basic, Suite;
        CaptionML = ENU='Sales Credit Memos', ENC='Sales Credit Memos', DES='Verkaufsgutschriften', ITS='Note credito vendita', FRS='Avoirs vente';
        RunObject = Page 9302;
        ToolTipML = ENU='Revert the financial transactions involved when your customers want to cancel a purchase or return incorrect or damaged items that you sent to them and received payment for. To include the correct information, you can create the sales credit memo from the related posted sales invoice or you can create a new sales credit memo with copied invoice information. If you need more control of the sales return process, such as warehouse documents for the physical handling, use sales return orders, in which sales credit memos are integrated. Note: If an erroneous sale has not been paid yet, you can simply cancel the posted sales invoice to automatically revert the financial transaction.', ENC='Revert the financial transactions involved when your customers want to cancel a purchase or return incorrect or damaged items that you sent to them and received payment for. To include the correct information, you can create the sales credit memo from the related posted sales invoice or you can create a new sales credit memo with copied invoice information. If you need more control of the sales return process, such as warehouse documents for the physical handling, use sales return orders, in which sales credit memos are integrated. Note: If an erroneous sale has not been paid yet, you can simply cancel the posted sales invoice to automatically revert the financial transaction.', DES='Die betroffenen Finanztransaktionen zurücksetzen, wenn Ihre Debitoren einen Einkauf oder eine Reklamation bzw. beschädigte Artikel stornieren möchten, die Sie an sie gesendet haben und eine Zahlung dafür erhalten haben. Um die richtigen Informationen einzubeziehen, können Sie die Verkaufsgutschrift aus der dazugehörenden gebuchten Verkaufsrechnung oder eine neue Verkaufsgutschrift mit kopierten Rechnungsinformationen erstellen. Falls Sie mehr Kontrolle über den Verkaufsreklamationsprozess benötigen, wie etwa Logistikbelege für die physische Abwicklung, verwenden Sie Verkaufsreklamationen mit integrierten Verkaufsgutschriften. Hinweis: Falls ein fehlerhafter Verkauf noch nicht bezahlt wurde, können Sie die gebuchte Einkaufsrechnung einfach stornieren, um die Finanztransaktion automatisch zurückzusetzen.', ITS='Annulla le transazioni finanziarie interessate quando i clienti desiderano annullare un acquisto o restituire articoli non corretti o danneggiati inviati loro e per cui il pagamento è già stato ricevuto. Per includere le informazioni corrette, è possibile creare la nota di credito vendita dalla fattura di vendita registrata correlata oppure creare una nuova nota di credito vendita con informazioni relative alla fattura copiate. Se è necessario maggiore controllo sul processo di reso vendite, ad esempio per utilizzare documenti warehouse per la gestione fisica, utilizzare ordini di reso vendite in cui sono integrate note di credito vendite. Nota: se una vendita erronea non è ancora stata pagata, è possibile annullare la fattura di vendita registrata per annullare automaticamente la transazione finanziaria.', FRS='Annulez les transactions financières impliquées lorsque vos clients souhaitent annuler un achat ou renvoyez des articles incorrects ou endommagés que vous leur avez envoyés et pour lesquels vous avez reçu un paiement. Pour inclure les informations correctes, vous pouvez créer l''avoir vente à partir de la facture vente validée associée, ou vous pouvez créer un nouvel avoir vente avec les informations de facturation copiées. Si vous avez besoin d''un contrôle accru sur le processus de retour vente, comme des documents entrepôt pour la gestion physique, utilisez des retours vente dans lesquels des avoirs vente sont intégrés. Remarque : si une vente erronée n''a pas encore été payée, vous pouvez annuler simplement la facture vente validée pour annuler automatiquement la transaction financière.';
      }
      action(Items)
      {
        ApplicationArea = Basic, Suite;
        CaptionML = ENU='Items', ENC='Items', DES='Artikel', ITS='Articoli', FRS='Articles';
        Image = Item;
        RunObject = Page 31;
        ToolTipML = ENU='View or edit detailed information for the products that you trade in. The item card can be of type Inventory or Service to specify if the item is a physical unit or a labor time unit. Here you also define if items in inventory or on incoming orders are automatically reserved for outbound documents and whether order tracking links are created between demand and supply to reflect planning actions.', ENC='View or edit detailed information for the products that you trade in. The item card can be of type Inventory or Service to specify if the item is a physical unit or a labor time unit. Here you also define if items in inventory or on incoming orders are automatically reserved for outbound documents and whether order tracking links are created between demand and supply to reflect planning actions.', DES='Detaillierte Informationen zu den Produkten, mit denen Sie handeln, anzeigen oder bearbeiten. Die Artikelkarte kann den Typ "Lagerbestand" oder "Dienst" aufweisen und damit angeben, ob es sich beim Artikel um eine physische Einheit oder eine Arbeitszeiteinheit handelt. Hier definieren Sie auch, ob Artikel im Lager oder in eingehenden Bestellungen automatisch für ausgehende Belege reserviert und ob Bedarfsverursacherverknüpfungen zwischen Nachfrage und Angebot zur Darstellung von Planungsaktionen erstellt werden sollen.', ITS='Visualizzare o modificare le informazioni dettagliate per i prodotti commercializzati. La scheda articolo può essere di tipo Inventario o Servizio per specificare che l''articolo è un''unità fisica o un''unità di lavoro. Si definisce anche se gli articoli nell''inventario o negli ordini in entrata sono automaticamente riservati per i documenti in uscita e se i collegamenti di tracciabilità ordine vengono creati tra la domanda e l''offerta per riflettere le azioni di pianificazione.', FRS='Affichez ou modifiez des informations détaillées sur les produits que vous commercialisez. La fiche article peut être de type Stock ou Service pour indiquer si l''article est une unité physique ou une unité de temps de travail. Vous définissez également si les articles en stock ou sur les commandes entrantes sont automatiquement réservés pour les documents sortants et si des liens de chaînage sont créés entre la demande et l''approvisionnement pour refléter les actions de planification.';
      }
      action(Customers)
      {
        ApplicationArea = Basic, Suite;
        CaptionML = ENU='Customers', ENC='Customers', DES='Debitoren', ITS='Clienti', FRS='Clients';
        Image = Customer;
        RunObject = Page 22;
        ToolTipML = ENU='View or edit detailed information for the customers that you trade with. From each customer card, you can open related information, such as sales statistics and ongoing orders, and you can define special prices and line discounts that you grant if certain conditions are met.', ENC='View or edit detailed information for the customers that you trade with. From each customer card, you can open related information, such as sales statistics and ongoing orders, and you can define special prices and line discounts that you grant if certain conditions are met.', DES='Detaillierte Informationen für die Debitoren, mit denen Sie handeln, anzeigen oder bearbeiten. Sie können auf jeder Debitorenkarte dazugehörende Informationen öffnen, wie etwa Verkaufsstatistik und laufende Bestellungen, sowie Sonderpreise und Zeilenrabatte definieren, die Sie gewähren, wenn bestimmte Bedingungen erfüllt werden.', ITS='Visualizza o modifica informazioni dettagliate per i clienti con cui si intrattengono rapporti commerciali. In ogni scheda cliente è possibile visualizzare le informazioni correlate, ad esempio statistiche sulle vendite e ordini in corso ed è possibile definire prezzi speciali e sconti riga concessi se sono soddisfatte determinate condizioni.', FRS='Affichez ou modifiez des informations détaillées pour les clients avec qui vous collaborez. Dans chaque fiche client, vous pouvez ouvrir les informations associées, par exemple les statistiques vente et les commandes en cours, et vous pouvez définir les prix spéciaux et les remises ligne que vous accordez si certaines conditions sont satisfaites.';
      }
    }
    area(sections)
    {
      group("Posted Documents")
      {
        CaptionML = ENU='Posted Documents', ENC='Posted Documents', DES='Gebuchte Belege', ITS='Documenti registrati', FRS='Documents validés';
        Image = FiledPosted;
        ToolTipML = ENU='View history for sales, shipments, and inventory.', ENC='View history for sales, shipments, and inventory.', DES='Zeigt die Historie für Verkäufe, Lieferungen und Lager an.', ITS='Visualizzare lo storico per vendite, spedizioni e magazzino.', FRS='Affichez l''historique des ventes, des expéditions et du stock.';

        action("Posted Sales Shipments")
        {
          ApplicationArea = Basic, Suite;
          CaptionML = ENU='Posted Sales Shipments', DES='Geb. Verkaufslieferungen', ITS='Spedizioni vendite reg.', FRS='Expéditions vente enregistrées';
          Image = PostedShipment;
          RunObject = Page 142;
          ToolTipML = ENU='Open the list of posted sales shipments.', ENC='Open the list of posted sales shipments.', DES='Öffnet die Liste der gebuchten Verkaufslieferungen.', ITS='Aprire l''elenco di spedizioni di vendita registrate.', FRS='Ouvrir la liste des expéditions vente validées.';
          Visible = false;
        }
        action("Posted Sales Invoices")
        {
          ApplicationArea = Basic, Suite;
          CaptionML = ENU='Posted Sales Invoices', ENC='Posted Sales Invoices', DES='Geb. Verkaufsrechnungen', ITS='Fatture vendita registrate', FRS='Factures vente enregistrées';
          Image = PostedOrder;
          RunObject = Page 143;
          ToolTipML = ENU='Open the list of posted sales invoices.', ENC='Open the list of posted sales invoices.', DES='Öffnet die Liste der gebuchten Verkaufsrechnungen.', ITS='Aprire l''elenco di fatture di vendita registrate.', FRS='Ouvrir la liste des factures vente validées.';
        }
        action("Posted Return Receipts")
        {
          ApplicationArea = Advanced;
          CaptionML = ENU='Posted Return Receipts', ENC='Posted Return Receipts', DES='Gebuchte Rücksendungen', ITS='Carichi da reso reg.', FRS='Réceptions retour enregistrées';
          Image = PostedReturnReceipt;
          RunObject = Page 6662;
          ToolTipML = ENU='Open the list of posted return receipts.', ENC='Open the list of posted return receipts.', DES='Öffnet die Liste der gebuchten Rücksendungen.', ITS='Aprire l''elenco di carichi da reso registrati.', FRS='Ouvrir la liste des réceptions retour validées.';
        }
        action("Posted Sales Credit Memos")
        {
          ApplicationArea = Basic, Suite;
          CaptionML = ENU='Posted Sales Credit Memos', ENC='Posted Sales Credit Memos', DES='Geb. Verkaufsgutschriften', ITS='Note credito vend. reg.', FRS='Avoirs vente enregistrés';
          Image = PostedOrder;
          RunObject = Page 144;
          ToolTipML = ENU='Open the list of posted sales credit memos.', ENC='Open the list of posted sales credit memos.', DES='Öffnet die Liste gebuchter Verkaufsgutschriften.', ITS='Aprire l''elenco di note di credito di vendita registrate.', FRS='Ouvrir la liste des avoirs vente validés.';
        }
        action("Posted Sales Return Orders")
        {
          ApplicationArea = SalesReturnOrder;
          CaptionML = ENU='Posted Sales Return Orders', ENC='Posted Sales Return Orders', DES='Gebuchte Verkaufsreklamationen', ITS='Ordini di reso vendita registrati', FRS='Retours vente enregistrés';
          Image = PostedOrder;
          RunObject = Page 6662;
          ToolTipML = ENU='Open the list of posted sales return orders.', ENC='Open the list of posted sales return orders.', DES='Öffnet eine Liste gebuchter Verkaufsreklamationen.', ITS='Aprire l''elenco di ordini di reso vendita registrati.', FRS='Ouvrir la liste des retours vente enregistrés.';
        }
        action("Posted Purchase Receipts")
        {
          ApplicationArea = Advanced;
          CaptionML = ENU='Posted Purchase Receipts', ENC='Posted Purchase Receipts', DES='Geb. Einkaufslieferungen', ITS='Ricezioni acquisti reg.', FRS='Réceptions achat enregistrées';
          RunObject = Page 145;
          ToolTipML = ENU='Open the list of posted purchase receipts.', DES='Öffnet die Liste der gebuchten Einkaufslieferungen.', ITS='Aprire l''elenco di carichi di acquisto registrati.', FRS='Ouvrir la liste des réceptions achat validées.';
        }
        action("Posted Purchase Invoices")
        {
          ApplicationArea = Basic, Suite;
          CaptionML = ENU='Posted Purchase Invoices', ENC='Posted Purchase Invoices', DES='Geb. Einkaufsrechnungen', ITS='Fatture acquisto reg.', FRS='Factures achat enregistrées';
          RunObject = Page 146;
          ToolTipML = ENU='Open the list of posted purchase invoices.', ENC='Open the list of posted purchase invoices.', DES='Öffnet die Liste der gebuchten Einkaufsrechnungen.', ITS='Aprire l''elenco di fatture di acquisto registrate.', FRS='Ouvrir la liste des factures achat validées.';
        }
        action("Posted Transfer Shipments")
        {
          ApplicationArea = Location;
          CaptionML = ENU='Posted Transfer Shipments', DES='Geb. Umlag.-Ausgänge', ITS='Spedizioni trasf. reg.', FRS='Expéditions transfert enreg.';
          RunObject = Page 5752;
          ToolTipML = ENU='Open the list of posted transfer shipments.', DES='Öffnet die Liste gebuchter Umlagerungsausgänge.', ITS='Aprire l''elenco di spedizioni per trasferimento registrate.', FRS='Ouvrir la liste des expéditions transfert validées.';
        }
        action("Posted Transfer Receipts")
        {
          ApplicationArea = Location;
          CaptionML = ENU='Posted Transfer Receipts', DES='Geb. Umlag.-Eingänge', ITS='Carichi trasf. reg.', FRS='Réceptions transfert enreg.';
          RunObject = Page 5753;
          ToolTipML = ENU='Open the list of posted transfer receipts.', DES='Öffnet die Liste der gebuchten Umlagerungseingänge.', ITS='Aprire l''elenco di carichi per trasferimento registrati.', FRS='Ouvrir la liste des réceptions transfert validées.';
        }
      }
      group("Self-Service")
      {
        CaptionML = ENU='Self-Service', DES='Self-Service', ITS='Self-service', FRS='Libre-service';
        Image = HumanResources;
        ToolTipML = ENU='Manage your time sheets and assignments.', DES='Verwalten Sie Ihre Arbeitszeitnachweise und Zuweisungen.', ITS='Gestire i fogli presenze e le assegnazioni.', FRS='Gérez vos feuilles de temps et affectations.';
        Visible = false;

        action("Time Sheets")
        {
          ApplicationArea = Suite;
          CaptionML = ENU='Time Sheets', DES='Arbeitszeitnachweise', ITS='Fogli presenze', FRS='Feuilles de temps';
          Gesture = None;
          RunObject = Page 951;
          ToolTipML = ENU='Enable resources to register time. When approved, if approval is required, time sheet entries can be posted to the relevant job journal or resource journal as part of project progress reporting. To save setup time and to ensure data correctness, you can copy job planning lines into time sheets.', DES='Ressourcen das Registrieren der Zeit ermöglichen. Falls eine Genehmigung erforderlich ist, können Arbeitszeitnachweisposten bei Genehmigung im entsprechenden Projekt Buch.-Blatt oder Ressourcen Buch.-Blatt als Teil der Berichterstellung zum Projektfortschritt gebucht werden. Um Einrichtungszeit zu sparen und die Korrektheit der Daten zu gewährleisten, können Sie Projektplanzeilen in Arbeitszeitnachweise kopieren.', ITS='Consente alle risorse di registrare il tempo. Dopo l''approvazione, se necessaria, i movimenti del foglio presenze possono essere inseriti nelle registrazioni commesse o risorse pertinenti nell''ambito della creazione di report sullo stato del progetto. Per risparmiare tempo di setup e garantire la correttezza dei dati, è possibile copiare righe di pianificazione commessa in fogli presenze.', FRS='Activez les ressources pour enregistrer le temps. Une fois approuvées, si une approbation est requise, les écritures feuille de temps peuvent être validées sur la feuille projet ou la feuille ressource correspondante dans le cadre de la génération des états d''avancement du projet. Pour enregistrer le temps de préparation et garantir l''exactitude des données, vous pouvez copier des lignes planning projet dans des feuilles de temps.';
        }
        action("Page Time Sheet List Open")
        {
          ApplicationArea = Suite;
          CaptionML = ENU='Open', DES='Öffnen', ITS='Aperto', FRS='Ouvrir';
          RunObject = Page 951;
          RunPageView = WHERE("Open Exists"=CONST(true));
          ToolTipML = ENU='Open the card for the selected record.', DES='Öffnet die Karte für den ausgewählten Datensatz.', ITS='Aprire la scheda per il record selezionato.', FRS='Ouvrir la fiche pour l''enregistrement sélectionné.';
        }
        action("Page Time Sheet List Submitted")
        {
          ApplicationArea = Suite;
          CaptionML = ENU='Submitted', DES='Übermittelt', ITS='Inviato', FRS='Soumis';
          RunObject = Page 951;
          RunPageView = WHERE("Submitted Exists"=CONST(true));
          ToolTipML = ENU='View submitted time sheets.', DES='Zeigt übermittelte Arbeitszeitnachweise an.', ITS='Visualizza i fogli presenze inviati.', FRS='Affichez les feuilles de temps soumises.';
        }
        action("Page Time Sheet List Rejected")
        {
          ApplicationArea = Suite;
          CaptionML = ENU='Rejected', DES='Abgelehnt', ITS='Rifiutato', FRS='Rejeté';
          RunObject = Page 951;
          RunPageView = WHERE("Rejected Exists"=CONST(true));
          ToolTipML = ENU='View rejected time sheets.', DES='Zeigt abgelehnte Arbeitszeitnachweise an.', ITS='Visualizza i fogli presenze rifiutati.', FRS='Affichez les feuilles de temps rejetées.';
        }
        action("Page Time Sheet List Approved")
        {
          ApplicationArea = Suite;
          CaptionML = ENU='Approved', DES='Genehmigt', ITS='Approvato', FRS='Approuvé';
          RunObject = Page 951;
          RunPageView = WHERE("Approved Exists"=CONST(true));
          ToolTipML = ENU='View approved time sheets.', DES='Zeigt genehmigte Arbeitszeitnachweise an.', ITS='Visualizza i fogli presenze approvati.', FRS='Affichez les feuilles de temps approuvées.';
        }
      }
    }
    area(creation)
    {
      action("Sales &Quote")
      {
        ApplicationArea = Basic, Suite;
        CaptionML = ENU='Sales &Quote', DES='&Verkaufsofferte', ITS='&Offerta vendita', FRS='&Devis';
        Image = NewSalesQuote;
        Promoted = false;
        //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
        //PromotedCategory = Process;
        RunObject = Page 41;
        RunPageMode = Create;
        ToolTipML = ENU='Offer items or services to a customer.', DES='Bietet einem Debitor Artikel oder Dienste an.', ITS='Offrire articoli o servizi a un cliente.', FRS='Proposez des articles ou des services à un client.';
      }
      action("Sales &Invoice")
      {
        ApplicationArea = Basic, Suite;
        CaptionML = ENU='Sales &Invoice', DES='Verkauf&srechnung', ITS='Fatt&ura vendita', FRS='Fac&ture vente';
        Image = NewSalesInvoice;
        Promoted = false;
        //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
        //PromotedCategory = Process;
        RunObject = Page 43;
        RunPageMode = Create;
        ToolTipML = ENU='Create a new invoice for the sales of items or services. Invoice quantities cannot be posted partially.', DES='Erstellt eine neue Rechnung für Verkäufe von Artikeln oder Diensten. Rechnungsmengen können nicht teilweise gebucht werden.', ITS='Creare una nuova fattura la vendita di articoli o servizi. Le quantità in fattura non possono essere registrate parzialmente.', FRS='Créer une facture pour la vente des articles ou des services. Il est impossible de valider partiellement les quantités facturées.';
      }
      action("Sales &Order")
      {
        ApplicationArea = Basic, Suite;
        CaptionML = ENU='Sales &Order', DES='Verkaufsau&ftrag', ITS='&Ordine vendita', FRS='&Commande vente';
        Image = Document;
        Promoted = false;
        //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
        //PromotedCategory = Process;
        RunObject = Page 42;
        RunPageMode = Create;
        ToolTipML = ENU='Create a new sales order for items or services.', DES='Erstellt einen neuen Auftrag für Artikel oder Dienstleistungen.', ITS='Creare un nuovo ordine di vendita per articoli o servizi.', FRS='Créer une commande vente pour les articles ou les services.';
      }
      action("Sales &Return Order")
      {
        ApplicationArea = Advanced;
        CaptionML = ENU='Sales &Return Order', DES='Verkaufsrekla&mation', ITS='Ordine di &reso vendita', FRS='&Retour vente';
        Image = ReturnOrder;
        Promoted = false;
        //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
        //PromotedCategory = Process;
        RunObject = Page 6630;
        RunPageMode = Create;
        ToolTipML = ENU='Compensate your customers for incorrect or damaged items that you sent to them and received payment for. Sales return orders enable you to receive items from multiple sales documents with one sales return, automatically create related sales credit memos or other return-related documents, such as a replacement sales order, and support warehouse documents for the item handling. Note: If an erroneous sale has not been paid yet, you can simply cancel the posted sales invoice to automatically revert the financial transaction.', DES='Debitoren für fehlerhafte oder beschädigte Artikel entschädigen, die Sie an sie gesendet haben und für die Sie eine Zahlung erhalten haben. Verkaufsreklamationen ermöglichen den Empfang von Artikeln aus mehreren Verkaufsbelegen mit einer Verkaufsreklamation, das automatische Erstellen dazugehörender Verkaufsgutschriften oder anderer reklamationsbezogener Belege, wie etwa eines Wiederbeschaffungsauftrags, sowie das Unterstützen von Logistikbelegen für den Artikeldurchlauf. Hinweis: Falls ein fehlerhafter Verkauf noch nicht bezahlt wurde, können Sie die gebuchte Verkaufsrechnung einfach stornieren, um die Finanztransaktion automatisch zurückzusetzen.', ITS='Compensa i clienti per articoli non corretti o danneggiati per cui è già stato ricevuto il pagamento. Gli ordini di reso vendite consentono di ricevere articoli da più documenti di vendita con un unico reso, di creare automaticamente note di credito vendita o altri documenti di reso correlati, ad esempio un ordine di vendita di sostituzione, e documenti warehouse di supporto per la gestione degli articoli. Nota: se il pagamento per una vendita erronea non è ancora stato effettuato, è possibile annullare la fattura di vendita registrata per annullare la transazione finanziaria.', FRS='Indemnisez vos clients pour les articles incorrects ou endommagés que vous leur avez envoyés et pour lesquels vous avez reçu le paiement. Les retours vente vous permettent de recevoir des articles issus de plusieurs documents vente avec un retour vente, de créer automatiquement les avoirs vente associés ou d''autres documents liés au retour, comme une commande vente de remplacement, et de prendre en charge les documents entrepôt pour la gestion des articles. Remarque : si une vente erronée n''a pas encore été payée, vous pouvez annuler simplement la facture vente validée pour annuler automatiquement la transaction financière.';
      }
      action("Sales &Credit Memo")
      {
        ApplicationArea = Basic, Suite;
        CaptionML = ENU='Sales &Credit Memo', DES='Verkaufs&gutschrift', ITS='No&ta credito vendita', FRS='&Avoir vente';
        Image = CreditMemo;
        Promoted = false;
        //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
        //PromotedCategory = Process;
        RunObject = Page 44;
        RunPageMode = Create;
        ToolTipML = ENU='Create a new sales credit memo to revert a posted sales invoice.', DES='Erstellt eine neue Verkaufsgutschrift, um eine gebuchte Verkaufsrechnung zurückzusetzen.', ITS='Creare una nuova nota di credito di vendita per annullare una fattura di vendita registrata.', FRS='Créez un avoir vente pour annuler une facture vente validée.';
      }
    }
    area(processing)
    {
      group(Tasks)
      {
        CaptionML = ENU='Tasks', DES='Aufgaben', ITS='Task', FRS='Tâches';

        action("Sales &Journal")
        {
          ApplicationArea = Basic, Suite;
          CaptionML = ENU='Sales &Journal', DES='Ver&kaufs Erf.-Journal', ITS='R&egistrazioni vendite', FRS='Feuille ven&te';
          Image = Journals;
          RunObject = Page 253;
          ToolTipML = ENU='Open a sales journal where you can batch post sales transactions to G/L, bank, customer, vendor and fixed assets accounts.', DES='Öffnet ein Verkauf Erf.-Journal, in dem Sie die Verkaufstransaktionen stapelweise in Finanzbuchhaltungs-, Bank-, Debitoren-, Kreditoren- und Anlagenkonten buchen können.', ITS='Aprire una registrazione vendite in cui è possibile registrare in batch le transazioni di vendita in conti C/G, bancari, cliente, fornitore e cespite.', FRS='Ouvrez une feuille vente où vous pouvez valider par groupe les transactions vente vers les comptes généraux, bancaires, client, fournisseur et immobilisations.';
        }
        action("Sales Price &Worksheet")
        {
          ApplicationArea = Advanced;
          CaptionML = ENU='Sales Price &Worksheet', DES='VK-Preis&vorschlag', ITS='&Prospetto prezzi vendita', FRS='Feuille pri&x vente';
          Image = PriceWorksheet;
          RunObject = Page 7023;
          ToolTipML = ENU='Manage sales prices for individual customers, for a group of customers, for all customers, or for a campaign.', DES='Verwaltung von Verkaufspreisen für individuelle Debitoren, für eine Gruppe von Debitoren, für alle Debitoren oder für eine Kampagne.', ITS='Gestisce i prezzi di vendita per clienti singoli, un gruppo di clienti, tutti i clienti o una campagna.', FRS='Gérer les prix vente pour des clients particuliers, un groupe de clients, tous les clients ou une campagne.';
        }
      }
      group(SalesNew)
      {
        CaptionML = ENU='Sales', DES='Verkauf', ITS='Vendite', FRS='Ventes';

        action("&Prices")
        {
          ApplicationArea = Basic, Suite;
          CaptionML = ENU='&Prices', DES='&Preise', ITS='Pre&zzi', FRS='Pri&x';
          Image = SalesPrices;
          RunObject = Page 7002;
          ToolTipML = ENU='Set up different prices for items that you sell to the customer. An item price is automatically granted on invoice lines when the specified criteria are met, such as customer, quantity, or ending date.', DES='Richten Sie verschiedene Preise für Artikel ein, die Sie an den Debitor verkaufen. Ein Artikelpreis wird automatisch in Rechnungszeilen gewährt, wenn die angegebenen Kriterien erfüllt sind, wie etwa Debitor, Menge oder Enddatum.', ITS='Impostare prezzi diversi per gli articoli che si vendono al cliente. Quando vengono soddisfatti i criteri specificati, ad esempio cliente, quantità o data di fine, viene automaticamente concesso un prezzo articolo nelle righe di fattura.', FRS='Paramétrez des prix différents pour les articles que vous vendez au client. Un prix article est automatiquement affecté sur les lignes facture lorsque les critères spécifiés sont satisfaits, par exemple le client, la quantité ou la date de fin.';
        }
        action("&Line Discounts")
        {
          ApplicationArea = Basic, Suite;
          CaptionML = ENU='&Line Discounts', DES='Zei&lenrabatte', ITS='&Sconti riga', FRS='&Remises ligne';
          Image = SalesLineDisc;
          RunObject = Page 7004;
          ToolTipML = ENU='Set up different discounts for items that you sell to the customer. An item discount is automatically granted on invoice lines when the specified criteria are met, such as customer, quantity, or ending date.', DES='Richtet verschiedene Rabatte für Artikel ein, die Sie an den Debitor verkaufen. Ein Artikelrabatt wird automatisch in Rechnungszeilen gewährt, wenn die angegebenen Kriterien erfüllt sind, wie Debitor, Menge oder Enddatum.', ITS='Impostare sconti diversi per gli articoli che si vendono al cliente. Quando vengono soddisfatti i criteri specificati, ad esempio cliente, quantità o data di fine, viene automaticamente concesso uno sconto articolo nelle righe di fattura.', FRS='Paramétrez des remises différentes pour les articles que vous vendez au client. Une remise article est automatiquement affectée sur les lignes facture lorsque les critères spécifiés sont satisfaits, par exemple le client, la quantité ou la date de fin.';
        }
      }
      group(Reports)
      {
        CaptionML = ENU='Reports', DES='Berichte', ITS='Report', FRS='États';

        group(Customer)
        {
          CaptionML = ENU='Customer', DES='Debitor', ITS='Cliente', FRS='Client';
          Image = Customer;

          action("Customer - &Order Summary")
          {
            ApplicationArea = Basic, Suite;
            CaptionML = ENU='Customer - &Order Summary', DES='Debitor - &Auftragsübersicht', ITS='Clienti - Riepil&ogo ordine', FRS='Clients : &Liste des commandes';
            Image = "Report";
            RunObject = Report 107;
            ToolTipML = ENU='View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.', DES='Zeigt die Auftragsdetails (die noch nicht gelieferte Menge) für jeden Debitor in drei Perioden von jeweils 30 Tagen, beginnend mit dem ausgewählten Datum. Es gibt auch Spalten mit Aufträgen, die vor und nach den drei Perioden geliefert werden sollen, und eine Spalte mit dem gesamten Auftragsbestand jedes Debitors. Dieser Bericht kann verwendet werden, um das erwartete Verkaufsvolumen eines Unternehmens zu analysieren.', ITS='Visualizzare la quantità non ancora spedita per ogni cliente in tre periodi di 30 giorni ciascuno, a partire da una data prescelta. Vi sono inoltre colonne di ordini da spedire prima e dopo i tre periodi e una colonna con il dettaglio ordine totale per ogni cliente. Il report può essere utilizzato per analizzare il volume di vendite previste di una società.', FRS='Affichez la quantité pas encore expédiée pour chaque client sur 3 périodes de 30 jours, chacune commençant à une date sélectionnée. Il contient également des colonnes avec les commandes à livrer avant et après les 3 périodes et une colonne avec le détail de la commande totale de chaque client. Cet état sert à analyser le volume de vente attendu d''une société.';
          }
          action("Customer - &Top 10 List")
          {
            ApplicationArea = Basic, Suite;
            CaptionML = ENU='Customer - &Top 10 List', DES='Debitor - &Top-10-Liste', ITS='Clien&ti - Lista primi 10', FRS='Clien&ts : Palmarès';
            Image = "Report";
            RunObject = Report 111;
            ToolTipML = ENU='View which customers purchase the most or owe the most in a selected period. Only customers that have either purchases during the period or a balance at the end of the period will be included.', DES='Zeigt an, welche Debitoren in einer ausgewählten Periode am meisten kaufen oder Ihnen am meisten schulden. Es werden nur jene Debitoren berücksichtigt, die während der ausgewählten Periode entweder Einkäufe getätigt haben oder am Ende der Periode einen Saldo aufweisen.', ITS='Visualizzare i clienti che hanno acquistato di più o che sono maggiormente debitori in un periodo selezionato. Verranno inclusi solo i clienti che hanno eseguito acquisti nel periodo o che hanno un saldo alla fine dello stesso.', FRS='Affichez les clients qui achètent le plus ou qui doivent le plus d''argent au cours d''une période sélectionnée. Seuls les clients qui ont des achats pour cette période ou un solde à la fin de la période seront inclus.';
          }
          action("Customer/&Item Sales")
          {
            ApplicationArea = Basic, Suite;
            CaptionML = ENU='Customer/&Item Sales', DES='Debitor/&Artikel Statistik', ITS='Vend&ite cliente/articolo', FRS='Client/&Ventes d''articles';
            Image = "Report";
            RunObject = Report 50001; //113
            ToolTipML = ENU='View a list of item sales for each customer during a selected time period. The report contains information on quantity, sales amount, profit, and possible discounts. It can be used, for example, to analyze a company''s customer groups.', DES='Zeigt eine Liste der Artikelverkäufe an jeden Kunden für einen ausgewählten Zeitraum. Der Bericht enthält Informationen über die Mengen, den Verkaufsbetrag, den Deckungsbeitrag und mögliche Rabatte. Er kann z. B. verwendet werden, um die Kundengruppen eines Unternehmens zu analysieren.', ITS='Visualizzare un elenco di articoli di vendita per ogni cliente in un determinato periodo. Il report contiene informazioni su quantità, importi vendite, profitti e possibili sconti Può essere usato ad esempio per effettuare un''analisi delle categorie clienti di una società.', FRS='Affichez une liste des ventes article de chaque client pendant la période choisie. L''état donne des informations sur la quantité, le montant des ventes, la marge et les remises possibles. Il peut servir, par exemple, à l''analyse des groupes clients d''une société.';
          }
        }
        group(Sales)
        {
          CaptionML = ENU='Sales', DES='Verkauf', ITS='Vendite', FRS='Ventes';
          Image = Sales;

          action("Salesperson - Sales &Statistics")
          {
            ApplicationArea = Suite;
            CaptionML = ENU='Salesperson - Sales &Statistics', DES='Verkäufer - Verkäufer&statistik', ITS='Agente - &Statistiche vendita', FRS='Vendeurs : &Statistiques ventes';
            Image = "Report";
            RunObject = Report 50001; //114;
            ToolTipML = ENU='View amounts for sales, profit, invoice discount, and payment discount, as well as profit percentage, for each salesperson for a selected period. The report also shows the adjusted profit and adjusted profit percentage, which reflect any changes to the original costs of the items in the sales.', DES='Zeigt für jeden Verkäufer Beträge über den Verkauf, Deckungsbeitrag, Rechnungsrabatt und Skonto sowie den Deckungsbeitrag in Prozent für eine ausgewählte Periode. Der Bericht zeigt auch DB reguliert sowie den Prozentwert für DB reguliert an, die alle Abweichungen der Urspr.-Einstandsbeträge der Artikel im Verkauf widerspiegeln.', ITS='Visualizzare gli importi di vendita, profitto, sconto in fattura e sconto pagamento, nonché la percentuale di profitto per ogni venditore in un determinato periodo. Nel report possono inoltre essere visualizzati il profitto rettificato e la percentuale di profitto rettificato, che riflettono le eventuali modifiche apportate ai costi originari degli articoli nella vendita.', FRS='Affichez les montants des ventes, de la marge, de la remise facture et de l''escompte, ainsi que le pourcentage marge sur vente, pour chaque vendeur et pour la période sélectionnée. L''état indique également le profit ajusté et le pourcentage marge ajustée, qui reflètent tous les changements des coûts d''origine des articles des ventes.';
          }
          action("Price &List")
          {
            ApplicationArea = Basic, Suite;
            CaptionML = ENU='Price &List', DES='V&K-Preisliste', ITS='&Listino prezzi', FRS='&Liste des prix';
            Image = "Report";
            RunObject = Report 50001; //715;
            ToolTipML = ENU='View a list of your items and their prices, for example, to send to customers. You can create the list for specific customers, campaigns, currencies, or other criteria.', DES='Zeigt eine Liste Ihrer Artikel und deren Preise an, um sie beispielsweise an Debitoren zu senden. Sie können die Liste für spezifische Debitoren, Kampagnen, Währungen oder andere Kriterien erstellen.', ITS='Visualizzare l''elenco degli articoli e dei relativi prezzi, ad esempio per inviarli ai clienti. ¯ possibile creare l''elenco per clienti, campagne, valute o altri criteri specifici.', FRS='Affichez une liste de vos articles ainsi que leur prix à envoyer, par exemple, aux clients. Vous pouvez créer la liste pour des clients, des campagnes ou des devises spécifiques ou encore pour d''autres critères.';
          }
          action("Inventory - Sales &Back Orders")
          {
            ApplicationArea = Basic, Suite;
            CaptionML = ENU='Inventory - Sales &Back Orders', DES='La&ger - Verkaufsrückstände', ITS='Maga&zzino - Ordini vendite arretrati', FRS='Stocks : Commandes &à livrer';
            Image = "Report";
            RunObject = Report 718;
            ToolTipML = ENU='View a list with the order lines whose shipment date has been exceeded. The following information is shown for the individual orders for each item: number, customer name, customer''s telephone number, shipment date, order quantity and quantity on back order. The report also shows whether there are other items for the customer on back order.', DES='Zeigt eine Liste mit den Auftragszeilen, deren Warenausgangsdatum bereits abgelaufen ist. Folgende Informationen werden für die jeweiligen Aufträge für jeden Artikel angezeigt: Nummer, Name des Debitors, Telefonnummer des Debitors, Warenausgangsdatum, Auftragsmenge und Restauftragsmenge. Der Bericht zeigt darüber hinaus an, ob auch andere Artikel für den Debitor im Rückstand sind.', ITS='Visualizzare un elenco con le righe di ordine la cui data di spedizione è ormai superata. Per ogni singolo ordine vengono visualizzate le seguenti informazioni relative a ciascun articolo: numero, nome del cliente, numero di telefono del cliente, data di spedizione, quantità dell''ordine e quantità nell''ordine in ritardo. Vengono inoltre indicati eventuali altri articoli per il cliente presenti nell''ordine in ritardo.', FRS='Affichez une liste qui comprend les lignes commande dont la date d''expédition est dépassée. Les informations suivantes sont données pour chaque article d''une commande : numéro, nom du client, numéro de téléphone du client, date d''expédition, quantité commandée et quantité sur commande en attente. L''état indique aussi s''il y a d''autres articles en commande en attente pour le client.';
          }
        }
      }
      group(History)
      {
        CaptionML = ENU='History', DES='Historie', ITS='Storico', FRS='Historique';

        action("Navi&gate")
        {
          ApplicationArea = Basic, Suite;
          CaptionML = ENU='Navi&gate', DES='Navi&gate', ITS='N&aviga', FRS='Navi&guer';
          Image = Navigate;
          RunObject = Page 344;
          ToolTipML = ENU='Find all entries and documents that exist for the document number and posting date on the selected entry or document.', DES='Sucht alle Posten und Belege, die für die Belegnummer und das Buchungsdatum auf dem ausgewählten Posten oder Beleg vorhanden sind.', ITS='Trovare tutti i movimenti e i documenti esistenti per il numero di documento e la data di registrazione sul movimento o il documento selezionato.', FRS='Recherchez toutes les écritures et tous les documents qui existent pour le numéro de document et la date comptabilisation sur l''écriture ou le document.';
        }
      }
    }
  }
}
