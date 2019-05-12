
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

-- PROCEDURE ALTERNATIVO

DELIMITER $
CREATE PROCEDURE registro (IN idusuario INT, IN entradai DATETIME, IN comment TEXT)
BEGIN
DECLARE entries INT DEFAULT NULL; 
DECLARE idreg INT DEFAULT NULL;
SET entries = (SELECT COUNT(id_registro) FROM registros WHERE entrada >= (entradai - INTERVAL 1 DAY) AND id_usuario = idusuario AND salida IS NULL
);

IF (entries) < 1 THEN
BEGIN
	INSERT INTO registros(entrada,comentario,id_usuario) VALUES (entradai,comment,idusuario);

END;

ELSE
BEGIN
	SET idreg = ( SELECT id_registro FROM registros WHERE entrada >= (entradai - INTERVAL 1 DAY) AND id_usuario = idusuario AND salida IS NULL );
	UPDATE registros SET salida = NOW() WHERE id_registro = idreg;
END;
END IF;

	SELECT u.nombre,u.apellido_paterno,u.apellido_materno, tu.tipoUsuario FROM usuario AS u, tipousuario AS tu WHERE u.tipo_usuario = tu.id_tipoUsuario AND u.id_usuario = idusuario; 

	

END $
DELIMITER ;
