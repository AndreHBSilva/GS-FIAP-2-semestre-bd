/* 
    INTEGRANTES:
    ANDRÉ HUGO BASTOS DA SILVA - RM88588
    MATHEUS FERREIRA SANTANA - RM88241
    OSWALDO GOMES MOREIRA - RM88526
    THALES CASTELLANI - RM86692

*/

INSERT INTO TB_HL_USUARIO
VALUES (
    SQ_HL_USUARIO.NEXTVAL,
    'andrehugo.bs@gmail.com',
    '26.539.793/0001-05',
    '11 95465-8877',
    'senha29012000',
    'André Hugo Bastos da Silva',
    'JURIDICA',
    'DOADOR',
    'Jardim Rodolfo Pirani',
    'São Paulo',
    'São Paulo',
    '08310-300',
    '553',
    'Rua Cipriano do Brasil'
);

INSERT INTO TB_HL_USUARIO
VALUES (
    SQ_HL_USUARIO.NEXTVAL,
    'thalescastellani@gmail.com',
    '59.715.462/0001-38',
    '11 2445-2506',
    'senhadificildedescobrir1234',
    'Thales Castelani',
    'JURIDICA',
    'DOADOR',
    'Campo Belo',
    'São Paulo',
    'São Paulo',
    '04617-012',
    '553',
    'Rua Vieira de Morais'
);

INSERT INTO TB_HL_USUARIO
VALUES (
    SQ_HL_USUARIO.NEXTVAL,
    'matheusferreirasantana@gmail.com',
    '564.019.390-52',
    '11 95407-5260',
    'acerolamAgiKa4545',
    'Matheus Ferreira Santana',
    'FISICA',
    'CAPTADOR',
    'Vila Granada',
    'São Paulo',
    'São Paulo',
    '03654-130',
    '45',
    'Rua Egídio Coni'
);

INSERT INTO TB_HL_USUARIO
VALUES (
    SQ_HL_USUARIO.NEXTVAL,
    'oswaldogomesmoreira@gmail.com',
    '793.818.160-93',
    '11 2276-4589',
    'laranjamec4n1c4@@',
    'Oswaldo Gomes Moreira',
    'FISICA',
    'CAPTADOR',
    'Morumbi',
    'São Paulo',
    'São Paulo',
    '05613-001',
    '45',
    'Avenida Comendador Adibo Ares'
);

INSERT INTO TB_HL_ALIMENTO
VALUES (
    SQ_HL_ALIMENTO.NEXTVAL,
    'Arroz Branco Camil 5kg',
    'KG'
);

INSERT INTO TB_HL_ALIMENTO
VALUES (
    SQ_HL_ALIMENTO.NEXTVAL,
    'Feijão Carioca Camil 1kg',
    'KG'
);

INSERT INTO TB_HL_ALIMENTO
VALUES (
    SQ_HL_ALIMENTO.NEXTVAL,
    'Óleo de Soja SOYA Garrafa 900ml',
    'ml'
);

INSERT INTO TB_HL_ALIMENTO
VALUES (
    SQ_HL_ALIMENTO.NEXTVAL,
    'Café Pilão Torrado e Moído Tradicional 500g',
    'g'
);

INSERT INTO TB_HL_ALIMENTO
VALUES (
    SQ_HL_ALIMENTO.NEXTVAL,
    'Macarrão Italiano Espaghetti N°5 BARRILLA 500g',
    'g'
);

INSERT INTO TB_HL_ALIMENTO
VALUES (
    SQ_HL_ALIMENTO.NEXTVAL,
    'Azeite de Oliva Extra Virgem Português Gallo 500ml',
    'ml'
);

INSERT INTO TB_HL_ALIMENTO
VALUES (
    SQ_HL_ALIMENTO.NEXTVAL,
    'Atum Sólido GOMES DA COSTA Lata 120g',
    'g'
);

INSERT INTO TB_HL_ALIMENTO
VALUES (
    SQ_HL_ALIMENTO.NEXTVAL,
    'Nuggets de Frango Crocante Sadia 300g',
    'g'
);

INSERT INTO TB_HL_ALIMENTO
VALUES (
    SQ_HL_ALIMENTO.NEXTVAL,
    'Farofa de Mandioca Pronta YOKI Pacote 500g',
    'g'
);

INSERT INTO TB_HL_DOACAO
VALUES (
    SQ_HL_DOACAO.NEXTVAL,
    1,
    1,
    TO_DATE('2021-11-16', 'yyyy/mm/dd')
);

INSERT INTO TB_HL_DOACAO
VALUES (
    SQ_HL_DOACAO.NEXTVAL,
    1,
    2,
    TO_DATE('2021-11-16', 'yyyy/mm/dd')
);

INSERT INTO TB_HL_DOACAO
VALUES (
    SQ_HL_DOACAO.NEXTVAL,
    1,
    3,
    TO_DATE('2021-11-16', 'yyyy/mm/dd')
);

INSERT INTO TB_HL_DOACAO
VALUES (
    SQ_HL_DOACAO.NEXTVAL,
    1,
    4,
    TO_DATE('2021-11-16', 'yyyy/mm/dd')
);

INSERT INTO TB_HL_DOACAO
VALUES (
    SQ_HL_DOACAO.NEXTVAL,
    2,
    5,
    TO_DATE('2021-11-17', 'yyyy/mm/dd')
);

INSERT INTO TB_HL_DOACAO
VALUES (
    SQ_HL_DOACAO.NEXTVAL,
    2,
    6,
    TO_DATE('2021-11-17', 'yyyy/mm/dd')
);

