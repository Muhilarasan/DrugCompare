
GO

/****** Object:  Table [dbo].[ProviderMaster]    Script Date: 03-01-2020 15:25:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProviderMaster](
	[ProviderId] [int] IDENTITY(1,1) NOT NULL,
	[ProviderName] [nvarchar](max) NULL,
	[StatusFlag] [bit] NULL,
	[ProviderAddress] [varchar](max) NULL,
	[ProviderPhone] [bigint] NULL,
	[ProviderExperience] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProviderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


