SET SERVEROUTPUT ON;

DECLARE
    -- Declare test input values
    v_user_id        NUMBER := 3031;
    v_location_id    NUMBER := 101;
    v_user_name      VARCHAR2(100) := 'Test Donor RRRajesh';
    v_email          VARCHAR2(100) := 'test.rajesyhdonor@example.com';
    v_phone          VARCHAR2(15) := '98765843210';
    v_gender         VARCHAR2(10) := 'Male';
    v_dob            DATE := TO_DATE('1990-01-01', 'YYYY-MM-DD');
    v_blood_type_id  NUMBER := 1;
    v_blood_bank_id  NUMBER := 1;
    v_user_type_id   NUMBER := 3;
BEGIN
    DBMS_OUTPUT.PUT_LINE('-- Running Test Case: test_donate_blood_flow --');

    -- Call the main donation flow procedure
    donate_blood_main_flow(
        user_id         => v_user_id,
        location_id     => v_location_id,
        user_name       => v_user_name,
        email           => v_email,
        phone           => v_phone,
        gender          => v_gender,
        dob             => v_dob,
        blood_type_id   => v_blood_type_id,
        blood_bank_id   => v_blood_bank_id,
        user_type_id    => v_user_type_id
    );

    DBMS_OUTPUT.PUT_LINE('-- Test Completed --');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Test failed with error: ' || SQLERRM);
END;
/