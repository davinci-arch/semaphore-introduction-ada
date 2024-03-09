package body ProtectedGoods is

   function getAndDecreaseConsumedGood return Integer is
   begin
      consumedGoods := consumedGoods - 1;
      return consumedGoods;
   end getAndDecreaseConsumedGood;
   
   function getAndDecreaseProducedGood return Integer is
   begin
      producedGoods := producedGoods - 1;
      return producedGoods;
   end getAndDecreaseProducedGood;

end ProtectedGoods;
