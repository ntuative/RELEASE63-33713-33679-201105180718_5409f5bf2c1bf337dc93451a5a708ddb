package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2294:int;
      
      private var var_2820:int;
      
      private var var_2821:int;
      
      private var _dayOffsets:Array;
      
      private var var_2028:Array;
      
      private var var_2027:Array;
      
      private var var_2823:int;
      
      private var var_2822:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2294;
      }
      
      public function get offerCount() : int
      {
         return this.var_2820;
      }
      
      public function get historyLength() : int
      {
         return this.var_2821;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2028;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2027;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2823;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2822;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2294 = param1.readInteger();
         this.var_2820 = param1.readInteger();
         this.var_2821 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2028 = [];
         this.var_2027 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2028.push(param1.readInteger());
            this.var_2027.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2822 = param1.readInteger();
         this.var_2823 = param1.readInteger();
         return true;
      }
   }
}
