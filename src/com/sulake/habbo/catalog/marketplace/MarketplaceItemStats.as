package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2294:int;
      
      private var var_2820:int;
      
      private var var_2821:int;
      
      private var _dayOffsets:Array;
      
      private var var_2028:Array;
      
      private var var_2027:Array;
      
      private var var_2823:int;
      
      private var var_2822:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2294 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2820 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2821 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_2028 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_2027 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2823 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2822 = param1;
      }
   }
}
