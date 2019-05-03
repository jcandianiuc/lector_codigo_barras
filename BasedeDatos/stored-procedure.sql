
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE insertSelect 
	-- Add the parameters for the stored procedure here
	@idUsuario int(4) = nuLL,
	@entrada datetime,
	@salida datetime,
	@comentario varchar(50)
--	<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
--	<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


IF @idUsuario IS NOT NULL
BEGIN
	SELECT u.nombre, u.apellido, sexo.tipoSexo, tipou.tipoUsuario, registros.diaHoraEntrada AS Entrada , registros.diaHoraSalida AS Salida
		 FROM usuario u
			INNER JOIN sexo ON u.idSexo = sexo.idsexo 
			INNER JOIN tipoUsuario ON u.idTipoUsuario = tipou.idtipousuario 
			INNER JOIN registros ON registros.idUsuario = u.idusuario
			WHERE idusuario = @idUsuario;
END
ELSE
BEGIN
	
	INSERT INTO registros(diaHoraEntrada, diaHoraSalida, comentario) VALUES (@entrada, @salida, @comentario);
END
GO
