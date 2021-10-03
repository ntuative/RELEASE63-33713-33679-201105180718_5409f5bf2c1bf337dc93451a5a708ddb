package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_587:String;
      
      private var var_1020:String;
      
      private var var_2406:String;
      
      private var var_1879:String;
      
      private var var_2405:int;
      
      private var var_2404:String;
      
      private var var_2407:int;
      
      private var var_2409:int;
      
      private var var_2224:int;
      
      private var var_1222:int;
      
      private var _petRespectLeft:int;
      
      private var var_2408:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_587 = param1.readString();
         this.var_1020 = param1.readString();
         this.var_2406 = param1.readString();
         this.var_1879 = param1.readString();
         this.var_2405 = param1.readInteger();
         this.var_2404 = param1.readString();
         this.var_2407 = param1.readInteger();
         this.var_2409 = param1.readInteger();
         this.var_2224 = param1.readInteger();
         this.var_1222 = param1.readInteger();
         this._petRespectLeft = param1.readInteger();
         this.var_2408 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_587;
      }
      
      public function get sex() : String
      {
         return this.var_1020;
      }
      
      public function get customData() : String
      {
         return this.var_2406;
      }
      
      public function get realName() : String
      {
         return this.var_1879;
      }
      
      public function get tickets() : int
      {
         return this.var_2405;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2404;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2407;
      }
      
      public function get directMail() : int
      {
         return this.var_2409;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2224;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1222;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
      
      public function get identityId() : int
      {
         return this.var_2408;
      }
   }
}
