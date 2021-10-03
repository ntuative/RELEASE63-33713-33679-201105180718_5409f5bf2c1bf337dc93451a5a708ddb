package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1407:int = 80;
       
      
      private var var_514:Map;
      
      private var var_945:String = "";
      
      private var var_1464:Array;
      
      public function UserRegistry()
      {
         this.var_514 = new Map();
         this.var_1464 = new Array();
         super();
      }
      
      public function getRegistry() : Map
      {
         return this.var_514;
      }
      
      public function registerRoom(param1:String) : void
      {
         this.var_945 = param1;
         if(this.var_945 != "")
         {
            this.addRoomNameForMissing();
         }
      }
      
      public function unregisterRoom() : void
      {
         this.var_945 = "";
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(this.var_514.getValue(param1) != null)
         {
            this.var_514.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,this.var_945);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && this.var_945 == "")
         {
            this.var_1464.push(param1);
         }
         this.var_514.add(param1,_loc4_);
         this.purgeUserIndex();
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(this.var_514.length > const_1407)
         {
            _loc1_ = this.var_514.getKey(0);
            this.var_514.remove(_loc1_);
         }
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(this.var_1464.length > 0)
         {
            _loc1_ = this.var_514.getValue(this.var_1464.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = this.var_945;
            }
         }
      }
   }
}
