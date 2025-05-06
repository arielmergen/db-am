-- Insertar compañías de ejemplo
INSERT INTO "Company" (name) VALUES 
('Tech Solutions Inc.'),
('Digital Innovations Corp.'),
('Software Enterprise Ltd.');

-- Insertar tipos de entrevista
INSERT INTO "InterviewType" (name, description) VALUES
('Technical', 'Technical skills assessment'),
('HR', 'Human Resources interview'),
('Cultural Fit', 'Company culture alignment interview'),
('Code Challenge', 'Live coding or take-home assignment'),
('Final', 'Final interview with leadership');

-- Insertar flujos de entrevista
INSERT INTO "InterviewFlow" (description) VALUES
('Standard Technical Position Flow'),
('Senior Position Flow'),
('Leadership Position Flow');

-- Insertar pasos de entrevista para el flujo estándar
INSERT INTO "InterviewStep" ("interviewFlowId", "interviewTypeId", name, "orderIndex") VALUES
(1, 2, 'Initial HR Screen', 1),
(1, 1, 'Technical Assessment', 2),
(1, 4, 'Coding Challenge', 3),
(1, 3, 'Team Culture Fit', 4),
(1, 5, 'Final Decision', 5);

-- Insertar empleados iniciales
INSERT INTO "Employee" ("companyId", name, email, role, "isActive") VALUES
(1, 'John Smith', 'john.smith@techsolutions.com', 'HR Manager', true),
(1, 'Maria Garcia', 'maria.garcia@techsolutions.com', 'Tech Lead', true),
(2, 'David Wilson', 'david.wilson@digitalinnovations.com', 'HR Director', true),
(2, 'Sarah Johnson', 'sarah.johnson@digitalinnovations.com', 'Senior Developer', true);

-- Insertar posiciones abiertas
INSERT INTO "Position" (
    "companyId", 
    "interviewFlowId",
    title,
    status,
    "isVisible",
    location,
    "employmentType"
) VALUES
(1, 1, 'Senior Full Stack Developer', 'OPEN', true, 'Remote', 'FULL_TIME'),
(1, 1, 'DevOps Engineer', 'OPEN', true, 'Hybrid', 'FULL_TIME'),
(2, 2, 'Technical Project Manager', 'OPEN', true, 'On-site', 'FULL_TIME');