with ProtectedGoods, Storage, Ada.Text_IO;
use ProtectedGoods, Storage, Ada.Text_IO;
package Producer is

   task type Producer_Task is
      entry Start(id: Integer);
   end Producer_Task;

end Producer;
