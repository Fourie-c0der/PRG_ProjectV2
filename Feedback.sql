/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  kekan
 * Created: 16 Jul 2025
 */

CREATE TABLE IF NOT EXISTS feedback (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY, -- Auto-increment
    student_id INT NOT NULL,
    counselorID INT NOT NULL,
    rating INT NOT NULL, -- Rating from 1 to 5
    comments VARCHAR(500),
    feedback_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

    -- Foreign key constraint linking to the 'users' table (for students)
    FOREIGN KEY (student_id) REFERENCES users(id) ON DELETE CASCADE,
    -- Foreign key constraint linking to the 'counselors' table
    FOREIGN KEY (counselorID) REFERENCES counselors(id) ON DELETE CASCADE,

    -- Constraint to ensure rating is within 1-5
    CONSTRAINT chk_rating CHECK (rating >= 1 AND rating <= 5)
);

-- Add indexes for foreign keys
CREATE INDEX IF NOT EXISTS idx_feedback_student_id ON feedback (student_id);
CREATE INDEX IF NOT EXISTS idx_feedback_counselorID ON feedback (counselorID);

