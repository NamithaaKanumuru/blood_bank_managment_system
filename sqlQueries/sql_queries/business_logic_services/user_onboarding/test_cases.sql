begin
   onboard_user(
      p_location_id    => 103,
      p_person_type_id => 3,
      p_hospital_id    => 202,
      p_name           => 'ku',
      p_email          => 'ku.si@northeastern.edu',
      p_phone          => '8573649162',
      p_gender         => 'male',
      p_dob            => to_date('2003-08-07',
                'YYYY-MM-DD'),
      p_blood_type_id  => 3
   );
end;
/