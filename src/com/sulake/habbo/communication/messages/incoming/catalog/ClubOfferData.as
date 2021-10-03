package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1694:int;
      
      private var var_1766:String;
      
      private var var_1693:int;
      
      private var _upgrade:Boolean;
      
      private var var_2164:Boolean;
      
      private var var_2167:int;
      
      private var var_2169:int;
      
      private var var_2168:int;
      
      private var var_2165:int;
      
      private var var_2166:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1694 = param1.readInteger();
         this.var_1766 = param1.readString();
         this.var_1693 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2164 = param1.readBoolean();
         this.var_2167 = param1.readInteger();
         this.var_2169 = param1.readInteger();
         this.var_2168 = param1.readInteger();
         this.var_2165 = param1.readInteger();
         this.var_2166 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1694;
      }
      
      public function get productCode() : String
      {
         return this.var_1766;
      }
      
      public function get price() : int
      {
         return this.var_1693;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2164;
      }
      
      public function get periods() : int
      {
         return this.var_2167;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2169;
      }
      
      public function get year() : int
      {
         return this.var_2168;
      }
      
      public function get month() : int
      {
         return this.var_2165;
      }
      
      public function get day() : int
      {
         return this.var_2166;
      }
   }
}
