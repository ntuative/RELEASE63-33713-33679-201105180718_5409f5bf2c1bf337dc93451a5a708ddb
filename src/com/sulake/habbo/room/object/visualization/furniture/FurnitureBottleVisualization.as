package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_999:int = 20;
      
      private static const const_642:int = 9;
      
      private static const const_1357:int = -1;
       
      
      private var var_299:Array;
      
      private var var_750:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_299 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_750)
            {
               this.var_750 = true;
               this.var_299 = new Array();
               this.var_299.push(const_1357);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_750)
            {
               this.var_750 = false;
               this.var_299 = new Array();
               this.var_299.push(const_999);
               this.var_299.push(const_642 + param1);
               this.var_299.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
         {
            if(this.var_299.length > 0)
            {
               super.setAnimation(this.var_299.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
