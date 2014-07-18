CREATE PROCEDURE ARRUMA_COPIA_FOTO (
    idinterno integer)
returns (
    script varchar(8192))
as
declare variable interno_id_interno integer;
declare variable interno_foto type of dm_foto;
declare variable interno_foto_perfil type of dm_foto;
declare variable interno_foto_tatuagem type of dm_foto;
declare variable interno_foto_sinais type of dm_foto;
declare variable interno_foto_sinais1 type of dm_foto;
declare variable interno_foto_sinais2 type of dm_foto;
declare variable interno_foto_sinais3 type of dm_foto;
declare variable interno_foto_sinais4 type of dm_foto;
begin

FOR
 SELECT
    ID_INTERNO,
    FOTO,
    FOTO_PERFIL,
    FOTO_TATUAGEM,
    FOTO_SINAIS,
    FOTO_SINAIS1,
    FOTO_SINAIS2,
    FOTO_SINAIS3,
    FOTO_SINAIS4
 FROM INTERNO
 WHERE ID_INTERNO = :IDINTERNO
 INTO :INTERNO_ID_INTERNO,
        :INTERNO_FOTO,
        :INTERNO_FOTO_PERFIL,
        :INTERNO_FOTO_TATUAGEM,
        :INTERNO_FOTO_SINAIS,
        :INTERNO_FOTO_SINAIS1,
        :INTERNO_FOTO_SINAIS2,
        :INTERNO_FOTO_SINAIS3,
        :INTERNO_FOTO_SINAIS4

        DO
        BEGIN
          SCRIPT = 'UPDATE INTERNO SET FOTO=:A,FOTO_PERFIL=:B, FOTO_TATUAGEM=:C, FOTO_SINAIS=:D, FOTO_SINAIS1=:E, FOTO_SINAIS2=:F, FOTO_SINAIS3=:G, FOTO_SINAIS4=:H   WHERE ID_INTERNO='||:INTERNO_ID_INTERNO;
        
          EXECUTE STATEMENT (:SCRIPT) (A := INTERNO_FOTO, B := interno_foto_perfil, C := INTERNO_FOTO_TATUAGEM, D := INTERNO_FOTO_SINAIS, E := INTERNO_FOTO_SINAIS1, F := INTERNO_FOTO_SINAIS2, G := INTERNO_FOTO_SINAIS3, H := INTERNO_FOTO_SINAIS4)
          ON EXTERNAL 'www.siapen.com.br:siapen'
          AS USER 'SINCRONIZADOR'
          PASSWORD 'albatroz';
          suspend;

        END


  /*
          SCRIPT = 'UPDATE INTERNO SET FOTO=:A,
          FOTO_PERFIL:B,
          FOTO_TATUAGEM=:C,
          FOTO_SINAIS=:D,
          FOTO_SINAIS1=:E,
          FOTO_SINAIS2=:F,
          FOTO_SINAIS3=:G,
          FOTO_SINAIS4=:H  WHERE ID_INTERNO='||:INTERNO_ID_INTERNO;
        
          EXECUTE STATEMENT (:SCRIPT) (A := :INTERNO_FOTO, B := :INTERNO_FOTO_PERFIL, C := :interno_foto_tatuagem,
          D := :interno_foto_sinais, E := :interno_foto_sinais1, F := :interno_foto_sinais2,
          G := :interno_foto_sinais3, H := :interno_foto_sinais4)
          ON EXTERNAL 'localhost:C:\SIAPEN\database\SIAPEN.FDB'
          AS USER 'SINCRONIZADOR'
          PASSWORD 'albatroz';


  Procedure Text */
end
