as yet unclassified
renderCategoriesFormOn: html

	html div
		class: 'modal-content credentials-modal-content';
		with: [ 
			html div 
				with: [
					self renderCategoriesActionCloseOn: html.
					html heading 
						level: 3; 
						style: 'margin-left:40px;';
						with: 'Add / Edit Shop Categories'.
				].
			html div 
				class: 'row shop-entry-block';
				with: [
					html div 
						class: 'col s12';
						style: 'border-bottom:1px solid lightgray;'.	
					html div 
						class: 'row';
						with: [ 
							html div 
								class: 'col s12';
								with: [ 
									html div 
										class: 'login-form';
										with: [									
											html div 
												with: [ 
													html div 
														class: 'col s12 messageComponent';
														style: 'margin-top:10px;';
														with: [ 
															self messageComponent infoMessage: 'Please enter category details - then Save (or Cancel).'.
															html render: self messageComponent.
														].	
	 		 										html form
														class: 'form form-horizontal';
														with: [ 
															html div 
																class: 'col s12';
																with: [ self renderAddChannelSelectOn: html ].	
															html div 
																class: 'col s12';
																with: [ self renderChannelCategorySelectOn: html ].
															html div 
																class: 'col s12';
																with: [ self renderCategoryButtonsOn: html ].
														].
												].
										].
								].
						].
				].
		].