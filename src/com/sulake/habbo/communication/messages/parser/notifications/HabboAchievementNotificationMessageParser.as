package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1173:int;
      
      private var var_1718:int;
      
      private var var_2585:int;
      
      private var var_1994:int;
      
      private var var_1550:int;
      
      private var var_2583:String = "";
      
      private var var_2582:String = "";
      
      private var var_2584:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1173 = param1.readInteger();
         this.var_2583 = param1.readString();
         this.var_1718 = param1.readInteger();
         this.var_2585 = param1.readInteger();
         this.var_1994 = param1.readInteger();
         this.var_1550 = param1.readInteger();
         this.var_2584 = param1.readInteger();
         this.var_2582 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1173;
      }
      
      public function get points() : int
      {
         return this.var_1718;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2585;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1994;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1550;
      }
      
      public function get badgeID() : String
      {
         return this.var_2583;
      }
      
      public function get achievementID() : int
      {
         return this.var_2584;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2582;
      }
   }
}
