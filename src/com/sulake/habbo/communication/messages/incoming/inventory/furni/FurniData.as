package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2506:int;
      
      private var var_1470:String;
      
      private var _objId:int;
      
      private var var_1765:int;
      
      private var _category:int;
      
      private var var_2160:String;
      
      private var var_2727:Boolean;
      
      private var var_2726:Boolean;
      
      private var var_2725:Boolean;
      
      private var var_2265:Boolean;
      
      private var var_2703:int;
      
      private var var_1403:int;
      
      private var var_1697:String = "";
      
      private var var_1894:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2506 = param1;
         this.var_1470 = param2;
         this._objId = param3;
         this.var_1765 = param4;
         this._category = param5;
         this.var_2160 = param6;
         this.var_2727 = param7;
         this.var_2726 = param8;
         this.var_2725 = param9;
         this.var_2265 = param10;
         this.var_2703 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1697 = param1;
         this.var_1403 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2506;
      }
      
      public function get itemType() : String
      {
         return this.var_1470;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1765;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2160;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2727;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2726;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2725;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2265;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2703;
      }
      
      public function get slotId() : String
      {
         return this.var_1697;
      }
      
      public function get songId() : int
      {
         return this.var_1894;
      }
      
      public function get extra() : int
      {
         return this.var_1403;
      }
   }
}
