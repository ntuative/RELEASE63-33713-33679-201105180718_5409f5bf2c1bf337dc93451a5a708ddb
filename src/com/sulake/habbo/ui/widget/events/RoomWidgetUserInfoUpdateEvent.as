package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_117:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_138:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_890:int = 2;
      
      public static const const_754:int = 3;
      
      public static const const_1704:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_2010:String = "";
      
      private var var_2358:int;
      
      private var var_2359:int = 0;
      
      private var var_2357:int = 0;
      
      private var var_587:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_260:Array;
      
      private var var_1386:int = 0;
      
      private var var_2530:String = "";
      
      private var var_2521:int = 0;
      
      private var var_2526:int = 0;
      
      private var var_2076:Boolean = false;
      
      private var var_1879:String = "";
      
      private var var_2520:Boolean = false;
      
      private var var_2523:Boolean = true;
      
      private var var_1222:int = 0;
      
      private var var_2519:Boolean = false;
      
      private var var_2529:Boolean = false;
      
      private var var_2524:Boolean = false;
      
      private var var_2522:Boolean = false;
      
      private var var_2527:Boolean = false;
      
      private var var_2528:Boolean = false;
      
      private var var_2525:int = 0;
      
      private var var_2075:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_260 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_2010 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_2010;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2358 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2358;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2359 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2359;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2357 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2357;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_587 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_587;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_260 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_260;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1386 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1386;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2530 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2530;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2520 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2520;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1222 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1222;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2519 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2519;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2529 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2529;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2524 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2524;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2522 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2522;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2527 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2527;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2528 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2528;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2525 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2525;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2523 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2523;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_2075 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_2075;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2521 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2521;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2526 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2526;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_2076 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_2076;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1879 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1879;
      }
   }
}
