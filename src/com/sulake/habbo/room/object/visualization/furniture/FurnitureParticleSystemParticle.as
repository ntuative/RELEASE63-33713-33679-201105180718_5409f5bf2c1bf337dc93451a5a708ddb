package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_172:Number;
      
      private var var_171:Number;
      
      private var var_1849:Number;
      
      private var var_1850:Number;
      
      private var var_1848:Number;
      
      private var var_1211:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_524:int = 0;
      
      private var var_958:int;
      
      private var var_2572:Boolean = false;
      
      private var var_1851:Boolean = false;
      
      private var var_1522:Number;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get fade() : Boolean
      {
         return this.var_1851;
      }
      
      public function get alphaMultiplier() : Number
      {
         return this._alphaMultiplier;
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function get age() : int
      {
         return this.var_524;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null, param10:Boolean = false) : void
      {
         this._x = param1;
         this.var_172 = param2;
         this.var_171 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_1849 = this._x - this._direction.x * param6;
         this.var_1850 = this.var_172 - this._direction.y * param6;
         this.var_1848 = this.var_171 - this._direction.z * param6;
         this.var_524 = 0;
         this.var_1211 = false;
         this.var_958 = param7;
         this.var_2572 = param8;
         this._frames = param9;
         this.var_1851 = param10;
         this._alphaMultiplier = 1;
         this.var_1522 = 0.5 + Math.random() * 0.5;
      }
      
      public function update() : void
      {
         ++this.var_524;
         if(this.var_524 == this.var_958)
         {
            this.ignite();
         }
         if(this.var_1851)
         {
            if(this.var_524 / this.var_958 > this.var_1522)
            {
               this._alphaMultiplier = (this.var_958 - this.var_524) / (this.var_958 * (1 - this.var_1522));
            }
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_524 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2572;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_524 <= this.var_958;
      }
      
      public function dispose() : void
      {
         this._direction = null;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_172;
      }
      
      public function get z() : Number
      {
         return this.var_171;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_172 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_171 = param1;
      }
      
      public function get lastX() : Number
      {
         return this.var_1849;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1211 = true;
         this.var_1849 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_1850;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1211 = true;
         this.var_1850 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_1848;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1211 = true;
         this.var_1848 = param1;
      }
      
      public function get hasMoved() : Boolean
      {
         return this.var_1211;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_172,this.var_171].toString();
      }
   }
}
