accessing
initialize

	
	super initialize.
	self fields: #( id productId category date time quantity customer channelId transactionType amount ).
	self tableName: 'transaction'.
	self primaryKey: 'id'.
	self rsPointer: 1.