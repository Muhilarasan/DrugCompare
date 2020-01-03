
GO

/****** Object:  Table [dbo].[PlanMaster]    Script Date: 03-01-2020 15:23:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PlanMaster](
	[PlanId] [int] IDENTITY(1,1) NOT NULL,
	[PlanName] [nvarchar](max) NULL,
	[PlanYear] [int] NULL,
	[PlanTypeId] [int] NULL,
	[StatusFlag] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[PlanMaster] ADD  DEFAULT ((1)) FOR [StatusFlag]
GO

ALTER TABLE [dbo].[PlanMaster]  WITH CHECK ADD  CONSTRAINT [Fk_PlanMaster_PlanType] FOREIGN KEY([PlanTypeId])
REFERENCES [dbo].[PlanType] ([PlanTypeId])
GO

ALTER TABLE [dbo].[PlanMaster] CHECK CONSTRAINT [Fk_PlanMaster_PlanType]
GO


