package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2635:String;
      
      private var var_2634:String;
      
      private var var_451:BitmapDataAsset;
      
      private var var_1516:Boolean;
      
      private var var_1515:Boolean;
      
      private var var_2633:Boolean;
      
      private var _offsetX:int;
      
      private var var_1305:int;
      
      private var var_245:int;
      
      private var _height:int;
      
      private var var_786:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2635 = param1;
         this.var_2634 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_451 = _loc9_;
            this.var_786 = false;
         }
         else
         {
            this.var_451 = null;
            this.var_786 = true;
         }
         this.var_1516 = param4;
         this.var_1515 = param5;
         this._offsetX = param6;
         this.var_1305 = param7;
         this.var_2633 = param8;
      }
      
      public function dispose() : void
      {
         this.var_451 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_786 && this.var_451 != null)
         {
            _loc1_ = this.var_451.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_245 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_786 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1515;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1516;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_245;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2635;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2634;
      }
      
      public function get asset() : IAsset
      {
         return this.var_451;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2633;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1516)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1515)
         {
            return this.var_1305;
         }
         return -(this.height + this.var_1305);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1305;
      }
   }
}
