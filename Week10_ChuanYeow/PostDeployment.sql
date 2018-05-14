/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM [dbo].[Account];
DELETE FROM [dbo].[Log];

INSERT INTO [dbo].[Account] (AcctNo, Fname, Lname, CreditLimit, Balance) VALUES
(923, 'Austin', 'Powers', -10, 30),
(933, 'Ahn', 'Waterhose', -20, 540);

INSERT INTO [dbo].[Log] (OrigAcct, LogDateTime, RecAcct, Amount) VALUES
(923, 27/10/2014, 244, 30),
(933, 30/08/2015, 255, 80);

END;