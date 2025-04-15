
SET SERVEROUTPUT ON;

BEGIN
    add_blood_request(
        p_request_id         => 9999999,
        p_hospital_id        => 202,
        p_hospital_patient_id => 502,
        p_user_id            => 2004,
        p_blood_type_id      => 1,
        p_quantity_requested => 1,
        p_request_date       => SYSDATE
    );
END;
/
