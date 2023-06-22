DELIMITER //

CREATE PROCEDURE inserir_cliente(
    IN nome VARCHAR(255),
    IN idade INT,
    IN email VARCHAR(255)
)
BEGIN
    INSERT INTO clientes (nome, idade, email) VALUES (nome, idade, email);
END //

DELIMITER ;

DELIMITER //

DELIMITER //

DELIMITER //

DELIMITER //

CREATE PROCEDURE atualizar_cliente(
    IN cliente_id INT,
    IN novo_perfil_id INT,
    IN novo_endereco VARCHAR(255),
    IN novo_telefone VARCHAR(255)
)
BEGIN
    UPDATE cliente
    SET perfil_id = novo_perfil_id,
        endereco = novo_endereco,
        telefone = novo_telefone
    WHERE id = cliente_id;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE deletar_cliente(
    IN cliente_id INT
)
BEGIN
    DELETE FROM cliente WHERE id = cliente_id;
END //

DELIMITER ;


CREATE PROCEDURE inserir_pais(
    IN nome VARCHAR(255),
    IN codigo_pais VARCHAR(10)
)
BEGIN
    INSERT INTO pais (nome, codigo_pais) VALUES (nome, codigo_pais);
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE atualizar_pais(
    IN pais_id INT,
    IN novo_nome VARCHAR(255),
    IN novo_codigo_pais VARCHAR(10)
)
BEGIN
    UPDATE pais
    SET nome = novo_nome,
        codigo_pais = novo_codigo_pais
    WHERE id = pais_id;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE deletar_pais(
    IN pais_id INT
)
BEGIN
    DELETE FROM pais WHERE id = pais_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE inserir_ator(
    IN nome VARCHAR(255),
    IN idade INT,
    IN sexo CHAR(1)
)
BEGIN
    INSERT INTO ator (nome, idade, sexo) VALUES (nome, idade, sexo);
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE atualizar_ator(
    IN ator_id INT,
    IN novo_nome VARCHAR(255),
    IN nova_idade INT,
    IN novo_sexo CHAR(1)
)
BEGIN
    UPDATE ator
    SET nome = novo_nome,
        idade = nova_idade,
        sexo = novo_sexo
    WHERE id = ator_id;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE deletar_ator(
    IN ator_id INT
)
BEGIN
    DELETE FROM ator WHERE id = ator_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE inserir_classificacao(
    IN descricao VARCHAR(255),
    IN idade_minima INT
)
BEGIN
    INSERT INTO classificacao (descricao, idade_minima) VALUES (descricao, idade_minima);
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE atualizar_classificacao(
    IN classificacao_id INT,
    IN nova_descricao VARCHAR(255),
    IN nova_idade_minima INT
)
BEGIN
    UPDATE classificacao
    SET descricao = nova_descricao,
        idade_minima = nova_idade_minima
    WHERE id = classificacao_id;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE deletar_classificacao(
    IN classificacao_id INT
)
BEGIN
    DELETE FROM classificacao WHERE id = classificacao_id;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE inserir_idioma(
    IN nome VARCHAR(255)
)
BEGIN
    INSERT INTO idioma (nome) VALUES (nome);
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE atualizar_idioma(
    IN idioma_id INT,
    IN novo_nome VARCHAR(255)
)
BEGIN
    UPDATE idioma
    SET nome = novo_nome
    WHERE id = idioma_id;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE deletar_idioma(
    IN idioma_id INT
)
BEGIN
    DELETE FROM idioma WHERE id = idioma_id;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE inserir_carta_credito(
    IN numero_carta_credito VARCHAR(255),
    IN valor DECIMAL(10,2),
    IN serie_id INT
)
BEGIN
    INSERT INTO carta_credito (numero, valor, serie_id) VALUES (numero_carta_credito, valor, serie_id);
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE atualizar_carta_credito(
    IN carta_credito_id INT,
    IN novo_numero_carta_credito VARCHAR(255),
    IN novo_valor DECIMAL(10,2),
    IN nova_serie_id INT
)
BEGIN
    UPDATE carta_credito
    SET numero = novo_numero_carta_credito,
        valor = novo_valor,
        serie_id = nova_serie_id
    WHERE id = carta_credito_id;
