-- =====================================================
-- PROFILE
-- =====================================================

CREATE TABLE Profile (
    Id INT IDENTITY(1,1) PRIMARY KEY,

    FullName VARCHAR(150) NOT NULL,
    Title VARCHAR(150) NOT NULL,

    Email VARCHAR(150),
    LinkedInUrl VARCHAR(255),
    GitHubUrl VARCHAR(255),

    Location VARCHAR(100),

    Summary VARCHAR(MAX),

    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE()
);

-- =====================================================
-- SKILLS
-- =====================================================

CREATE TABLE Skills (
    Id INT IDENTITY(1,1) PRIMARY KEY,

    Name VARCHAR(100) NOT NULL,

    Category VARCHAR(100),

    Level VARCHAR(50),

    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE()
);

-- =====================================================
-- PROJECTS
-- =====================================================

CREATE TABLE Projects (
    Id INT IDENTITY(1,1) PRIMARY KEY,

    Name VARCHAR(150) NOT NULL,

    Description VARCHAR(MAX),

    GitHubUrl VARCHAR(255),

    DemoUrl VARCHAR(255),

    Featured BIT NOT NULL DEFAULT 0,

    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE()
);

-- =====================================================
-- PROJECT TECHNOLOGIES
-- =====================================================

CREATE TABLE ProjectTechnologies (
    Id INT IDENTITY(1,1) PRIMARY KEY,

    ProjectId INT NOT NULL,

    TechnologyName VARCHAR(100) NOT NULL,

    CONSTRAINT FK_ProjectTechnologies_Projects
        FOREIGN KEY (ProjectId)
        REFERENCES Projects(Id)
);

-- =====================================================
-- EXPERIENCES
-- =====================================================

CREATE TABLE Experiences (
    Id INT IDENTITY(1,1) PRIMARY KEY,

    CompanyName VARCHAR(150) NOT NULL,

    PositionName VARCHAR(150) NOT NULL,

    StartDate DATE NOT NULL,

    EndDate DATE NULL,

    CurrentPosition BIT NOT NULL DEFAULT 0,

    Description VARCHAR(MAX),

    CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE()
);

-- =====================================================
-- CERTIFICATIONS
-- =====================================================

CREATE TABLE Certifications (
    Id INT IDENTITY(1,1) PRIMARY KEY)