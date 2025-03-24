-- Create BBMS_USER Table
CREATE TABLE BBMS_USER (
    user_id NUMBER PRIMARY KEY,
    location_id NUMBER NOT NULL,
    person_type_id NUMBER NOT NULL,
    hospital_id NUMBER, -- Nullable, only for doctors or staff
    name VARCHAR2(255) NOT NULL,
    email VARCHAR2(100) NOT NULL UNIQUE,
    phone VARCHAR2(15) NOT NULL,
    gender VARCHAR2(10) NOT NULL,
    dob DATE NOT NULL,
    blood_type_id NUMBER NOT NULL,
 
    -- Foreign Keys
    CONSTRAINT bbms_user_location_fk 
        FOREIGN KEY (location_id) 
        REFERENCES location(location_id),
 
    CONSTRAINT bbms_user_person_type_fk 
        FOREIGN KEY (person_type_id) 
        REFERENCES person_type(person_type_id),
 
    CONSTRAINT bbms_user_hospital_fk 
        FOREIGN KEY (hospital_id) 
        REFERENCES hospital(hospital_id),
 
    CONSTRAINT bbms_user_blood_type_fk 
        FOREIGN KEY (blood_type_id) 
        REFERENCES blood_type(blood_type_id)
);