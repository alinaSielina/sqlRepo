SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[prcActivatePrices11]  AS

UPDATE WidgetPrices SET Active='N' WHERE GetDate()<DateValidTo OR GetDate()>DateValidFrom
UPDATE WidgetPrices SET Active='Y' WHERE GetDate()>DateValidFrom OR GetDate()<=DateValidFrom


GO
DENY EXECUTE ON  [dbo].[prcActivatePrices11] TO [public]
GO
