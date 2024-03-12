package ProtectedGoods is

   protected Goods is
      
      procedure decrementConsumedGood;
      procedure decrementProducedGood;
      
      function isConsumptionDone return Boolean;
      function isProductionDone return Boolean;
      
   private
      consumedGoods: Integer := 10;
      producedGoods: Integer := 10;
   end Goods;
end ProtectedGoods;
