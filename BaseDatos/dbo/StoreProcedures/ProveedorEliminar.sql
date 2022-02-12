﻿CREATE PROCEDURE [dbo].[ProveedorEliminar]
	@IdProveedor INT


AS
BEGIN
 SET NOCOUNT ON

 /*deinir una transaccion antes del inser*/
 BEGIN TRANSACTION TRASA

 BEGIN TRY

 DELETE FROM dbo.Table1 WHERE IdProveedor =@IdProveedor

 COMMIT TRANSACTION TRASA
 SELECT 0 AS CodeError, '' AS MsgError
 END TRY
 /**/
 /*NOS DEVUELVE UN ERROR*/
 BEGIN CATCH 
	SELECT
			ERROR_NUMBER() AS CodeError,
			ERROR_MESSAGE() AS MsgError

ROLLBACK TRANSACTION TASA

END CATCH


END
