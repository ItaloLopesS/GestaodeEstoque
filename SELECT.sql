--- Enderecos das mercadorias --

SELECT 
    m.id_mercadoria,
    m.descricao,
    m.valor_unitario,
    m.quantidade_estoque,
    e.rua,
    e.predio,
    e.nivel,
    e.apto
FROM mercadoria m
JOIN picking p
    ON p.id_picking = m.id_picking
JOIN endereco e
    ON e.id_endereco = p.id_endereco;

-- movimentacao operador --

SELECT 
    mv.id_movimentacao,
    mv.tipo_movimentacao,
    op.descricao AS nome_operador,
    op.funcao
FROM movimentacao mv
JOIN operador op
    ON op.id_operador = mv.id_operador;

-- aereo movimentado --

SELECT 
    a.id_aereo,
    a.capacidade_peso,
    a.capacidade_cubagem,
    m.descricao AS mercadoria,
    m.quantidade_estoque
FROM aereo a
JOIN mercadoria m
    ON m.id_mercadoria = a.id_mercadoria;

-- mercadorias com estoque baixo --

SELECT 
    id_mercadoria,
    descricao,
    quantidade_estoque
FROM mercadoria
WHERE quantidade_estoque < 10;

-- Aereo_Mercadoria--

SELECT 
    m.id_mercadoria,
    m.descricao AS mercadoria,
    COUNT(a.id_aereo) AS total_aereos
FROM mercadoria m
LEFT JOIN aereo a
    ON a.id_mercadoria = m.id_mercadoria
GROUP BY 
    m.id_mercadoria,
    m.descricao
ORDER BY total_aereos DESC;