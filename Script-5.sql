-----------------------------------------------------------------
CREATE VIEW vw_ApplicationSummary
AS
SELECT
la.ApplicationId,
la.ServiceRequestId,
a.FullName,
la.PlotNo,
la.ProjectCost,
la.Status
FROM LandApplications la
INNER JOIN Applicants a
ON la.ApplicantId = a.ApplicantId;
----------------------------------------------------------------