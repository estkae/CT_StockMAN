accessing
getTransactionData
	
	| myTransactions query |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelTransactionData'; dbSearchAllWithLimit: 5.
	
	myTransactions := CTStockMANModelTransaction new.
	myTransactions conn: WACurrentRequestContext value session dbConnection.
	myTransactions resultset: ( myTransactions processSearchQuery: ( query queryString ) ).
	
	^ myTransactions.