CREATE DATABASE IF NOT EXISTS db_streamer1
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE db_streamer1;

CREATE TABLE Pais (
    id_pais INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    codigo VARCHAR(255) NOT NULL
);

CREATE TABLE Ator (
    id_ator INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    foto VARCHAR(255),
    dt_nascimento DATE
);

CREATE TABLE Classificacao (
    id_classificacao INT PRIMARY KEY,
    valor FLOAT,
    idade INT,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE Idioma (
    id_idioma INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idioma VARCHAR(255) NOT NULL
);

CREATE TABLE Cartao_credito (
    id_cartao INT PRIMARY KEY,
    numero VARCHAR(255) NOT NULL,
    dt_vencimento DATE NOT NULL,
    cod_seguranca INT NOT NULL,
    titular VARCHAR(255) NOT NULL
);

CREATE TABLE Serie (
    id_serie INT PRIMARY KEY,
    qtd_episodio INT
);

CREATE TABLE Filme (
    id_filme INT PRIMARY KEY,
    oscar VARCHAR(255),
    id_catalogo INT,
    id_categoria INT,
    CONSTRAINT fk_id_catalogo_filme FOREIGN KEY (id_catalogo) REFERENCES Catalogo (id_catalogo),
    CONSTRAINT fk_id_categoria_filme FOREIGN KEY (id_categoria) REFERENCES Categoria (id_categoria)
);

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE Perfil (
    id_perfil INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    foto VARCHAR(255)
);

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    id_perfil INT,
    id_cartao INT,
    CONSTRAINT fk_id_perfil FOREIGN KEY (id_perfil) REFERENCES Perfil (id_perfil),
    CONSTRAINT fk_id_cartao FOREIGN KEY (id_cartao) REFERENCES Cartao_credito (id_cartao)
);

CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY,
    nivel_acesso VARCHAR(255),
    foto VARCHAR(255)
);

CREATE TABLE Endereco (
    id_usuario INT PRIMARY KEY,
    endereco VARCHAR(255) NOT NULL,
    id_pais INT,
    CONSTRAINT fk_id_pais_endereco FOREIGN KEY (id_pais) REFERENCES Pais (id_pais)
);

CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    dt_cadastro DATE,
    dt_nascimento DATE,
    status VARCHAR(255),
    id_cliente INT,
    id_funcionario INT,
    CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente),
    CONSTRAINT fk_id_funcionario FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id_funcionario)
);

CREATE TABLE Temporada (
    id_temporada INT PRIMARY KEY,
    titulo VARCHAR(255),
    descricao TEXT,
    id_serie INT,
    qtd_episodio INT,
    CONSTRAINT fk_id_serie FOREIGN KEY (id_serie) REFERENCES Serie (id_serie)
);

CREATE TABLE Episodio (
    id_episodio INT PRIMARY KEY,
    id_temporada INT,
    id_serie INT,
    titulo VARCHAR(255),
    descricao TEXT,
    CONSTRAINT fk_id_temporada FOREIGN KEY (id_temporada) REFERENCES Temporada (id_temporada),
    CONSTRAINT fk_id_serie_episodio FOREIGN KEY (id_serie) REFERENCES Serie (id_serie)
);

CREATE TABLE Catalogo (
    id_catalogo INT PRIMARY KEY,
    imagem_capa VARCHAR(255),
    idioma_original VARCHAR(255),
    duracao INT,
    ano_lancamento INT,
    pais_origem INT,
    titulo VARCHAR(255) NOT NULL,
    avaliacao FLOAT,
    idioma_disponivel VARCHAR(255),
    sinopse TEXT,
    qtd_episodio INT,
    oscar VARCHAR(255),
    id_ator INT,
    id_classificacao INT,
    id_idioma INT,
    id_filme INT,
    id_episodio INT,
    id_serie INT,
    CONSTRAINT fk_id_pais FOREIGN KEY (pais_origem) REFERENCES Pais (id_pais),
    CONSTRAINT fk_id_ator FOREIGN KEY (id_ator) REFERENCES Ator (id_ator),
    CONSTRAINT fk_id_classificacao FOREIGN KEY (id_classificacao) REFERENCES Classificacao (id_classificacao),
    CONSTRAINT fk_id_idioma_catalogo FOREIGN KEY (id_idioma) REFERENCES Idioma (id_idioma),
    CONSTRAINT fk_id_episodio FOREIGN KEY (id_episodio) REFERENCES Episodio (id_episodio),
    CONSTRAINT fk_id_serie_catalogo FOREIGN KEY (id_serie) REFERENCES Serie (id_serie)
);

CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY,
    forma_pagamento VARCHAR(255),
    valor FLOAT,
    dt_pagamento DATE,
    id_cartao INT,
    id_cliente INT,
    CONSTRAINT fk_id_cartao_pagamento FOREIGN KEY (id_cartao) REFERENCES Cartao_credito (id_cartao),
    CONSTRAINT fk_id_cliente_pagamento FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente)
);

CREATE TABLE Catalogo_categoria (
    id_catalogo INT,
    id_categoria INT,
    PRIMARY KEY (id_catalogo, id_categoria),
    CONSTRAINT fk_id_catalogo_categoria FOREIGN KEY (id_catalogo) REFERENCES Catalogo (id_catalogo),
    CONSTRAINT fk_id_categoria FOREIGN KEY (id_categoria) REFERENCES Categoria (id_categoria)
);

CREATE TABLE Tipo_pagamento (
    id_pagamento INT,
    catalogo_id INT,
    PRIMARY KEY (id_pagamento, catalogo_id),
    CONSTRAINT fk_id_pagamento_tipo_pagamento FOREIGN KEY (id_pagamento) REFERENCES Pagamento (id_pagamento),
    CONSTRAINT fk_id_catalogo_tipo_pagamento FOREIGN KEY (catalogo_id) REFERENCES Catalogo (id_catalogo)
);

CREATE TABLE Plano (
    id_plano INT PRIMARY KEY,
    valor FLOAT,
    id_idioma INT,
    CONSTRAINT fk_id_idioma_plano FOREIGN KEY (id_idioma) REFERENCES Idioma (id_idioma)
);
