package body ProtectedGoods is

   protected body Goods is
      
      
      function isConsumptionDone return Boolean is
         begin
         return consumedGoods = 0;
      end isConsumptionDone;
      function isProductionDone return Boolean is
         begin
         return producedGoods = 0;
      end isProductionDone;
      
      procedure decrementConsumedGood is 
      begin
         consumedGoods := consumedGoods - 1;
      end decrementConsumedGood;
      
      procedure decrementProducedGood is
      begin
         producedGoods := producedGoods - 1;
      end decrementProducedGood;
   end Goods;
end ProtectedGoods;
