-- =====================================================
-- PROFILE
-- =====================================================

INSERT INTO Profile (
    FullName,
    Title,
    Email,
    LinkedInUrl,
    GitHubUrl,
    Location,
    Summary
)
VALUES (
    'Caroline Moraes',
    'Senior Analyst, DevOps Engineering',
    'devops.caroline@hotmail.com',
    'https://linkedin.com/in/caroline-moraes',
    'https://github.com/moraes-caroline',
    'Sao Paulo, Brazil',
    'DevOps and Cloud Engineer focused on Azure, AWS, Terraform, GitHub Actions, CI/CD and Infrastructure as Code.'
);

-- =====================================================
-- SKILLS
-- =====================================================

INSERT INTO Skills (
    Name,
    Category,
    Level
)
VALUES
('Terraform', 'IaC', 'Advanced'),
('Azure', 'Cloud', 'Advanced'),
('AWS', 'Cloud', 'Advanced'),
('GitHub Actions', 'CI/CD', 'Advanced'),
('Docker', 'Containers', 'Advanced'),
('Python', 'Programming', 'Intermediate'),
('Node.js', 'Programming', 'Intermediate'),
('SQL Server', 'Database', 'Intermediate');

-- =====================================================
-- PROJECTS
-- =====================================================

INSERT INTO Projects (
    Name,
    Description,
    GitHubUrl,
    Featured
)
VALUES
(
    'Azure Terraform Challenge',
    'Complete IaC solution using Terraform, Key Vault, SQL Server, App Services, Private Endpoints and GitHub Actions.',
    'https://github.com/moraes-caroline/stack-iac-azure',
    1
),
(
    'AWS Terraform Challenge',
    'Flask application containerized with Docker and deployed to ECS Fargate.',
    'https://github.com/moraes-caroline/stack-iac-aws',
    1
);

-- =====================================================
-- PROJECT TECHNOLOGIES
-- =====================================================

INSERT INTO ProjectTechnologies (
    ProjectId,
    TechnologyName
)
VALUES
(1, 'Terraform'),
(1, 'Azure'),
(1, 'GitHub Actions'),
(1, 'Key Vault'),
(1, 'SQL Server'),

(2, 'AWS'),
(2, 'Docker'),
(2, 'Python'),
(2, 'Flask'),
(2, 'ECS Fargate'),

(3, 'Node.js'),
(3, 'React'),
(3, 'Azure App Service');

-- =====================================================
-- EXPERIENCES
-- =====================================================

INSERT INTO Experiences (
    CompanyName,
    PositionName,
    StartDate,
    CurrentPosition,
    Description
)
VALUES
(
    'Avanade',
    'Senior Analyst - DevOps Engineering',
    '2023-01-01',
    1,
    'Design and implementation of cloud infrastructure, Terraform modules, CI/CD pipelines and observability solutions.'
);

-- =====================================================
-- CERTIFICATIONS
-- =====================================================

INSERT INTO Certifications (
    Name,
    Issuer
)
VALUES
(
    'Microsoft Azure Fundamentals',
    'Microsoft'
);