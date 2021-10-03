package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_66:String = "i";
      
      public static const const_81:String = "s";
      
      public static const const_217:String = "e";
       
      
      private var var_1498:String;
      
      private var var_2599:int;
      
      private var var_1226:String;
      
      private var var_1497:int;
      
      private var var_1890:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1498 = param1.readString();
         this.var_2599 = param1.readInteger();
         this.var_1226 = param1.readString();
         this.var_1497 = param1.readInteger();
         this.var_1890 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1498;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2599;
      }
      
      public function get extraParam() : String
      {
         return this.var_1226;
      }
      
      public function get productCount() : int
      {
         return this.var_1497;
      }
      
      public function get expiration() : int
      {
         return this.var_1890;
      }
   }
}
