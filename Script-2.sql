----------------------------------------------------
CREATE TABLE Applicants (
    ApplicantId INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE,
    MobileNo VARCHAR(15),
    CreatedDate DATETIME DEFAULT GETDATE()
);

CREATE TABLE LandApplications (
    ApplicationId INT IDENTITY(1,1) PRIMARY KEY,
    ServiceRequestId VARCHAR(50) NOT NULL,
    ApplicantId INT NOT NULL,
    PlotNo VARCHAR(50),
    PlotArea DECIMAL(10,2),
    ProjectCost DECIMAL(18,2),
    Status VARCHAR(20) DEFAULT 'Pending',
    CreatedDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (ApplicantId) REFERENCES Applicants(ApplicantId)
);
-----------------------------