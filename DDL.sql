-- Generated by Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   at:        2021-11-15 20:55:18 BRST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



DROP TABLE tb_hl_alimento CASCADE CONSTRAINTS;

DROP TABLE tb_hl_doacao CASCADE CONSTRAINTS;

DROP TABLE tb_hl_endereco CASCADE CONSTRAINTS;

DROP TABLE tb_hl_estoque CASCADE CONSTRAINTS;

DROP TABLE tb_hl_historico CASCADE CONSTRAINTS;

DROP TABLE tb_hl_item CASCADE CONSTRAINTS;

DROP TABLE tb_hl_pedido CASCADE CONSTRAINTS;

DROP TABLE tb_hl_usuario CASCADE CONSTRAINTS;

CREATE TABLE tb_hl_alimento (
    cd_alimento  NUMBER(10) NOT NULL,
    ds_alimento  VARCHAR2(50 CHAR) NOT NULL,
    sg_unidade   CHAR(5 CHAR) NOT NULL
);

ALTER TABLE tb_hl_alimento ADD CONSTRAINT pk_hl_alimento PRIMARY KEY ( cd_alimento );

CREATE TABLE tb_hl_doacao (
    cd_doacao    NUMBER(10) NOT NULL,
    cd_usuario   NUMBER(10) NOT NULL,
    cd_alimento  NUMBER(10) NOT NULL,
    dt_doacao    DATE NOT NULL
);

ALTER TABLE tb_hl_doacao ADD CONSTRAINT pk_hl_doacao PRIMARY KEY ( cd_doacao );

CREATE TABLE tb_hl_endereco (
    cd_endereco    NUMBER(10) NOT NULL,
    cd_usuario     NUMBER(10) NOT NULL,
    nm_bairro      VARCHAR2(50 CHAR) NOT NULL,
    nm_cidade      VARCHAR2(50 CHAR) NOT NULL,
    nm_estado      VARCHAR2(50 CHAR) NOT NULL,
    nr_cep         NUMBER(8) NOT NULL,
    nr_logradouro  NUMBER(10) NOT NULL,
    ds_logradouro  VARCHAR2(100 CHAR) NOT NULL
);

ALTER TABLE tb_hl_endereco ADD CONSTRAINT pk_hl_endereco PRIMARY KEY ( cd_endereco );

CREATE TABLE tb_hl_estoque (
    cd_estoque     NUMBER(10) NOT NULL,
    cd_alimento    NUMBER(10) NOT NULL,
    nr_quantidade  NUMBER(10) NOT NULL,
    dt_fabricacao  DATE NOT NULL,
    dt_validacao   DATE NOT NULL,
    ds_shelflife   VARCHAR2(3 CHAR) NOT NULL
);

ALTER TABLE tb_hl_estoque ADD CONSTRAINT pk_hl_estoque PRIMARY KEY ( cd_estoque );

CREATE TABLE tb_hl_historico (
    cd_historico            NUMBER(10) NOT NULL,
    cd_pedido               NUMBER(10) NOT NULL,
    dt_encerramento_pedido  DATE NOT NULL
);

ALTER TABLE tb_hl_historico ADD CONSTRAINT pk_hl_historico PRIMARY KEY ( cd_historico );

CREATE TABLE tb_hl_item (
    cd_item        NUMBER(10) NOT NULL,
    cd_pedido      NUMBER(10) NOT NULL,
    cd_alimento    NUMBER(10) NOT NULL,
    nr_quantidade  NUMBER(10) NOT NULL
);

ALTER TABLE tb_hl_item ADD CONSTRAINT pk_hl_item PRIMARY KEY ( cd_item );

CREATE TABLE tb_hl_pedido (
    cd_pedido   NUMBER(10) NOT NULL,
    cd_usuario  NUMBER(10) NOT NULL,
    ds_token    VARCHAR2(10 CHAR) NOT NULL,
    dt_pedido   DATE NOT NULL,
    ds_status   VARCHAR2(20 CHAR) NOT NULL
);