END //

DELIMITER ;
DELIMITER //

DELIMITER //

CREATE PROCEDURE deletar_carta_credito(
    IN carta_credito_id INT
)
BEGIN
    DELETE FROM carta_credito WHERE id = carta_credito_id;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE inserir_serie(
    IN nome_serie VARCHAR(255),
    IN data_inicio DATE,
    IN data_fim DATE
)
BEGIN
    INSERT INTO serie (nome, data_inicio, data_fim) VALUES (nome_serie, data_inicio, data_fim);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE atualizar_serie(
    IN serie_id INT,
    IN novo_nome_serie VARCHAR(255),
    IN nova_data_inicio DATE,
    IN nova_data_fim DATE
)
BEGIN
    UPDATE serie
    SET nome = novo_nome_serie,
        data_inicio = nova_data_inicio,
        data_fim = nova_data_fim
    WHERE id = serie_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_serie(
    IN serie_id INT
)
BEGIN
    DELETE FROM serie WHERE id = serie_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE inserir_filme(
    IN titulo VARCHAR(255),
    IN descricao TEXT,
    IN ano_lancamento YEAR,
    IN categoria_id INT
)
BEGIN
    INSERT INTO filme (titulo, descricao, ano_lancamento, categoria_id) VALUES (titulo, descricao, ano_lancamento, categoria_id);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE atualizar_filme(
    IN filme_id INT,
    IN novo_titulo VARCHAR(255),
    IN nova_descricao TEXT,
    IN novo_ano_lancamento YEAR,
    IN nova_categoria_id INT
)
BEGIN
    UPDATE filme
    SET titulo = novo_titulo,
        descricao = nova_descricao,
        ano_lancamento = novo_ano_lancamento,
        categoria_id = nova_categoria_id
    WHERE id = filme_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_filme(
    IN filme_id INT
)
BEGIN
    DELETE FROM filme WHERE id = filme_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE inserir_categoria(
    IN nome_categoria VARCHAR(255)
)
BEGIN
    INSERT INTO categoria (nome) VALUES (nome_categoria);
END //

DELIMITER ;

DELIMITER //

DELIMITER //

CREATE PROCEDURE atualizar_categoria(
    IN categoria_id INT,
    IN novo_nome_categoria VARCHAR(255)
)
BEGIN
    UPDATE categoria
    SET nome = novo_nome_categoria
    WHERE id = categoria_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_categoria(
    IN categoria_id INT
)
BEGIN
    DELETE FROM categoria WHERE id = categoria_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE inserir_perfil(
    IN nome VARCHAR(255),
    IN sobrenome VARCHAR(255),
    IN idade INT
)
BEGIN
    INSERT INTO perfil (nome, sobrenome, idade) VALUES (nome, sobrenome, idade);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE atualizar_perfil(
    IN perfil_id INT,
    IN novo_nome VARCHAR(255),
    IN novo_sobrenome VARCHAR(255),
    IN nova_idade INT
)
BEGIN
    UPDATE perfil
    SET nome = novo_nome,
        sobrenome = novo_sobrenome,
        idade = nova_idade
    WHERE id = perfil_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_perfil(
    IN perfil_id INT
)
BEGIN
    DELETE FROM perfil WHERE id = perfil_id;
END //

DELIMITER ;

DELIMITER //

DELIMITER //

