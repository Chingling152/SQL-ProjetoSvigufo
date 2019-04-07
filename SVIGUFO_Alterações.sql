CREATE PROCEDURE AlterarTipoEvento @ID INT , @NOME VARCHAR(50)
AS
BEGIN
UPDATE TIPOS_EVENTOS SET NOME = @NOME WHERE ID = @ID;
END
GO

CREATE PROCEDURE AlterarUsuario @ID INT, @NOME VARCHAR(250), @EMAIL VARCHAR(250),@SENHA VARCHAR(250),@TIPO_USUARIO INT
AS
BEGIN
UPDATE USUARIOS SET NOME = @NOME, EMAIL = @EMAIL,SENHA = @SENHA , TIPO_USUARIO = @TIPO_USUARIO WHERE ID = @ID
END
GO

CREATE PROCEDURE AlterarInstituicao @ID INT , @RAZAO_SOCIAL VARCHAR(250),@CNPJ CHAR(14),@LOGRADOURO VARCHAR(300),@CEP CHAR(8),@UF CHAR(2),@CIDADE VARCHAR(250)
AS
BEGIN
UPDATE INSTITUICOES SET RAZAO_SOCIAL = @RAZAO_SOCIAL, CNPJ = @CNPJ , LOGRADOURO = @LOGRADOURO,CEP = @CEP,UF = @UF , CIDADE = @CIDADE WHERE ID = @ID;
END
GO

CREATE PROCEDURE AlterarEvento @ID INT, @NOME VARCHAR(250), @DESCRICAO TEXT,@DATA_EVENTO DATETIME , @ACESSO_LIVRE BIT,@ID_INSTITUICAO INT , @ID_TIPO_EVENTO INT
AS
BEGIN
UPDATE EVENTOS SET NOME = @NOME , DESCRICAO = @DESCRICAO ,DATA_EVENTO = @DATA_EVENTO , ACESSO_LIVRE = @ACESSO_LIVRE , ID_INSTITUICAO= @ID_INSTITUICAO  , ID_TIPO_EVENTO = @ID_TIPO_EVENTO WHERE ID = @ID;
END
GO

CREATE PROCEDURE AlterarConvite @ID INT, @ID_USARIO INT , @ID_EVENTO INT, @SITUACAO INT ,@PALESTRANTE BIT
AS
BEGIN
UPDATE CONVITES SET ID_USUARIO = @ID_USARIO , ID_EVENTO = @ID_EVENTO ,SITUACAO = @SITUACAO ,PALESTRANTE = @PALESTRANTE WHERE ID = @ID;
END
GO