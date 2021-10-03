package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_550:String = "RWUAM_WHISPER_USER";
      
      public static const const_532:String = "RWUAM_IGNORE_USER";
      
      public static const const_601:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_372:String = "RWUAM_KICK_USER";
      
      public static const const_507:String = "RWUAM_BAN_USER";
      
      public static const const_558:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_474:String = "RWUAM_RESPECT_USER";
      
      public static const const_580:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_497:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_468:String = "RWUAM_START_TRADING";
      
      public static const const_682:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_529:String = "RWUAM_KICK_BOT";
      
      public static const const_476:String = "RWUAM_REPORT";
      
      public static const const_600:String = "RWUAM_PICKUP_PET";
      
      public static const const_1881:String = "RWUAM_TRAIN_PET";
      
      public static const const_483:String = " RWUAM_RESPECT_PET";
      
      public static const const_374:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_854:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
