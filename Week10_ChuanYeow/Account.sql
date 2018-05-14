CREATE TABLE [dbo].[Account]
(
	[AcctNo] INT NOT NULL PRIMARY KEY,
	[Fname] NVARCHAR(50) NOT NULL,
	[Lname] NVARCHAR(50) NOT NULL,
	[CreditLimit] MONEY,
	[Balance] MONEY,
	CONSTRAINT [FullName] UNIQUE (Fname, Lname),
	CONSTRAINT [CreditLimit] CHECK (CreditLimit < 0),
	CONSTRAINT [Balance] CHECK (Balance > CreditLimit)
)
