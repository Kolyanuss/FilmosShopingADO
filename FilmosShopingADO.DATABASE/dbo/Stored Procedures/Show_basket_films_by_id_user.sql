﻿-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE Show_basket_films_by_id_user
	-- Add the parameters for the stored procedure here
	@id_user int = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Films.id, Films.name_film, Films.type_price_id From dbo.Basket_films, dbo.Films
	Where Basket_films.id_user = @id_user AND Basket_films.id_film = Films.id
END
