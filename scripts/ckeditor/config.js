﻿/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

//CKEDITOR.editorConfig = function( config )
//{
//	// Define changes to default configuration here. For example:
//	// config.language = 'fr';
//	// config.uiColor = '#AADC6E';
//};
CKEDITOR.editorConfig = function(config) {
    config.toolbar = 'myToolBar';
//    config.toolbar_myToolBar =
//                [
//                    ['Source', '-', 'Save', 'NewPage', 'Preview', '-', 'Templates'],
//                    ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Print', 'SpellChecker', 'Scayt'],
//                    ['Undo', 'Redo', '-', 'Find', 'Replace', '-', 'SelectAll', 'RemoveFormat'],
//                    '/',
//                    ['Bold', 'Italic', 'Underline', 'Strike', '-', 'Subscript', 'Superscript'],
//                    ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', 'Blockquote', 'CreateDiv'],
//                    ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
//                    ['Link', 'Unlink', 'Anchor'],
//                    ['Image', 'Table', 'HorizontalRule', 'SpecialChar', 'PageBreak'],
//                    '/',
//                    ['Styles', 'Format', 'Font', 'FontSize'],
//                    ['TextColor', 'BGColor'],
//                    ['Maximize', 'ShowBlocks']
    //                  ];


        config.toolbar_myToolBar =
                [
                    ['Subscript', 'Superscript'],
                ];

};