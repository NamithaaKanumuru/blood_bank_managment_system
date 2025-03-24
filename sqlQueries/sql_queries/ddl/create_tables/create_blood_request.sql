-- Create BLOOD_REQUEST Table
CREATE TABLE BLOOD_REQUEST (
    request_id           NUMBER PRIMARY KEY,
    hospital_id          NUMBER NOT NULL,
    hospital_patient_id  NUMBER NOT NULL,
    blood_type_id        NUMBER NOT NULL,
    quantity_requested   NUMBER NOT NULL,
    request_date         DATE NOT NULL,
    status               VARCHAR2(20) NOT NULL,
 
    -- Foreign Keys
    CONSTRAINT blood_request_hospital_fk 
        FOREIGN KEY (hospital_id) 
        REFERENCES hospital(hospital_id),
 
    CONSTRAINT blood_request_patient_fk 
        FOREIGN KEY (hospital_patient_id) 
        REFERENCES hospital_patient(hospital_patient_id),
 
    CONSTRAINT blood_request_blood_type_fk 
        FOREIGN KEY (blood_type_id) 
        REFERENCES blood_type(blood_type_id)
);