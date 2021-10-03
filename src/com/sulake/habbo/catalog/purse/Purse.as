package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1671:int = 0;
      
      private var var_1383:Dictionary;
      
      private var var_1661:int = 0;
      
      private var var_1662:int = 0;
      
      private var var_2246:Boolean = false;
      
      private var var_2245:int = 0;
      
      private var var_2247:int = 0;
      
      public function Purse()
      {
         this.var_1383 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1671;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1671 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1661;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1661 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1662;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1662 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1661 > 0 || this.var_1662 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2246;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2246 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2245;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2245 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2247;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2247 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1383;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1383 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1383[param1];
      }
   }
}
