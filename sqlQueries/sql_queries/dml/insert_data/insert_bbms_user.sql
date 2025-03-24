-- Consistent Donation Insertions
begin
    -- Donations for USER_ID 1001
   begin
      insert into donation values ( 1,
                                    1,
                                    1001,
                                    1,
                                    500,
                                    to_date('2019-03-10','YYYY-MM-DD'),
                                    'Consumed',
                                    null );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into donation values ( 2,
                                    1,
                                    1001,
                                    1,
                                    500,
                                    to_date('2020-05-15','YYYY-MM-DD'),
                                    'Consumed',
                                    null );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into donation values ( 3,
                                    2,
                                    1001,
                                    1,
                                    500,
                                    to_date('2021-07-21','YYYY-MM-DD'),
                                    'Available',
                                    null );

   exception
      when dup_val_on_index then
         null;
   end;
 
    -- Donations for USER_ID 1002
   begin
      insert into donation values ( 6,
                                    1,
                                    1002,
                                    2,
                                    500,
                                    to_date('2020-06-12','YYYY-MM-DD'),
                                    'Consumed',
                                    null );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into donation values ( 20,
                                    6,
                                    1016,
                                    1,
                                    500,
                                    to_date('2023-10-01','YYYY-MM-DD'),
                                    'Available',
                                    null );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into donation values ( 21,
                                    7,
                                    1017,
                                    2,
                                    500,
                                    to_date('2023-09-15','YYYY-MM-DD'),
                                    'Consumed',
                                    null );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into donation values ( 22,
                                    8,
                                    1018,
                                    5,
                                    500,
                                    to_date('2024-01-05','YYYY-MM-DD'),
                                    'Available',
                                    null );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into donation values ( 23,
                                    6,
                                    1019,
                                    4,
                                    500,
                                    to_date('2023-11-30','YYYY-MM-DD'),
                                    'Expired',
                                    null );

   exception
      when dup_val_on_index then
         null;
   end;
 
    -- Subsequent donations with consistent user and blood bank references
end;
/