INSERT INTO TB_HL_DOACAO
VALUES (
    SQ_HL_DOACAO.NEXTVAL,
    2,
    7,
    TO_DATE('2021-11-17', 'yyyy/mm/dd')
);

INSERT INTO TB_HL_DOACAO
VALUES (
    SQ_HL_DOACAO.NEXTVAL,
    2,
    8,
    TO_DATE('2021-11-17', 'yyyy/mm/dd')
);

INSERT INTO TB_HL_ESTOQUE
VALUES (
    SQ_HL_ESTOQUE.NEXTVAL,
    1,
    50,
    TO_DATE('2020-08-10', 'yyyy/mm/dd'),
    TO_DATE('2022-08-12', 'yyyy/mm/dd'),
    '2/3'
);

INSERT INTO TB_HL_ESTOQUE
VALUES (
    SQ_HL_ESTOQUE.NEXTVAL,
    2,
    30,
    TO_DATE('2021-10-10', 'yyyy/mm/dd'),
    TO_DATE('2023-10-12', 'yyyy/mm/dd'),
    '1/3'
);

INSERT INTO TB_HL_ESTOQUE
VALUES (
    SQ_HL_ESTOQUE.NEXTVAL,
    3,
    15,
    TO_DATE('2019-10-10', 'yyyy/mm/dd'),
    TO_DATE('2022-04-12', 'yyyy/mm/dd'),
    '3/3'
);

INSERT INTO TB_HL_ESTOQUE
VALUES (
    SQ_HL_ESTOQUE.NEXTVAL,
    4,
    26,
    TO_DATE('2020-10-10', 'yyyy/mm/dd'),
    TO_DATE('2022-04-12', 'yyyy/mm/dd'),
    '3/3'
);

INSERT INTO TB_HL_ESTOQUE
VALUES (
    SQ_HL_ESTOQUE.NEXTVAL,
    5,
    6,
    TO_DATE('2021-05-14', 'yyyy/mm/dd'),
    TO_DATE('2023-05-25', 'yyyy/mm/dd'),    
    '1/3'
);

INSERT INTO TB_HL_ESTOQUE
VALUES (
    SQ_HL_ESTOQUE.NEXTVAL,
    6,
    10,
    TO_DATE('2021-07-10', 'yyyy/mm/dd'),
    TO_DATE('2023-07-12', 'yyyy/mm/dd'),
    '1/3'
);

INSERT INTO TB_HL_ESTOQUE
VALUES (
    SQ_HL_ESTOQUE.NEXTVAL,
    7,
    13,
    TO_DATE('2021-04-30', 'yyyy/mm/dd'),
    TO_DATE('2023-04-30', 'yyyy/mm/dd'),
    '1/3'
);

INSERT INTO TB_HL_ESTOQUE
VALUES (
    SQ_HL_ESTOQUE.NEXTVAL,
    8,
    5,
    TO_DATE('2021-03-10', 'yyyy/mm/dd'),
    TO_DATE('2022-12-12', 'yyyy/mm/dd'),
    '1/3'
);

INSERT INTO TB_HL_PEDIDO
VALUES (
    SQ_HL_PEDIDO.NEXTVAL,
    3,
    '4556DS72',
    TO_DATE('2021-11-19', 'yyyy/mm/dd'),
    'CONCLUIDO'
);

INSERT INTO TB_HL_PEDIDO
VALUES (
    SQ_HL_PEDIDO.NEXTVAL,
    3,
    '3569AS45',
    TO_DATE('2021-11-19', 'yyyy/mm/dd'),
    'CONCLUIDO'
);

INSERT INTO TB_HL_ITEM
VALUES (
    SQ_HL_ITEM.NEXTVAL,
    1,
    8,
    2
);

INSERT INTO TB_HL_ITEM
VALUES (
    SQ_HL_ITEM.NEXTVAL,
    1,
    4,
    9
);

INSERT INTO TB_HL_ITEM
VALUES (
    SQ_HL_ITEM.NEXTVAL,
    1,
    7,
    2
);

INSERT INTO TB_HL_ITEM
VALUES (
    SQ_HL_ITEM.NEXTVAL,
    2,
    8,
    1
);

INSERT INTO TB_HL_ITEM
VALUES (
    SQ_HL_ITEM.NEXTVAL,
    2,
    4,
    10
);

INSERT INTO TB_HL_ITEM
VALUES (
    SQ_HL_ITEM.NEXTVAL,
    2,
    7,
    1
);

INSERT INTO TB_HL_HISTORICO
VALUES (
    SQ_HL_HISTORICO.NEXTVAL,
    1,
    TO_DATE('2021/11/19 8:30:25', 'YYYY/MM/DD HH:MI:SS')
);

INSERT INTO TB_HL_HISTORICO
VALUES (
    SQ_HL_HISTORICO.NEXTVAL,
    2,
    TO_DATE('2021/11/19 11:40:10', 'YYYY/MM/DD HH:MI:SS')
);

UPDATE TB_HL_ESTOQUE
SET NR_QUANTIDADE = 2
WHERE CD_ALIMENTO = 8;

UPDATE TB_HL_ESTOQUE
SET NR_QUANTIDADE = 7
WHERE CD_ALIMENTO = 4;

UPDATE TB_HL_ESTOQUE
SET NR_QUANTIDADE = 10
WHERE CD_ALIMENTO = 7;

COMMIT;



