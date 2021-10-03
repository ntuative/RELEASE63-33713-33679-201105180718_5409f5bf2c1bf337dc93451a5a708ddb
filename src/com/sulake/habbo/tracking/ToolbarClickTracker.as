package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1363:IHabboTracking;
      
      private var var_1902:Boolean = false;
      
      private var var_2451:int = 0;
      
      private var var_1789:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1363 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1363 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1902 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2451 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1902)
         {
            return;
         }
         ++this.var_1789;
         if(this.var_1789 <= this.var_2451)
         {
            this.var_1363.track("toolbar",param1);
         }
      }
   }
}
