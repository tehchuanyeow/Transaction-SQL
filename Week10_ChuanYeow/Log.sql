CREATE TABLE [dbo].[Log]
(
	[OrigAcct] INT NOT NULL,
	[LogDateTime] DATETIME,
	[RecAcct] INT,
	[Amount] MONEY NOT NULL,
	FOREIGN KEY (OrigAcct) REFERENCES Account(AcctNo),
	CONSTRAINT [PK_OrigAcct] PRIMARY KEY (OrigAcct, LogDateTime)
)
