-- Consistent Hospital Patient Insertions
begin
   begin
      insert into hospital_patient values ( 1,
                                            201,
                                            2,
                                            to_date('2023-11-01','YYYY-MM-DD'),
                                            to_date('2023-11-10','YYYY-MM-DD') );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into hospital_patient values ( 2,
                                            202,
                                            3,
                                            to_date('2023-12-05','YYYY-MM-DD'),
                                            to_date('2023-12-12','YYYY-MM-DD') );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into hospital_patient values ( 3,
                                            203,
                                            4,
                                            to_date('2023-11-20','YYYY-MM-DD'),
                                            to_date('2023-11-25','YYYY-MM-DD') );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into hospital_patient values ( 4,
                                            204,
                                            5,
                                            to_date('2024-01-02','YYYY-MM-DD'),
                                            to_date('2024-01-10','YYYY-MM-DD') );

   exception
      when dup_val_on_index then
         null;
   end;
 
    -- Ensure consistent user and hospital references
end;
/