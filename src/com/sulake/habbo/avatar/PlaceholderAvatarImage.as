package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_794:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1088)
         {
            _structure = null;
            _assets = null;
            var_265 = null;
            var_285 = null;
            var_587 = null;
            var_570 = null;
            var_336 = null;
            if(!var_1352 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_843 = null;
            var_1088 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_794[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_794[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_380:
               switch(_loc3_)
               {
                  case AvatarAction.const_847:
                  case AvatarAction.const_572:
                  case AvatarAction.const_421:
                  case AvatarAction.const_760:
                  case AvatarAction.const_418:
                  case AvatarAction.const_905:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_346:
            case AvatarAction.const_877:
            case AvatarAction.const_273:
            case AvatarAction.const_747:
            case AvatarAction.const_833:
            case AvatarAction.const_753:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
