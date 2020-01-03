
GO

/****** Object:  Table [dbo].[PricePercentageMaster]    Script Date: 03-01-2020 15:25:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PricePercentageMaster](
	[PricePercentageId] [int] IDENTITY(1,1) NOT NULL,
	[Year] [int] NULL,
	[Percentage] [float] NULL,
	[StatusFlag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PricePercentageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PricePercentageMaster] ADD  DEFAULT ((1)) FOR [StatusFlag]
GO


