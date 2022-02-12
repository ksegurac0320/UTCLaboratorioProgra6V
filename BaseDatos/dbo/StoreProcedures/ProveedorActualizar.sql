CREATE PROCEDURE [dbo].[ProveedorActualizar]
	@IdProveedor INT,
	@Identificacion VARCHAR(250),
	@Nombre VARCHAR(250),
	@PrimerApellido VARCHAR(250) ,
	@SegundoApellido VARCHAR(250) ,
	@Edad INT ,
	@FechaNacimiento DATETIME

AS
BEGIN
 SET NOCOUNT ON

 /*deinir una transaccion antes del inser*/
 BEGIN TRANSACTION TRASA

 BEGIN TRY

 UPDATE  dbo.Table1 SET
 
	Identificacion = @Identificacion,
	Nombre=@Nombre,
	PrimerApellido=@PrimerApellido, 
	SegundoApellido=@SegundoApellido,
	Edad=@Edad,
	FechaNacimiento=@FechaNacimiento
 
WHERE
	IdProveedor=@IdProveedor

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
