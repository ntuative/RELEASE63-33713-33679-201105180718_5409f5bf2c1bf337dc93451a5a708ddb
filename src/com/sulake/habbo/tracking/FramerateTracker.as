package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1892:int;
      
      private var var_2620:int;
      
      private var var_765:int;
      
      private var var_559:Number;
      
      private var var_2618:Boolean;
      
      private var var_2619:int;
      
      private var var_1893:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_559);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2620 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2619 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2618 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_765;
         if(this.var_765 == 1)
         {
            this.var_559 = param1;
            this.var_1892 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_765);
            this.var_559 = this.var_559 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2618 && param3 - this.var_1892 >= this.var_2620)
         {
            this.var_765 = 0;
            if(this.var_1893 < this.var_2619)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_1893;
               this.var_1892 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
