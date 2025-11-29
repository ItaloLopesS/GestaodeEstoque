-- Estoque --

UPDATE mercadoria
SET quantidade_estoque = quantidade_estoque + 50
WHERE descricao = 'Copo 150ml';

-- Funcao --

UPDATE operador
SET funcao = 'Empilhador'
WHERE descricao = 'Maria';

-- Picking --

UPDATE picking
SET capacidade = capacidade + 50
WHERE id_endereco IN (
    SELECT id_endereco
    FROM endereco
    WHERE predio = 1
);
