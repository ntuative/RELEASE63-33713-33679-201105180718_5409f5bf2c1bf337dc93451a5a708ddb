package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1357:int = 3;
      
      private static const const_1419:int = 2;
      
      private static const const_1418:int = 1;
      
      private static const const_1420:int = 15;
       
      
      private var var_299:Array;
      
      private var var_1194:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_299 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1419)
         {
            this.var_299 = new Array();
            this.var_299.push(const_1418);
            this.var_1194 = const_1420;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1194 > 0)
         {
            --this.var_1194;
         }
         if(this.var_1194 == 0)
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
