-- Create DONATION Table
CREATE TABLE DONATION (
    donation_id            NUMBER PRIMARY KEY,
    blood_bank_id          NUMBER NOT NULL,
    user_id                NUMBER NOT NULL,
    blood_type_id          NUMBER NOT NULL,
    quantity               NUMBER NOT NULL,
    donation_date          DATE NOT NULL,
    status                 VARCHAR2(20) NOT NULL,
    hospital_patient_id    NUMBER,
 
    -- Foreign Keys
    CONSTRAINT donation_user_fk 
        FOREIGN KEY (user_id) 
        REFERENCES bbms_user(user_id),
 
    CONSTRAINT donation_blood_bank_fk 
        FOREIGN KEY (blood_bank_id) 
        REFERENCES blood_bank(blood_bank_id),
 
    CONSTRAINT donation_blood_type_fk 
        FOREIGN KEY (blood_type_id) 
        REFERENCES blood_type(blood_type_id),
 
    CONSTRAINT donation_hospital_patient_fk 
        FOREIGN KEY (hospital_patient_id) 
        REFERENCES hospital_patient(hospital_patient_id)
);