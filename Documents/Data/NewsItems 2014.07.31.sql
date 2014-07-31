USE [TNC]
GO

/****** Object:  Table [dbo].[NewsItems]    Script Date: 7/31/2014 4:02:50 PM ******/
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
 CONSTRAINT [PK_NewsItems] PRIMARY KEY CLUSTERED 
(
	[NewsItemID] ASC,
	[UrlTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


