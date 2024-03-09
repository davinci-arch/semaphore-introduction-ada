package body Storage is

   procedure addItem(item: String) is
   begin
      fullStorage.Seize;
      accessStorage.Seize;
      storageLst.Append(item);
      accessStorage.Release;
      emptyStorage.Release;
   end addItem;
   
   procedure getItem(item: out String) is
   begin
      emptyStorage.Seize;
      accessStorage.Seize;
      --item := First_Element(storageLst);
      storageLst.Delete_First;
      accessStorage.Release;
      fullStorage.Release;
   end getItem;
   
   procedure initStorage(storageSize: in Integer) is
   begin
      size := storageSize;
      for i in 1 .. size loop
         fullStorage.Release;
      end loop;
   end initStorage;
end Storage;
