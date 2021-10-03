package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2366:Number = 0.0;
      
      private var var_2368:Number = 0.0;
      
      private var var_2367:Number = 0.0;
      
      private var var_2365:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2366 = param1;
         this.var_2368 = param2;
         this.var_2367 = param3;
         this.var_2365 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2366;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2368;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2367;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2365;
      }
   }
}
