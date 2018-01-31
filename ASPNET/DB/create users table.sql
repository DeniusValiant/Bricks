USE [auth]
GO

/****** Object:  Table [dbo].[users]    Script Date: 01/02/2018 01:06:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[users](
	[PKID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Username] [nvarchar](255) NOT NULL,
	[PasswordString] [nvarchar](128) NOT NULL,
	[PasswordBinary] [varbinary](128) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[ApplicationName] [nvarchar](255) NOT NULL,
	[Comment] [nvarchar](255) NULL,
	[PasswordQuestion] [nvarchar](255) NULL,
	[PasswordAnswer] [nvarchar](255) NULL,
	[LastActivityDate] [datetime] NULL,
	[LastLoginDate] [datetime] NULL,
	[LastPasswordChangedDate] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[IsOnLine] [bit] NULL,
	[IsLockedOut] [bit] NULL,
	[IsApproved] [bit] NULL,
	[LastLockedOutDate] [datetime] NULL,
	[FailedPasswordAttemptCount] [int] NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NULL,
	[FailedPasswordAnswerAttemptCount] [int] NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[users] ADD  DEFAULT (newid()) FOR [PKID]
GO


