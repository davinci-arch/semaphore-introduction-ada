package ProtectedGoods is

   function getAndDecreaseConsumedGood return Integer;
   function getAndDecreaseProducedGood return Integer;
   
private
   consumedGoods: Integer := 16;
   producedGoods: Integer := 16;

end ProtectedGoods;
