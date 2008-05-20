package com.intuit.developer.QBTarget.model
{
   import com.adobe.cairngorm.model.IModelLocator;
   import com.quickbase.idn.model.QuickBaseMSAModel;
   
   import mx.collections.ArrayCollection;
   
   //note that all model classes should be declared bindable to ensure that all 
   //public properties can be used for data binding in the view.
   [Bindable]
   public class QBTargetModel implements IModelLocator  //set correct model name
   {
         //The QuickBaseMSAModel, included by composition
         public var quickbaseModel:QuickBaseMSAModel = QuickBaseMSAModel.getInstance();
         
         
         //TODO: Define variables, setters, getters, etc. for your model here
         public var gameList:ArrayCollection = new ArrayCollection();
         
         //Singleton pattern implementation
         private static var _instance:QBTargetModel;
         public static function getInstance():QBTargetModel
         {
               if (_instance == null) {
                     _instance = new QBTargetModel(new Private());
               }
               return _instance;
         }
         public function QBTargetModel(accessPrivate:Private) {}
   }
}

class Private {}