ALTER TABLE tb_hl_pedido ADD CONSTRAINT pk_hl_pedido PRIMARY KEY ( cd_pedido );

ALTER TABLE tb_hl_pedido ADD CONSTRAINT un_hl_token_pedido UNIQUE ( ds_token );

CREATE TABLE tb_hl_usuario (
    cd_usuario   NUMBER(10) NOT NULL,
    ds_email     VARCHAR2(100 CHAR) NOT NULL,
    nr_cpf_cnpj  NUMBER(14) NOT NULL,
    nr_telefone  NUMBER(11) NOT NULL,
    ds_senha     VARCHAR2(100 CHAR) NOT NULL,
    nm_usuario   VARCHAR2(50 CHAR) NOT NULL,
    tp_pessoa    VARCHAR2(8 CHAR) NOT NULL,
    tp_cadastro  VARCHAR2(8 CHAR) NOT NULL
);

ALTER TABLE tb_hl_usuario
    ADD CONSTRAINT ck_hl_tel_usuario CHECK ( length(nr_telefone) >= 10 );

ALTER TABLE tb_hl_usuario
    ADD CONSTRAINT ck_hl_cpf_cnpj_usuario CHECK ( length(nr_cpf_cnpj) >= 11 );

ALTER TABLE tb_hl_usuario
    ADD CONSTRAINT ck_hl_tipo_pessoa CHECK ( tp_pessoa = 'FISICA'
                                             OR tp_pessoa = 'JURIDICA' );

ALTER TABLE tb_hl_usuario
    ADD CONSTRAINT ck_hl_tipo_cadastro CHECK ( tp_cadastro = 'DOADOR'
                                               OR tp_cadastro = 'CAPTADOR' );

ALTER TABLE tb_hl_usuario ADD CONSTRAINT pk_hl_usuario PRIMARY KEY ( cd_usuario );

ALTER TABLE tb_hl_usuario ADD CONSTRAINT un_hl_cpf_cnpj_usuario UNIQUE ( nr_cpf_cnpj );

ALTER TABLE tb_hl_usuario ADD CONSTRAINT un_hl_telefone_usuario UNIQUE ( nr_telefone );

ALTER TABLE tb_hl_usuario ADD CONSTRAINT un_hl_email_usuario UNIQUE ( ds_email );

ALTER TABLE tb_hl_doacao
    ADD CONSTRAINT fk_alimento_doacao FOREIGN KEY ( cd_alimento )
        REFERENCES tb_hl_alimento ( cd_alimento );

ALTER TABLE tb_hl_estoque
    ADD CONSTRAINT fk_hl_alimento_estoque FOREIGN KEY ( cd_alimento )
        REFERENCES tb_hl_alimento ( cd_alimento );

ALTER TABLE tb_hl_item
    ADD CONSTRAINT fk_hl_alimento_item FOREIGN KEY ( cd_alimento )
        REFERENCES tb_hl_alimento ( cd_alimento );

ALTER TABLE tb_hl_historico
    ADD CONSTRAINT fk_hl_pedido_historico FOREIGN KEY ( cd_pedido )
        REFERENCES tb_hl_pedido ( cd_pedido );

ALTER TABLE tb_hl_item
    ADD CONSTRAINT fk_hl_pedido_item FOREIGN KEY ( cd_pedido )
        REFERENCES tb_hl_pedido ( cd_pedido );

ALTER TABLE tb_hl_endereco
    ADD CONSTRAINT fk_hl_usuario_endereco FOREIGN KEY ( cd_usuario )
        REFERENCES tb_hl_usuario ( cd_usuario );

ALTER TABLE tb_hl_pedido
    ADD CONSTRAINT fk_hl_usuario_pedido FOREIGN KEY ( cd_usuario )
        REFERENCES tb_hl_usuario ( cd_usuario );

ALTER TABLE tb_hl_doacao
    ADD CONSTRAINT fk_usuario_doacao FOREIGN KEY ( cd_usuario )
        REFERENCES tb_hl_usuario ( cd_usuario );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             24
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0