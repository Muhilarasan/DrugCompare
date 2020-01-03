
GO

/****** Object:  Table [dbo].[DrugMaster]    Script Date: 03-01-2020 15:19:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DrugMaster](
	[DrugId] [int] IDENTITY(1,1) NOT NULL,
	[DrugName] [nvarchar](max) NULL,
	[PrimaryDrugId] [int] NULL,
	[StatusFlag] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DrugId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[DrugMaster] ADD  DEFAULT ((1)) FOR [StatusFlag]
GO


