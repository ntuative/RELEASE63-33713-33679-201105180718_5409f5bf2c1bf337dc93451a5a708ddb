package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2181:int = 0;
      
      public static const const_1667:int = 1;
      
      public static const const_1910:int = 2;
      
      public static const const_2019:int = 3;
      
      public static const const_1998:int = 4;
      
      public static const const_2134:int = 5;
      
      public static const const_1637:int = 10;
      
      public static const const_2078:int = 11;
      
      public static const const_2016:int = 12;
      
      public static const const_1995:int = 13;
      
      public static const const_2164:int = 16;
      
      public static const const_2043:int = 17;
      
      public static const const_2088:int = 18;
      
      public static const const_2084:int = 19;
      
      public static const const_2094:int = 20;
      
      public static const const_1996:int = 22;
      
      public static const const_2050:int = 23;
      
      public static const const_2026:int = 24;
      
      public static const const_2120:int = 25;
      
      public static const const_2031:int = 26;
      
      public static const const_2024:int = 27;
      
      public static const const_2101:int = 28;
      
      public static const const_2118:int = 29;
      
      public static const const_2146:int = 100;
      
      public static const const_2083:int = 101;
      
      public static const const_2008:int = 102;
      
      public static const const_2185:int = 103;
      
      public static const const_2099:int = 104;
      
      public static const const_2176:int = 105;
      
      public static const const_2116:int = 106;
      
      public static const const_2114:int = 107;
      
      public static const const_2035:int = 108;
      
      public static const const_2173:int = 109;
      
      public static const const_2041:int = 110;
      
      public static const const_2021:int = 111;
      
      public static const const_2130:int = 112;
      
      public static const const_2063:int = 113;
      
      public static const const_2115:int = 114;
      
      public static const const_2066:int = 115;
      
      public static const const_2097:int = 116;
      
      public static const const_2141:int = 117;
      
      public static const const_2109:int = 118;
      
      public static const const_2180:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1667:
            case const_1637:
               return "banned";
            case const_1910:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
