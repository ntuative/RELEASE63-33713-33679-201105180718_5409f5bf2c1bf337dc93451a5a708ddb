package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2995:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_85 = param1.desktop;
         var_63 = param1.var_1336 as WindowController;
         var_175 = param1.var_1339 as WindowController;
         var_163 = param1.renderer;
         var_869 = param1.var_1335;
         param2.begin();
         param2.end();
         param1.desktop = var_85;
         param1.var_1336 = var_63;
         param1.var_1339 = var_175;
         param1.renderer = var_163;
         param1.var_1335 = var_869;
      }
   }
}
