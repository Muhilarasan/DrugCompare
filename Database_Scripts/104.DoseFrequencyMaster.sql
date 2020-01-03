
GO

/****** Object:  Table [dbo].[DoseFrequencyMaster]    Script Date: 03-01-2020 15:21:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DoseFrequencyMaster](
	[FrequencyId] [int] IDENTITY(1,1) NOT NULL,
	[FrequencyName] [nvarchar](max) NULL,
	[FrequencyDays] [int] NULL,
	[StatusFlag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[FrequencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[DoseFrequencyMaster] ADD  DEFAULT ((1)) FOR [StatusFlag]
GO


