define([
       "jquery" , "underscore" , "backbone"
       , "collections/snippets" , "collections/my-form-snippets"
       , "views/tab" , "views/my-form"
       , "text!data/input.json", "text!data/radio.json", "text!data/select.json", "text!data/buttons.json"
       , "text!templates/app/render.html",  "text!templates/app/about.html", "text!templates/app/formstructure.html"
], function(
  $, _, Backbone
  , SnippetsCollection, MyFormSnippetsCollection
  , TabView, MyFormView
  , inputJSON, radioJSON, selectJSON, buttonsJSON
  , renderTab, aboutTab,formStruTab
){
  return {
    initialize: function(){

      //Bootstrap tabs from json.
      new TabView({
        title: "Input"
        , chineseTitle: "输入框"
        , collection: new SnippetsCollection(JSON.parse(inputJSON))
      });
      new TabView({
        title: "Radios / Checkboxes"
        , chineseTitle: "单选（多选）"
        , collection: new SnippetsCollection(JSON.parse(radioJSON))
      });
      new TabView({
        title: "Select"
        , chineseTitle: "下拉框"
        , collection: new SnippetsCollection(JSON.parse(selectJSON))
      });
      new TabView({
        title: "Buttons"
        , chineseTitle: "按钮"
        , collection: new SnippetsCollection(JSON.parse(buttonsJSON))
      });
      new TabView({
        title: "Rendered"
        , chineseTitle: "代码预览"
        , content: renderTab
      });
      new TabView({
    	 title: "formStru"
    	, chineseTitle: "表单结构"
    	, content: formStruTab
      });
//      new TabView({
//        title: "About"
//        , chineseTitle: "关于"
//        , content: aboutTab
//      });

      //Make the first tab active!
      $("#components .tab-pane").first().addClass("active");
      $("#formtabs li").first().addClass("active");
      // Bootstrap "My Form" with 'Form Name' snippet.
      new MyFormView({
        title: "Original"
        , collection: new MyFormSnippetsCollection([
          { "title" : "Form Name"
            , "fields": {
              "name" : {
                "label"   : "表单名称"
                , "type"  : "input"
                , "value" : "未命名表单"
              }
          	  , "helptext" : {
          		"label": "帮助文本",
                "type": "input",
                "value": "help"
          	  }
            }
          }
        ])
      });
    }
  }
});
