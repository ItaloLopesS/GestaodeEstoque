-- Mercadoria --
INSERT INTO mercadoria
    (descricao, valor_unitario, quantidade_estoque, validade, id_picking)
    VALUES ('Copo 150ml', 0.50, 100, '2030-01-01', 1);

INSERT INTO mercadoria
    (descricao, valor_unitario, quantidade_estoque, validade, id_picking)
    VALUES ('Copo 180ml', 0.60, 80, '2030-01-01', 2);

INSERT INTO mercadoria
    (descricao, valor_unitario, quantidade_estoque, validade, id_picking)
    VALUES ('Copo 250ml', 0.75, 50, '2030-01-01', 3);

INSERT INTO mercadoria
    (descricao, valor_unitario, quantidade_estoque, validade, id_picking)
    VALUES ('Copo 300ml', 0.80, 20, '2030-01-01', 4);

INSERT INTO mercadoria
    (descricao, valor_unitario, quantidade_estoque, validade, id_picking)
    VALUES ('Pote 250ml', 1.00, 90, '2030-01-01', 5);

INSERT INTO mercadoria
    (descricao, valor_unitario, quantidade_estoque, validade, id_picking)
    VALUES ('Pote 500ml', 1.25, 700, '2030-01-01', 6);

INSERT INTO mercadoria
    (descricao, valor_unitario, quantidade_estoque, validade, id_picking)
    VALUES ('Barra de Chocolate', 10.00, 20, '2026-06-15', 7);

INSERT INTO mercadoria
    (descricao, valor_unitario, quantidade_estoque, validade, id_picking)
    VALUES ('Barra de Chocolate Branco', 10.00, 15, '2026-09-01', 8);

SELECT id_picking
FROM mercadoria
WHERE id_picking NOT IN (SELECT id_picking FROM picking);