CREATE PROCEDURE inserir_funcionario(
    IN perfil_id INT,
    IN salario DECIMAL(10, 2),
    IN cargo VARCHAR(255)
)
BEGIN
    INSERT INTO funcionario (perfil_id, salario, cargo) VALUES (perfil_id, salario, cargo);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE atualizar_funcionario(
    IN funcionario_id INT,
    IN novo_perfil_id INT,
    IN novo_salario DECIMAL(10, 2),
    IN novo_cargo VARCHAR(255)
)
BEGIN
    UPDATE funcionario
    SET perfil_id = novo_perfil_id,
        salario = novo_salario,
        cargo = novo_cargo
    WHERE id = funcionario_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_funcionario(
    IN funcionario_id INT
)
BEGIN
    DELETE FROM funcionario WHERE id = funcionario_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE inserir_endereco(
    IN rua VARCHAR(255),
    IN cidade VARCHAR(255),
    IN estado VARCHAR(255),
    IN cep VARCHAR(10)
)
BEGIN
    INSERT INTO endereco (rua, cidade, estado, cep) VALUES (rua, cidade, estado, cep);
END //

DELIMITER ;
	
    DELIMITER //

CREATE PROCEDURE atualizar_endereco(
    IN endereco_id INT,
    IN nova_rua VARCHAR(255),
    IN nova_cidade VARCHAR(255),
    IN novo_estado VARCHAR(255),
    IN novo_cep VARCHAR(10)
)
BEGIN
    UPDATE endereco
    SET rua = nova_rua,
        cidade = nova_cidade,
        estado = novo_estado,
        cep = novo_cep
    WHERE id = endereco_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_endereco(
    IN endereco_id INT
)
BEGIN
    DELETE FROM endereco WHERE id = endereco_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE inserir_usuario(
    IN nome VARCHAR(255),
    IN email VARCHAR(255),
    IN senha VARCHAR(255)
)
BEGIN
    INSERT INTO usuario (nome, email, senha) VALUES (nome, email, senha);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE atualizar_usuario(
    IN usuario_id INT,
    IN novo_nome VARCHAR(255),
    IN novo_email VARCHAR(255),
    IN nova_senha VARCHAR(255)
)
BEGIN
    UPDATE usuario
    SET nome = novo_nome,
        email = novo_email,
        senha = nova_senha
    WHERE id = usuario_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_usuario(
    IN usuario_id INT
)
BEGIN
    DELETE FROM usuario WHERE id = usuario_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE inserir_temporada(
    IN nome VARCHAR(255),
    IN descricao TEXT,
    IN data_inicio DATE,
    IN data_fim DATE
)
BEGIN
    INSERT INTO temporada (nome, descricao, data_inicio, data_fim) VALUES (nome, descricao, data_inicio, data_fim);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE atualizar_temporada(
    IN temporada_id INT,
    IN novo_nome VARCHAR(255),
    IN nova_descricao TEXT,
    IN nova_data_inicio DATE,
    IN nova_data_fim DATE
)
BEGIN
    UPDATE temporada
    SET nome = novo_nome,
        descricao = nova_descricao,
        data_inicio = nova_data_inicio,
        data_fim = nova_data_fim
    WHERE id = temporada_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_temporada(
    IN temporada_id INT
)
BEGIN
    DELETE FROM temporada WHERE id = temporada_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE inserir_episodio(
    IN titulo VARCHAR(255),
    IN duracao TIME,
    IN descricao TEXT,
    IN temporada_id INT
)
BEGIN
    INSERT INTO episodio (titulo, duracao, descricao, temporada_id) VALUES (titulo, duracao, descricao, temporada_id);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE atualizar_episodio(
    IN episodio_id INT,
    IN novo_titulo VARCHAR(255),
    IN nova_duracao TIME,
    IN nova_descricao TEXT,
    IN nova_temporada_id INT
)
BEGIN
    UPDATE episodio
    SET titulo = novo_titulo,
        duracao = nova_duracao,
        descricao = nova_descricao,
        temporada_id = nova_temporada_id
    WHERE id = episodio_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_episodio(
    IN episodio_id INT
)
BEGIN
    DELETE FROM episodio WHERE id = episodio_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE inserir_catalogo(
    IN titulo VARCHAR(255),
    IN descricao TEXT,
    IN data_lancamento DATE
)
BEGIN
    INSERT INTO catalogo (titulo, descricao, data_lancamento) VALUES (titulo, descricao, data_lancamento);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE atualizar_catalogo(
    IN catalogo_id INT,
    IN novo_titulo VARCHAR(255),
    IN nova_descricao TEXT,
    IN nova_data_lancamento DATE
)
BEGIN
    UPDATE catalogo
    SET titulo = novo_titulo,
        descricao = nova_descricao,
        data_lancamento = nova_data_lancamento
    WHERE id = catalogo_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_catalogo(
    IN catalogo_id INT
)
BEGIN
    DELETE FROM catalogo WHERE id = catalogo_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE inserir_pagamento(
    IN valor DECIMAL(10, 2),
    IN data_pagamento DATE,
    IN cliente_id INT
)
BEGIN
    INSERT INTO pagamento (valor, data_pagamento, cliente_id) VALUES (valor, data_pagamento, cliente_id);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE atualizar_pagamento(
    IN pagamento_id INT,
    IN novo_valor DECIMAL(10, 2),
    IN nova_data_pagamento DATE,
    IN novo_cliente_id INT
)
BEGIN
    UPDATE pagamento
    SET valor = novo_valor,
        data_pagamento = nova_data_pagamento,
        cliente_id = novo_cliente_id
    WHERE id = pagamento_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_pagamento(
    IN pagamento_id INT
)
BEGIN
    DELETE FROM pagamento WHERE id = pagamento_id;
