/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
		//config.uiColor = 'rgb(29, 113, 179)';
	//config.skin="v2";

config.toolbar_Full =
[
    { name: 'document',    items : [ 'Source','-','Save','NewPage','DocProps','Preview','Print','-','Templates' ] },
    { name: 'clipboard',   items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
    { name: 'editing',     items : [ 'Find','Replace','-','SelectAll','-','SpellChecker', 'Scayt' ] },
    { name: 'forms',       items : [ 'Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField' ] },
    '/',
    { name: 'basicstyles', items : [ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-','RemoveFormat' ] },
    { name: 'paragraph',   items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','CreateDiv','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','-','BidiLtr','BidiRtl' ] },
    { name: 'links',       items : [ 'Link','Unlink','Anchor' ] },
    { name: 'insert',      items : [ 'Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak' ] },
    '/',
    { name: 'styles',      items : [ 'Styles','Format','Font','FontSize' ] },
    { name: 'colors',      items : [ 'TextColor','BGColor' ] },
    { name: 'CKAwesome', items: ['Image', 'ckawesome']},
    { name: 'tools',       items : [ 'Maximize', 'ShowBlocks','-','About' ] }
];
    config.extraPlugins = 'ckawesome';
    config.fontawesomePath = "http://"+window.location.host+"/css/font-awesome.min.css";
	/*config.removeButtons = 'Underline,Subscript,Superscript,Flash,Find,Replace,-,SelectAll,Save,SpellChecker, Scayt,NewPage,DocProps,Print,Templates,HorizontalRule,Smiley,SpecialChar,PageBreak,ShowBlocks,CreateDiv,BidiLtr,BidiRtl,Blockquote,Indent,Outdent,BulletedList,NumberedList,RemoveFormat,Superscript,Subscript,HiddenField,ImageButton,Button,Select,Textarea,TextField,Radio,Checkbox,Form,Scayt,Table,Anchor,PageBreak,/';
*/

	// Set the most common block elements.
	

	// Simplify the dialog windows.




	   config.filebrowserBrowseUrl = "http://"+window.location.host+"/ckfinder/ckfinder.html";

config.filebrowserImageBrowseUrl = "http://"+window.location.host+"/ckfinder/ckfinder.html?type=Images";
config.filebrowserFlashBrowseUrl = "http://"+window.location.host+"/ckfinder/ckfinder.html?type=Flash";
config.filebrowserUploadUrl = "http://"+window.location.host+"/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files";
config.filebrowserImageUploadUrl = "http://"+window.location.host+"/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images";
config.filebrowserFlashUploadUrl = "http://"+window.location.host+"/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash";
};

