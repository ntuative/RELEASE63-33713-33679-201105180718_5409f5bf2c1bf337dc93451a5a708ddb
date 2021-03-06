package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.ActivityPointTypeEnum;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1694:int;
      
      private var var_1766:String;
      
      private var var_1693:int;
      
      private var _upgrade:Boolean;
      
      private var var_2164:Boolean;
      
      private var var_2167:int;
      
      private var var_2169:int;
      
      private var include:ICatalogPage;
      
      private var var_2168:int;
      
      private var var_2165:int;
      
      private var var_2166:int;
      
      private var var_1365:String;
      
      private var var_2711:Boolean = false;
      
      private var _disposed:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this.var_1694 = param1;
         this.var_1766 = param2;
         this.var_1693 = param3;
         this._upgrade = param4;
         this.var_2164 = param5;
         this.var_2167 = param6;
         this.var_2169 = param7;
         this.var_2168 = param8;
         this.var_2165 = param9;
         this.var_2166 = param10;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.include = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get extraParameter() : String
      {
         return this.var_1365;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1365 = param1;
      }
      
      public function get offerId() : int
      {
         return this.var_1694;
      }
      
      public function get productCode() : String
      {
         return this.var_1766;
      }
      
      public function get price() : int
      {
         return this.var_1693;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2164;
      }
      
      public function get periods() : int
      {
         return this.var_2167;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2169;
      }
      
      public function get year() : int
      {
         return this.var_2168;
      }
      
      public function get month() : int
      {
         return this.var_2165;
      }
      
      public function get day() : int
      {
         return this.var_2166;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return ActivityPointTypeEnum.PIXEL;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1693;
      }
      
      public function get page() : ICatalogPage
      {
         return this.include;
      }
      
      public function get priceType() : String
      {
         return Offer.const_955;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1766;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.include = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2711;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2711 = param1;
      }
   }
}
