package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_982:BigInteger;
      
      private var var_2631:BigInteger;
      
      private var var_1904:BigInteger;
      
      private var var_2630:BigInteger;
      
      private var var_1500:BigInteger;
      
      private var var_1903:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1500 = param1;
         this.var_1903 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1500.toString() + ",generator: " + this.var_1903.toString() + ",secret: " + param1);
         this.var_982 = new BigInteger();
         this.var_982.fromRadix(param1,param2);
         this.var_2631 = this.var_1903.modPow(this.var_982,this.var_1500);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1904 = new BigInteger();
         this.var_1904.fromRadix(param1,param2);
         this.var_2630 = this.var_1904.modPow(this.var_982,this.var_1500);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2631.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2630.toRadix(param1);
      }
   }
}
