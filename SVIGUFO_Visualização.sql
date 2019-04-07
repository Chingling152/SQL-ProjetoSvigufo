CREATE VIEW VerEventos
AS
SELECT EV.ID 'EVENTO',EV.NOME AS 'NOME_EVENTO' ,EV.DESCRICAO AS 'DESCRICAO', EV.DATA_EVENTO AS 'DATA_EVENTO', EV.ACESSO_LIVRE AS 'ACESSO_LIVRE', EV.SITUACAO AS 'SITUACAO',
TE.ID AS 'TIPO_EVENTO', TE.NOME AS 'NOME_TIPO_EVENTO' ,
INS.ID AS 'INSTITUICAO',INS.NOME_FANTASIA AS 'NOME_INSTITUICAO',INS.LOGRADOURO AS 'LOCAL' ,INS.UF AS 'UF' ,INS.CIDADE AS 'CIDADE',INS.CEP AS 'CEP'
FROM EVENTOS AS EV
LEFT JOIN INSTITUICOES AS INS ON INS.ID = EV.ID_INSTITUICAO
LEFT JOIN TIPOS_EVENTOS AS TE ON TE.ID = EV.ID_TIPO_EVENTO ;
GO

CREATE VIEW VerConvites 
AS
SELECT CONV.ID AS 'ID',EV.DATA_EVENTO , CONV.SITUACAO AS 'SITUACAO',
US.ID AS 'ID_CONVIDADO' ,US.NOME AS 'CONVIDADO', CONV.PALESTRANTE AS 'PALESTRANTE',
EV.ID AS 'ID_EVENTO' ,EV.NOME AS 'EVENTO' , TE.ID AS 'ID_TIPO_EVENTO',TE.NOME AS 'TIPO_EVENTO',EV.DESCRICAO AS 'DESCRICAO', 
INS.ID AS 'INSTITUICAO',INS.NOME_FANTASIA AS 'NOME_INSTITUICAO',INS.LOGRADOURO AS 'LOCAL' ,INS.UF AS 'UF' ,INS.CIDADE AS 'CIDADE',INS.CEP AS 'CEP'

FROM CONVITES AS CONV
INNER JOIN USUARIOS			AS US ON US.ID = CONV.ID_USUARIO
INNER JOIN EVENTOS			AS EV ON EV.ID = CONV.ID_EVENTO
INNER JOIN INSTITUICOES		AS INS ON INS.ID = EV.ID_INSTITUICAO
INNER JOIN TIPOS_EVENTOS	AS TE ON TE.ID = EV.ID_TIPO_EVENTO;
GO

CREATE VIEW VerEventosOrdenados
AS
SELECT * FROM VerEventos ORDER BY DATA_EVENTO;
END
GO

CREATE VIEW VerEventosHoje
AS
SELECT * FROM VerEventos WHERE DAY(DATA_EVENTO) = DAY(GETDATE())ORDER BY DATA_EVENTO;
END
GO


