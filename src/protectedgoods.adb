package body ProtectedGoods is

   function getAndDecreaseConsumedGood return Integer is
      tmp: Integer;
   begin
      tmp := consumedGoods;
      consumedGoods := consumedGoods - 1;
      return tmp;
   end getAndDecreaseConsumedGood;
   
   function getAndDecreaseProducedGood return Integer is
      tmp: Integer;
   begin
      tmp := producedGoods;
      producedGoods := producedGoods - 1;
      return tmp;
   end getAndDecreaseProducedGood;

end ProtectedGoods;
