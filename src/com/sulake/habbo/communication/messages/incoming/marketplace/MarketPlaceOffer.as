package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1694:int;
      
      private var _furniId:int;
      
      private var var_2293:int;
      
      private var var_2160:String;
      
      private var var_1693:int;
      
      private var var_405:int;
      
      private var var_2296:int = -1;
      
      private var var_2294:int;
      
      private var var_1695:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1694 = param1;
         this._furniId = param2;
         this.var_2293 = param3;
         this.var_2160 = param4;
         this.var_1693 = param5;
         this.var_405 = param6;
         this.var_2296 = param7;
         this.var_2294 = param8;
         this.var_1695 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1694;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2293;
      }
      
      public function get stuffData() : String
      {
         return this.var_2160;
      }
      
      public function get price() : int
      {
         return this.var_1693;
      }
      
      public function get status() : int
      {
         return this.var_405;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2296;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2294;
      }
      
      public function get offerCount() : int
      {
         return this.var_1695;
      }
   }
}
