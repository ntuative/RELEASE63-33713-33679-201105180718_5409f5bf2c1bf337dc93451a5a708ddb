package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserDataUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_133:String = "rsudue_user_data_updated";
       
      
      public function RoomSessionUserDataUpdateEvent(param1:IRoomSession, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_133,param1,param2,param3);
      }
   }
}