END //

DELIMITER ;

CREATE PROCEDURE inserir_catalogo_categoria(
    IN catalogo_id INT,
    IN categoria_id INT
)
BEGIN
    INSERT INTO catalogo_categoria (catalogo_id, categoria_id) VALUES (catalogo_id, categoria_id);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE atualizar_catalogo_categoria(
    IN catalogo_categoria_id INT,
    IN novo_catalogo_id INT,
    IN nova_categoria_id INT
)
BEGIN
    UPDATE catalogo_categoria
    SET catalogo_id = novo_catalogo_id,
        categoria_id = nova_categoria_id
    WHERE id = catalogo_categoria_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_catalogo_categoria(
    IN catalogo_categoria_id INT
)
BEGIN
    DELETE FROM catalogo_categoria WHERE id = catalogo_categoria_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE inserir_tipo_pagamento(
    IN nome VARCHAR(255)
)
BEGIN
    INSERT INTO tipo_pagamento (nome) VALUES (nome);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE atualizar_tipo_pagamento(
    IN tipo_pagamento_id INT,
    IN novo_nome VARCHAR(255)
)
BEGIN
    UPDATE tipo_pagamento
    SET nome = novo_nome
    WHERE id = tipo_pagamento_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_tipo_pagamento(
    IN tipo_pagamento_id INT
)
BEGIN
    DELETE FROM tipo_pagamento WHERE id = tipo_pagamento_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE inserir_plano(
    IN nome VARCHAR(255),
    IN preco DECIMAL(10, 2),
    IN duracao_meses INT
)
BEGIN
    INSERT INTO plano (nome, preco, duracao_meses) VALUES (nome, preco, duracao_meses);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE atualizar_plano(
    IN plano_id INT,
    IN novo_nome VARCHAR(255),
    IN novo_preco DECIMAL(10, 2),
    IN nova_duracao_meses INT
)
BEGIN
    UPDATE plano
    SET nome = novo_nome,
        preco = novo_preco,
        duracao_meses = nova_duracao_meses
    WHERE id = plano_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deletar_plano(
    IN plano_id INT
)
BEGIN
    DELETE FROM plano WHERE id = plano_id;
END //

DELIMITER ;





