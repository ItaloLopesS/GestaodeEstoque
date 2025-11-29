-- Operador --
CREATE TABLE operador (
    id_operador INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(50),
    funcao VARCHAR(30) NOT NULL
) ENGINE=InnoDB;

-- Endereco --
CREATE TABLE endereco (
    id_endereco INT PRIMARY KEY AUTO_INCREMENT,
    rua INT,
    predio INT,
    nivel INT,
    apto INT
) ENGINE=InnoDB;

-- Picking --
CREATE TABLE picking (
    id_picking INT PRIMARY KEY AUTO_INCREMENT,
    capacidade INT,
    quantidade_picking INT,
    id_endereco INT,
    FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco)
) ENGINE=InnoDB;

-- Mercadoria --
CREATE TABLE mercadoria (
    id_mercadoria INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(50),
    valor_unitario FLOAT,
    quantidade_estoque INT,
    validade DATE,
    id_picking INT,
    FOREIGN KEY (id_picking) REFERENCES picking(id_picking)
) ENGINE=InnoDB;

-- Aereo --
CREATE TABLE aereo (
    id_aereo INT PRIMARY KEY AUTO_INCREMENT,
    capacidade_peso INT,
    capacidade_cubagem INT,
    quantidade_aereo INT,
    id_endereco INT,
    id_mercadoria INT,
    FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco),
    FOREIGN KEY (id_mercadoria) REFERENCES mercadoria(id_mercadoria)
) ENGINE=InnoDB;

-- Movimentacao --
CREATE TABLE movimentacao (
    id_movimentacao INT PRIMARY KEY AUTO_INCREMENT,
    tipo_movimentacao VARCHAR(25),
    id_operador INT,
    id_aereo INT,
    id_picking INT,
    id_mercadoria INT,
    FOREIGN KEY (id_operador) REFERENCES operador(id_operador),
    FOREIGN KEY (id_aereo) REFERENCES aereo(id_aereo),
    FOREIGN KEY (id_picking) REFERENCES picking(id_picking),
    FOREIGN KEY (id_mercadoria) REFERENCES mercadoria(id_mercadoria)
) ENGINE=InnoDB;
