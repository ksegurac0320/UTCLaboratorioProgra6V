
-- =============================================
-- Author:        <Author,,Name>
-- Create date: <Create Date,,>
-- Description:    <devuelve el lsitado de proveedores,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProveedorObtener]
	@IdProveedor INT = NULL
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		IdProveedor,
		Nombre,
		PrimerApellido,
		SegundoApellido,
		Edad,
		FechaNacimiento

	FROM
		dbo.Table1 /*es igual a dbo.Proveedor*/
	WHERE
	(@IdProveedor IS NULL OR IdProveedor=@IdProveedor)
END