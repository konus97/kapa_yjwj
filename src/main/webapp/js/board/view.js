ClassicEditor
	.create( document.querySelector( '#content' ), {
		removePlugins: ['Title'],
		licenseKey: '',
	} )
	.then( editor => {
		window.editor = editor;
		editor.isReadOnly = true;
	} )
	.catch( error => {
		console.error( 'Oops, something went wrong!' );
		console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
		console.warn( 'Build id: efxy8wt6qchd-qhxgzg9ulnyo' );
		console.error( error );
} );
