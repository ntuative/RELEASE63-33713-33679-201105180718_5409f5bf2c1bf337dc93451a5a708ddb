package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1894:int;
      
      private var var_1858:Number;
      
      private var var_2590:Number;
      
      private var var_2593:int;
      
      private var var_2591:Number;
      
      private var var_2592:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1894 = param1;
         this.var_1858 = param2;
         this.var_2590 = param3;
         this.var_2591 = param4;
         this.var_2592 = param5;
         this.var_2593 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1894;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1858 < 0)
         {
            return 0;
         }
         return this.var_1858 + (getTimer() - this.var_2593) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2590;
      }
      
      public function get method_3() : Number
      {
         return this.var_2591;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2592;
      }
   }
}
