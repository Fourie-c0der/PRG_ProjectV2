/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  kekan
 * Created: 16 Jul 2025
 */
CREATE TABLE IF NOT EXISTS appointments(
    id INT PRIMARY KEY GENERATED ALWAYS AD IDENTITY, --auto incrementing primary key
    student_id VARCHAR(20) NOT NULL,
    counselorID INT NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time VARCHAR(10) NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP WITH TIMEZONE DEFAULT CURRENT_TIMESTAMP,

    --Foreign key constraints for  linking to the users tabel
    FOREIGN KEY (student_id) REFERENCES users(id) ON DELETE CASCADE,
    --Foreign key constraints for  linking to the counselors tabel
    FOREIGN KEY (counselorID) REFERENCES counselor(id) ON DELETE CASCADE
);
--indexes for better joins
CREATE INDEX IF NOT EXISTS idx_appointments_id ON appointments (student_id);
CREATE INDEX IF NOT EXISTS idx_appointments_counselor_id ON appointments (counselorID);
CREATE INDEX IF NOT EXISTS idx_appointments_date_time ON appointments (appointment_date, appointment_time);

