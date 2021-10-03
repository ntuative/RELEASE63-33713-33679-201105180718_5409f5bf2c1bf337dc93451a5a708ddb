package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_999:int = 20;
      
      private static const const_642:int = 10;
      
      private static const const_1356:int = 31;
      
      private static const const_1357:int = 32;
      
      private static const const_641:int = 30;
       
      
      private var var_299:Array;
      
      private var var_750:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_299 = new Array();
         super();
         super.setAnimation(const_641);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_750)
            {
               this.var_750 = true;
               this.var_299 = new Array();
               this.var_299.push(const_1356);
               this.var_299.push(const_1357);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_642)
         {
            if(this.var_750)
            {
               this.var_750 = false;
               this.var_299 = new Array();
               if(direction == 2)
               {
                  this.var_299.push(const_999 + 5 - param1);
                  this.var_299.push(const_642 + 5 - param1);
               }
               else
               {
                  this.var_299.push(const_999 + param1);
                  this.var_299.push(const_642 + param1);
               }
               this.var_299.push(const_641);
               return;
            }
            super.setAnimation(const_641);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
