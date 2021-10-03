package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_29:String = "AssetLoaderEventComplete";
      
      public static const const_1171:String = "AssetLoaderEventProgress";
      
      public static const const_1117:String = "AssetLoaderEventUnload";
      
      public static const const_1215:String = "AssetLoaderEventStatus";
      
      public static const const_49:String = "AssetLoaderEventError";
      
      public static const const_1266:String = "AssetLoaderEventOpen";
       
      
      private var var_405:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_405 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_405;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_405);
      }
      
      override public function toString() : String
      {
         return formatToString("AssetLoaderEvent","type","status");
      }
   }
}
