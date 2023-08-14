CREATE TABLE [dbo].[WidgetPrices]
(
[RecordID] [int] NOT NULL IDENTITY(1, 1),
[WidgetID] [int] NULL,
[Price] [money] NULL,
[DateValidFrom] [datetime] NULL CONSTRAINT [DF_WidgetPrices_DateValidFrom] DEFAULT (getdate()),
[DateValidTo] [datetime] NULL,
[Active] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_WidgetPrices_Active] DEFAULT ('N')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WidgetPrices] ADD CONSTRAINT [PK_WidgetPrices] PRIMARY KEY NONCLUSTERED ([RecordID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_WidgetPrices_1] ON [dbo].[WidgetPrices] ([DateValidFrom]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_WidgetPrices_2] ON [dbo].[WidgetPrices] ([DateValidTo]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_WidgetPrices] ON [dbo].[WidgetPrices] ([WidgetID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WidgetPrices] ADD CONSTRAINT [FK_WidgetPrices_Widgets] FOREIGN KEY ([WidgetID]) REFERENCES [dbo].[Widgets] ([RecordID])
GO
DENY DELETE ON  [dbo].[WidgetPrices] TO [public]
GO
DENY INSERT ON  [dbo].[WidgetPrices] TO [public]
GO
DENY REFERENCES ON  [dbo].[WidgetPrices] TO [public]
GO
GRANT SELECT ON  [dbo].[WidgetPrices] TO [public]
GO
DENY UPDATE ON  [dbo].[WidgetPrices] TO [public]
GO
