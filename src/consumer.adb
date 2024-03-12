package body Consumer is

   task body Consumer_Task is
      id: Integer;
      res: String(1..80);
      val: Integer := 1;
   begin
      accept Start(id: Integer) do
         Consumer_Task.id := id;
      end Start;
      loop
         exit when Goods.isConsumptionDone;
         Goods.decrementConsumedGood;
         getItem(res);
         Put_Line("Consumer " & id'img & " get item");
      end loop;
   end Consumer_Task;

end Consumer;
