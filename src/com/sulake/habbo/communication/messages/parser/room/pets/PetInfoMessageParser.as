package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1811:int;
      
      private var _name:String;
      
      private var var_1173:int;
      
      private var var_2827:int;
      
      private var var_2219:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_587:String;
      
      private var var_2824:int;
      
      private var var_2826:int;
      
      private var var_2825:int;
      
      private var var_2339:int;
      
      private var var_2222:int;
      
      private var _ownerName:String;
      
      private var var_524:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1811;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1173;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2827;
      }
      
      public function get experience() : int
      {
         return this.var_2219;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_587;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2824;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2826;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2825;
      }
      
      public function get respect() : int
      {
         return this.var_2339;
      }
      
      public function get ownerId() : int
      {
         return this.var_2222;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_524;
      }
      
      public function flush() : Boolean
      {
         this.var_1811 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1811 = param1.readInteger();
         this._name = param1.readString();
         this.var_1173 = param1.readInteger();
         this.var_2827 = param1.readInteger();
         this.var_2219 = param1.readInteger();
         this.var_2824 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2826 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2825 = param1.readInteger();
         this.var_587 = param1.readString();
         this.var_2339 = param1.readInteger();
         this.var_2222 = param1.readInteger();
         this.var_524 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
