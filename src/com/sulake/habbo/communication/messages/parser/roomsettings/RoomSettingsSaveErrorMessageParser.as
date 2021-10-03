package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2144:int = 1;
      
      public static const const_2119:int = 2;
      
      public static const const_2183:int = 3;
      
      public static const const_2161:int = 4;
      
      public static const const_1908:int = 5;
      
      public static const const_1978:int = 6;
      
      public static const const_1760:int = 7;
      
      public static const const_1791:int = 8;
      
      public static const const_2170:int = 9;
      
      public static const const_1752:int = 10;
      
      public static const const_1742:int = 11;
      
      public static const const_1832:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1660:int;
      
      private var var_694:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1660 = param1.readInteger();
         this.var_694 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1660;
      }
      
      public function get info() : String
      {
         return this.var_694;
      }
   }
}
