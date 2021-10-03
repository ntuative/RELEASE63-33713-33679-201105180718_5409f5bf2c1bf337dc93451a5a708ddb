package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_427:RoomObjectLocationCacheItem = null;
      
      private var var_209:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_427 = new RoomObjectLocationCacheItem(param1);
         this.var_209 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_427;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_209;
      }
      
      public function dispose() : void
      {
         if(this.var_427 != null)
         {
            this.var_427.dispose();
            this.var_427 = null;
         }
         if(this.var_209 != null)
         {
            this.var_209.dispose();
            this.var_209 = null;
         }
      }
   }
}
