package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_691:int = 1;
      
      public static const const_689:int = 2;
      
      public static const const_705:int = 3;
      
      public static const const_1321:int = 4;
      
      public static const const_982:int = 5;
      
      public static const const_1139:int = 6;
       
      
      private var _type:int;
      
      private var var_1095:int;
      
      private var var_2290:String;
      
      private var var_2338:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1095 = param2;
         this.var_2290 = param3;
         this.var_2338 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2290;
      }
      
      public function get time() : String
      {
         return this.var_2338;
      }
      
      public function get senderId() : int
      {
         return this.var_1095;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
