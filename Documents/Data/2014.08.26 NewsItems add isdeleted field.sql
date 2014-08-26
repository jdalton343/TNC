USE [TNC]
GO

/****** Object:  Table [dbo].[NewsItems]    Script Date: 8/26/2014 1:18:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NewsItems](
	[NewsItemID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[UrlTitle] [nvarchar](255) NOT NULL,
	[PublicationDate] [datetime] NOT NULL,
	[Author] [nvarchar](255) NULL,
	[Summary] [text] NULL,
	[Body] [text] NULL,
	[LocatorPositionX] [float] NULL,
	[LocatorPositionY] [float] NULL,
	[LocationPopupTitle] [text] NULL,
	[LocationPopupDescription] [text] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_NewsItems] PRIMARY KEY CLUSTERED 
(
	[NewsItemID] ASC,
	[UrlTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[NewsItems] ADD  CONSTRAINT [DF_NewsItems_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO


