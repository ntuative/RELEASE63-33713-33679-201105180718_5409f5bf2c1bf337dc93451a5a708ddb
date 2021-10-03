package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2107:int = 1;
      
      public static const const_1737:int = 2;
       
      
      private var var_1075:String;
      
      private var var_2614:int;
      
      private var var_2610:int;
      
      private var var_2609:int;
      
      private var var_2607:int;
      
      private var var_2611:Boolean;
      
      private var var_2246:Boolean;
      
      private var var_2245:int;
      
      private var var_2247:int;
      
      private var var_2613:Boolean;
      
      private var var_2608:int;
      
      private var var_2612:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1075 = param1.readString();
         this.var_2614 = param1.readInteger();
         this.var_2610 = param1.readInteger();
         this.var_2609 = param1.readInteger();
         this.var_2607 = param1.readInteger();
         this.var_2611 = param1.readBoolean();
         this.var_2246 = param1.readBoolean();
         this.var_2245 = param1.readInteger();
         this.var_2247 = param1.readInteger();
         this.var_2613 = param1.readBoolean();
         this.var_2608 = param1.readInteger();
         this.var_2612 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1075;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2614;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2610;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2609;
      }
      
      public function get responseType() : int
      {
         return this.var_2607;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2611;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2246;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2245;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2247;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2613;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2608;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2612;
      }
   }
}
