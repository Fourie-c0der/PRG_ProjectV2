/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  kekan
 * Created: 16 Jul 2025
 */
CREATE TABLE IF NOT EXISTS counselors(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY, --auto incrementing key
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    availability VARCHAR(50) NOT NULL --Available, Busy, On Leave
);
--index on the specialization column for faster lookups
CREATE INDEX IF NOT EXISTS idx_counselors_specialization ON counselors (specialization);

