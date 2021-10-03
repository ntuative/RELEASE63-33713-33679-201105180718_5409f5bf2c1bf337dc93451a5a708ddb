package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_852:String = "";
      
      public static const const_387:int = 0;
      
      public static const const_491:int = 255;
      
      public static const const_945:Boolean = false;
      
      public static const const_533:int = 0;
      
      public static const const_599:int = 0;
      
      public static const const_404:int = 0;
      
      public static const const_1126:int = 1;
      
      public static const const_1235:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2252:String = "";
      
      private var var_1709:int = 0;
      
      private var var_2253:int = 255;
      
      private var var_2250:Boolean = false;
      
      private var var_2251:int = 0;
      
      private var var_2255:int = 0;
      
      private var var_2254:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2252 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2252;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1709 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1709;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2253 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2253;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2250 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2250;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2251 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2251;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2255 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2255;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2254 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2254;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
