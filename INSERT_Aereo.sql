-- Endereco_Aereo--

INSERT INTO endereco
    (rua, predio, nivel, apto)
    VALUES ('Rua 1', 1, 1, 0);
INSERT INTO endereco
    (rua, predio, nivel, apto)
    VALUES ('Rua 1', 1, 2, 0);

INSERT INTO endereco
    (rua, predio, nivel, apto)
    VALUES ('Rua 1', 2, 1, 0);
INSERT INTO endereco
    (rua, predio, nivel, apto)
    VALUES ('Rua 1', 2, 2, 0);

INSERT INTO endereco
    (rua, predio, nivel, apto)
    VALUES ('Rua 1', 3, 1, 0);
INSERT INTO endereco
    (rua, predio, nivel, apto)
    VALUES ('Rua 1', 3, 2, 0);

INSERT INTO endereco
    (rua, predio, nivel, apto)
    VALUES ('Rua 1', 4, 1, 0);
INSERT INTO endereco
    (rua, predio, nivel, apto)
    VALUES ('Rua 1', 4, 2, 0);


-- Aereo --

INSERT INTO aereo (capacidade_peso,capacidade_cubagem,quantidade_aereo,id_endereco,id_mercadoria)
    VALUES
    (100, 50, 10, 1, NULL),
    (100, 50, 10, 2, NULL),
    (100, 50, 10, 3, NULL),
    (100, 50, 10, 4, NULL),
    (100, 50, 10, 5, NULL),
    (100, 50, 10, 6, NULL),
    (100, 50, 10, 7, NULL),
    (100, 50, 10, 8, NULL);