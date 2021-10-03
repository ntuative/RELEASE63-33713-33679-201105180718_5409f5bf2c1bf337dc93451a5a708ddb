package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1694:int;
      
      private var var_1757:String;
      
      private var var_1155:int;
      
      private var var_1157:int;
      
      private var var_1758:int;
      
      private var var_1294:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1694 = param1.readInteger();
         this.var_1757 = param1.readString();
         this.var_1155 = param1.readInteger();
         this.var_1157 = param1.readInteger();
         this.var_1758 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1294 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1294.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get offerId() : int
      {
         return this.var_1694;
      }
      
      public function get localizationId() : String
      {
         return this.var_1757;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1155;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1157;
      }
      
      public function get products() : Array
      {
         return this.var_1294;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1758;
      }
   }
}
