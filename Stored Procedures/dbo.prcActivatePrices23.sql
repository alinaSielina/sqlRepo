SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create PROCEDURE [dbo].[prcActivatePrices23]  AS

UPDATE WidgetPrices SET Active='N' WHERE GetDate()<DateValidTo OR GetDate()>DateValidFrom
UPDATE WidgetPrices SET Active='Y' WHERE GetDate()>DateValidFrom OR GetDate()<=DateValidFrom
GO
