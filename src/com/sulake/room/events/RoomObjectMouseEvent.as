package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_149:String = "ROE_MOUSE_CLICK";
      
      public static const const_176:String = "ROE_MOUSE_ENTER";
      
      public static const const_621:String = "ROE_MOUSE_MOVE";
      
      public static const const_175:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2027:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_466:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1796:String = "";
      
      private var var_2501:Boolean;
      
      private var var_2502:Boolean;
      
      private var var_2500:Boolean;
      
      private var var_2503:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1796 = param2;
         this.var_2501 = param5;
         this.var_2502 = param6;
         this.var_2500 = param7;
         this.var_2503 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1796;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2501;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2502;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2500;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2503;
      }
   }
}
