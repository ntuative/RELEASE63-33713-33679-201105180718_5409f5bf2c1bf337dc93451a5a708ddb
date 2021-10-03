package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_587:String;
      
      private var var_2621:String;
      
      private var var_894:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_587 = param1;
         this.var_894 = param2;
         this.var_2621 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_587;
      }
      
      public function get race() : String
      {
         return this.var_2621;
      }
      
      public function get gender() : String
      {
         return this.var_894;
      }
   }
}
