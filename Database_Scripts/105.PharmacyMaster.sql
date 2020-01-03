
GO

/****** Object:  Table [dbo].[PharmacyMaster]    Script Date: 03-01-2020 15:23:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PharmacyMaster](
	[PharmacyID] [int] IDENTITY(1,1) NOT NULL,
	[PharmacyName] [nvarchar](max) NULL,
	[PharmacyZip] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[Timings] [nvarchar](max) NULL,
	[StatusFlag] [bit] NULL,
	[PharmacyPhone] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[PharmacyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


