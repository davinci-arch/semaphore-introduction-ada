package ProtectedGoods is

   function getAndDecreaseConsumedGood return Integer;
   function getAndDecreaseProducedGood return Integer;
   
private
   consumedGoods: Integer := 10;
   producedGoods: Integer := 10;

end ProtectedGoods;
