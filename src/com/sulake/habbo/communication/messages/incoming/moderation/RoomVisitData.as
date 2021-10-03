package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1826:Boolean;
      
      private var _roomId:int;
      
      private var var_945:String;
      
      private var var_2412:int;
      
      private var var_2413:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1826 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_945 = param1.readString();
         this.var_2412 = param1.readInteger();
         this.var_2413 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1826;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_945;
      }
      
      public function get enterHour() : int
      {
         return this.var_2412;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2413;
      }
   }
}
