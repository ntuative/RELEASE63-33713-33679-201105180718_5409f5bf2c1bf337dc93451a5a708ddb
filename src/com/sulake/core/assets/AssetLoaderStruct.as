package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_981:IAssetLoader;
      
      private var var_2635:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_2635 = param1;
         this.var_981 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_2635;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_981;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_981 != null)
            {
               if(!this.var_981.disposed)
               {
                  this.var_981.dispose();
                  this.var_981 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
