rendering
renderGetCategoriesFormOn: html

	html div 
		class: 'login-form';
		with: [									
			html div 
				with: [ 
					html div 
						class: 'col s12 messageComponent';
						style: 'margin-top:10px;';
						with: [ 
							html render: self messageComponent.
						].	
	 		 		html form
						class: 'form form-horizontal';
						with: [ 
							html div 
								class: 'col s12';
								with: [ self renderGetCategoriesShopSelectOn: html ].	
							html div 
								class: 'col s12';
								with: [ self renderGetCategoryButtonsOn: html ].
						].
				].
		].