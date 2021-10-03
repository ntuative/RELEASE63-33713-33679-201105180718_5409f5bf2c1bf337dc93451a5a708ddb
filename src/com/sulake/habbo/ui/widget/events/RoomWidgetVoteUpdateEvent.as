package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_155:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_147:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1233:String;
      
      private var var_1501:Array;
      
      private var var_1322:Array;
      
      private var var_1905:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1233 = param2;
         this.var_1501 = param3;
         this.var_1322 = param4;
         if(this.var_1322 == null)
         {
            this.var_1322 = [];
         }
         this.var_1905 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1233;
      }
      
      public function get choices() : Array
      {
         return this.var_1501.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1322.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1905;
      }
   }
}
