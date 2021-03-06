rendering
renderGetCategoriesActionCloseOn: html

	html div 
		style: 'position:absolute;top:15px;right:60px;';
		with: [ 
			html anchor 	
				class: 'get-categories-close hoverable';
				style: 'text-decoration:none;cursor:pointer;';
				onClick: ( ( html jQuery ajax )
					script: [ :s | 
						s << ( JSStream on: '$(''#get-categories-modal'').modal(''close'')'  ).
						s << ( ( s jQuery class: 'get-categories-modal-content' ) remove ).						
					]
				);	
				with: [ 
					html italic 
						class: 'fa fa-window-close-o';
						style: 'color:#ef9a9a;font-size:4.5rem;'.
				]. 
		].