package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2598:int;
      
      private var var_1470:String;
      
      private var var_2684:int;
      
      private var var_2681:int;
      
      private var _category:int;
      
      private var var_2160:String;
      
      private var var_1403:int;
      
      private var var_2685:int;
      
      private var var_2682:int;
      
      private var var_2686:int;
      
      private var var_2687:int;
      
      private var var_2683:Boolean;
      
      private var var_2989:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2598 = param1;
         this.var_1470 = param2;
         this.var_2684 = param3;
         this.var_2681 = param4;
         this._category = param5;
         this.var_2160 = param6;
         this.var_1403 = param7;
         this.var_2685 = param8;
         this.var_2682 = param9;
         this.var_2686 = param10;
         this.var_2687 = param11;
         this.var_2683 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2598;
      }
      
      public function get itemType() : String
      {
         return this.var_1470;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2684;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2681;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2160;
      }
      
      public function get extra() : int
      {
         return this.var_1403;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2685;
      }
      
      public function get creationDay() : int
      {
         return this.var_2682;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2686;
      }
      
      public function get creationYear() : int
      {
         return this.var_2687;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2683;
      }
      
      public function get songID() : int
      {
         return this.var_1403;
      }
   }
}
