package body Consumer is

   task body Consumer_Task is
      id: Integer;
      res: String(1..80);
   begin
      accept Start(id: Integer) do
         Consumer_Task.id := id;
      end Start;
      while (getAndDecreaseConsumedGood > 0) loop
         getItem(res);
         Put_Line("Consumer " & id'img & " get item");
      end loop;
   end Consumer_Task;

end Consumer;
