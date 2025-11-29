-- Pick_Vazio --
DELETE FROM mercadoria
WHERE quantidade_estoque = 0;

-- Aereo_Vazio --
DELETE FROM aereo
WHERE id_mercadoria IS NULL;

-- Movimentacao --
DELETE FROM movimentacao
WHERE id_operador = 2;