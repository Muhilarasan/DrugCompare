
GO

/****** Object:  Table [dbo].[DrugDoseMaster]    Script Date: 03-01-2020 15:20:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DrugDoseMaster](
	[DrugDoseId] [int] IDENTITY(1,1) NOT NULL,
	[DrugId] [int] NULL,
	[DosageName] [nvarchar](max) NULL,
	[UnitCost] [decimal](18, 0) NULL,
	[StatusFlag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[DrugDoseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[DrugDoseMaster] ADD  DEFAULT ((1)) FOR [StatusFlag]
GO

ALTER TABLE [dbo].[DrugDoseMaster]  WITH CHECK ADD  CONSTRAINT [Fk_DrugDoseMaster_DrugMaster] FOREIGN KEY([DrugId])
REFERENCES [dbo].[DrugMaster] ([DrugId])
GO

ALTER TABLE [dbo].[DrugDoseMaster] CHECK CONSTRAINT [Fk_DrugDoseMaster_DrugMaster]
GO


