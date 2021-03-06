package com.sulake.habbo.quest
{
   import com.sulake.habbo.communication.messages.incoming.inventory.achievements.AchievementData;
   import flash.utils.Dictionary;
   
   public class AchievementCategories
   {
       
      
      private var var_160:Dictionary;
      
      private var var_1324:Array;
      
      public function AchievementCategories(param1:Array)
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         this.var_160 = new Dictionary();
         this.var_1324 = new Array();
         super();
         for each(_loc2_ in param1)
         {
            _loc3_ = this.var_160[_loc2_.category];
            if(_loc3_ == null)
            {
               _loc3_ = new AchievementCategory(_loc2_.category);
               this.var_160[_loc2_.category] = _loc3_;
               this.var_1324.push(_loc3_);
            }
            _loc3_.add(_loc2_);
         }
      }
      
      public function update(param1:AchievementData) : void
      {
         var _loc2_:AchievementCategory = this.var_160[param1.category];
         _loc2_.update(param1);
      }
      
      public function get categoryList() : Array
      {
         return this.var_1324;
      }
      
      public function getMaxProgress() : int
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.var_1324)
         {
            _loc1_ += _loc2_.getMaxProgress();
         }
         return _loc1_;
      }
      
      public function getProgress() : int
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.var_1324)
         {
            _loc1_ += _loc2_.getProgress();
         }
         return _loc1_;
      }
   }
}
