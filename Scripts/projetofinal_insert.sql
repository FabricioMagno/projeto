INSERT INTO Pais (id_pais, nome, codigo) VALUES (1, 'Brasil', 'BR');
INSERT INTO Pais (id_pais, nome, codigo) VALUES (2, 'Estados Unidos', 'US');
INSERT INTO Pais (id_pais, nome, codigo) VALUES (3, 'Reino Unido', 'UK');
INSERT INTO Pais (id_pais, nome, codigo) VALUES (4, 'Canadá', 'CA');
INSERT INTO Pais (id_pais, nome, codigo) VALUES (5, 'Austrália', 'AU');

INSERT INTO Ator (id_ator, nome, sobrenome, foto, dt_nascimento) VALUES (1, 'Brad', 'Pitt', 'brad_pitt.jpg', '1963-12-18');
INSERT INTO Ator (id_ator, nome, sobrenome, foto, dt_nascimento) VALUES (2, 'Tom', 'Hanks', 'tom_hanks.jpg', '1956-07-09');
INSERT INTO Ator (id_ator, nome, sobrenome, foto, dt_nascimento) VALUES (3, 'Leonardo', 'DiCaprio', 'leonardo_dicaprio.jpg', '1974-11-11');
INSERT INTO Ator (id_ator, nome, sobrenome, foto, dt_nascimento) VALUES (4, 'Meryl', 'Streep', 'meryl_streep.jpg', '1949-06-22');
INSERT INTO Ator (id_ator, nome, sobrenome, foto, dt_nascimento) VALUES (5, 'Scarlett', 'Johansson', 'scarlett_johansson.jpg', '1984-11-22');

INSERT INTO Classificacao (id_classificacao, valor, idade, descricao) VALUES (1, 4.5, 16, 'Classificação para maiores de 16 anos');
INSERT INTO Classificacao (id_classificacao, valor, idade, descricao) VALUES (2, 3.8, 12, 'Classificação para maiores de 12 anos');
INSERT INTO Classificacao (id_classificacao, valor, idade, descricao) VALUES (3, 4.2, 18, 'Classificação para maiores de 18 anos');
INSERT INTO Classificacao (id_classificacao, valor, idade, descricao) VALUES (4, 3.5, 10, 'Classificação para maiores de 10 anos');
INSERT INTO Classificacao (id_classificacao, valor, idade, descricao) VALUES (5, 4.0, 14, 'Classificação para maiores de 14 anos');

INSERT INTO Idioma (id_idioma, nome, idioma) VALUES (1, 'Inglês', 'English');
INSERT INTO Idioma (id_idioma, nome, idioma) VALUES (2, 'Espanhol', 'Spanish');
INSERT INTO Idioma (id_idioma, nome, idioma) VALUES (3, 'Português', 'Portuguese');
INSERT INTO Idioma (id_idioma, nome, idioma) VALUES (4, 'Francês', 'French');
INSERT INTO Idioma (id_idioma, nome, idioma) VALUES (5, 'Alemão', 'German');

INSERT INTO Cartao_credito (id_cartao, numero, dt_vencimento, cod_seguranca, titular) VALUES (1, '1234567812345678', '2025-12-01', 123, 'João Silva');
INSERT INTO Cartao_credito (id_cartao, numero, dt_vencimento, cod_seguranca, titular) VALUES (2, '9876543298765432', '2024-08-01', 456, 'Maria Santos');
INSERT INTO Cartao_credito (id_cartao, numero, dt_vencimento, cod_seguranca, titular) VALUES (3, '5678906756789012', '2023-06-01', 789, 'Pedro Almeida');
INSERT INTO Cartao_credito (id_cartao, numero, dt_vencimento, cod_seguranca, titular) VALUES (4, '4321098743210987', '2026-02-01', 234, 'Ana Oliveira');
INSERT INTO Cartao_credito (id_cartao, numero, dt_vencimento, cod_seguranca, titular) VALUES (5, '8765432187654321', '2023-10-01', 567, 'Lucas Ferreira');

INSERT INTO Categoria (id_categoria, nome) VALUES (1, 'Ação');
INSERT INTO Categoria (id_categoria, nome) VALUES (2, 'Comédia');
INSERT INTO Categoria (id_categoria, nome) VALUES (3, 'Drama');
INSERT INTO Categoria (id_categoria, nome) VALUES (4, 'Romance');
INSERT INTO Categoria (id_categoria, nome) VALUES (5, 'Ficção Científica');

INSERT INTO Perfil (id_perfil, nome, foto) VALUES (1, 'Perfil 1', 'perfil1.jpg');
INSERT INTO Perfil (id_perfil, nome, foto) VALUES (2, 'Perfil 2', 'perfil2.jpg');
INSERT INTO Perfil (id_perfil, nome, foto) VALUES (3, 'Perfil 3', 'perfil3.jpg');
INSERT INTO Perfil (id_perfil, nome, foto) VALUES (4, 'Perfil 4', 'perfil4.jpg');
INSERT INTO Perfil (id_perfil, nome, foto) VALUES (5, 'Perfil 5', 'perfil5.jpg');

INSERT INTO Cliente (id_cliente, id_perfil, id_cartao) VALUES (1, 1, 1);
INSERT INTO Cliente (id_cliente, id_perfil, id_cartao) VALUES (2, 2, 2);
INSERT INTO Cliente (id_cliente, id_perfil, id_cartao) VALUES (3, 3, 3);
INSERT INTO Cliente (id_cliente, id_perfil, id_cartao) VALUES (4, 4, 4);
INSERT INTO Cliente (id_cliente, id_perfil, id_cartao) VALUES (5, 5, 5);

INSERT INTO Funcionario (id_funcionario, nivel_acesso, foto) VALUES (1, 'Administrador', 'admin.jpg');
INSERT INTO Funcionario (id_funcionario, nivel_acesso, foto) VALUES (2, 'Supervisor', 'supervisor.jpg');
INSERT INTO Funcionario (id_funcionario, nivel_acesso, foto) VALUES (3, 'Atendente', 'atendente.jpg');
INSERT INTO Funcionario (id_funcionario, nivel_acesso, foto) VALUES (4, 'Técnico', 'tecnico.jpg');
INSERT INTO Funcionario (id_funcionario, nivel_acesso, foto) VALUES (5, 'Analista', 'analista.jpg');

INSERT INTO Endereco (id_usuario, endereco, id_pais) VALUES (1, 'Rua A, 123', 1);
INSERT INTO Endereco (id_usuario, endereco, id_pais) VALUES (2, 'Avenida B, 456', 2);
INSERT INTO Endereco (id_usuario, endereco, id_pais) VALUES (3, 'Rua C, 789', 3);
INSERT INTO Endereco (id_usuario, endereco, id_pais) VALUES (4, 'Avenida D, 987', 4);
INSERT INTO Endereco (id_usuario, endereco, id_pais) VALUES (5, 'Rua E, 654', 5);

INSERT INTO Catalogo (id_catalogo, imagem_capa, idioma_original, duracao, ano_lancamento, pais_origem, titulo, avaliacao, idioma_disponivel, sinopse, qtd_episodio, oscar, id_ator, id_classificacao, id_idioma, id_filme, id_episodio, id_serie) VALUES (1, 'imagem1.jpg', 'Inglês', 120, 2022, 1, 'Filme 1', 4.5, 'Inglês, Português', 'Sinopse do filme 1', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO Catalogo (id_catalogo, imagem_capa, idioma_original, duracao, ano_lancamento, pais_origem, titulo, avaliacao, idioma_disponivel, sinopse, qtd_episodio, oscar, id_ator, id_classificacao, id_idioma, id_filme, id_episodio, id_serie) VALUES (2, 'imagem2.jpg', 'Espanhol', 90, 2021, 2, 'Filme 2', 3.8, 'Espanhol, Inglês', 'Sinopse do filme 2', NULL, NULL, 2, 2, NULL, NULL, NULL, NULL);
INSERT INTO Catalogo (id_catalogo, imagem_capa, idioma_original, duracao, ano_lancamento, pais_origem, titulo, avaliacao, idioma_disponivel, sinopse, qtd_episodio, oscar, id_ator, id_classificacao, id_idioma, id_filme, id_episodio, id_serie) VALUES (3, 'imagem3.jpg', 'Francês', 105, 2020, 3, 'Filme 3', 4.2, 'Francês, Inglês', 'Sinopse do filme 3', NULL, NULL, 3, 3, NULL, NULL, NULL, NULL);
INSERT INTO Catalogo (id_catalogo, imagem_capa, idioma_original, duracao, ano_lancamento, pais_origem, titulo, avaliacao, idioma_disponivel, sinopse, qtd_episodio, oscar, id_ator, id_classificacao, id_idioma, id_filme, id_episodio, id_serie) VALUES (4, 'imagem4.jpg', 'Inglês', 115, 2019, 1, 'Filme 4', 4.6, 'Inglês, Espanhol', 'Sinopse do filme 4', NULL, NULL, 4, 4, NULL, NULL, NULL, NULL);
INSERT INTO Catalogo (id_catalogo, imagem_capa, idioma_original, duracao, ano_lancamento, pais_origem, titulo, avaliacao, idioma_disponivel, sinopse, qtd_episodio, oscar, id_ator, id_classificacao, id_idioma, id_filme, id_episodio, id_serie) VALUES (5, 'imagem5.jpg', 'Português', 100, 2018, 4, 'Filme 5', 4.3, 'Português, Inglês', 'Sinopse do filme 5', NULL, NULL, 5, 5, NULL, NULL, NULL, NULL);

INSERT INTO Usuario (id_usuario, nome, sobrenome, dt_cadastro, dt_nascimento, status, id_cliente, id_funcionario) VALUES (1, 'João', 'Silva', '2023-06-01', '1990-05-10', 'Ativo', 1, NULL);
INSERT INTO Usuario (id_usuario, nome, sobrenome, dt_cadastro, dt_nascimento, status, id_cliente, id_funcionario) VALUES (2, 'Maria', 'Santos', '2023-06-02', '1995-09-15', 'Ativo', 2, NULL);
INSERT INTO Usuario (id_usuario, nome, sobrenome, dt_cadastro, dt_nascimento, status, id_cliente, id_funcionario) VALUES (3, 'Pedro', 'Ferreira', '2023-06-03', '1988-12-20', 'Ativo', 3, NULL);
INSERT INTO Usuario (id_usuario, nome, sobrenome, dt_cadastro, dt_nascimento, status, id_cliente, id_funcionario) VALUES (4, 'Ana', 'Lima', '2023-06-04', '1992-03-05', 'Ativo', 4, NULL);
INSERT INTO Usuario (id_usuario, nome, sobrenome, dt_cadastro, dt_nascimento, status, id_cliente, id_funcionario) VALUES (5, 'Lucas', 'Almeida', '2023-06-05', '1998-07-12', 'Ativo', 5, NULL);

INSERT INTO Temporada (id_temporada, titulo, descricao, id_serie, qtd_episodio) VALUES (1, 'Temporada 1', 'Primeira temporada da série', 1, 10);
INSERT INTO Temporada (id_temporada, titulo, descricao, id_serie, qtd_episodio) VALUES (2, 'Temporada 2', 'Segunda temporada da série', 1, 12);
INSERT INTO Temporada (id_temporada, titulo, descricao, id_serie, qtd_episodio) VALUES (3, 'Temporada 1', 'Primeira temporada da série', 2, 8);
INSERT INTO Temporada (id_temporada, titulo, descricao, id_serie, qtd_episodio) VALUES (4, 'Temporada 1', 'Primeira temporada da série', 3, 6);
INSERT INTO Temporada (id_temporada, titulo, descricao, id_serie, qtd_episodio) VALUES (5, 'Temporada 2', 'Segunda temporada da série', 3, 8);

INSERT INTO Episodio (id_episodio, id_temporada, id_serie, titulo, descricao) VALUES (1, 1, 1, 'Episódio 1', 'Primeiro episódio da temporada');
INSERT INTO Episodio (id_episodio, id_temporada, id_serie, titulo, descricao) VALUES (2, 1, 1, 'Episódio 2', 'Segundo episódio da temporada');
INSERT INTO Episodio (id_episodio, id_temporada, id_serie, titulo, descricao) VALUES (3, 1, 1, 'Episódio 3', 'Terceiro episódio da temporada');
INSERT INTO Episodio (id_episodio, id_temporada, id_serie, titulo, descricao) VALUES (4, 2, 1, 'Episódio 1', 'Primeiro episódio da segunda temporada');
INSERT INTO Episodio (id_episodio, id_temporada, id_serie, titulo, descricao) VALUES (5, 2, 1, 'Episódio 2', 'Segundo episódio da segunda temporada');

INSERT INTO Catalogo_categoria (id_catalogo, id_categoria) VALUES (1, 1);
INSERT INTO Catalogo_categoria (id_catalogo, id_categoria) VALUES (2, 2);
INSERT INTO Catalogo_categoria (id_catalogo, id_categoria) VALUES (3, 3);
INSERT INTO Catalogo_categoria (id_catalogo, id_categoria) VALUES (4, 4);
INSERT INTO Catalogo_categoria (id_catalogo, id_categoria) VALUES (5, 5);

INSERT INTO Serie (id_serie, qtd_episodio) VALUES (1, 10);
INSERT INTO Serie (id_serie, qtd_episodio) VALUES (2, 8);
INSERT INTO Serie (id_serie, qtd_episodio) VALUES (3, 12);
INSERT INTO Serie (id_serie, qtd_episodio) VALUES (4, 6);
INSERT INTO Serie (id_serie, qtd_episodio) VALUES (5, 15);

INSERT INTO Pagamento (id_pagamento, forma_pagamento, valor, dt_pagamento, id_cartao, id_cliente) VALUES (1, 'Cartão de Crédito', 100.50, '2023-06-14', 1, 1);
INSERT INTO Pagamento (id_pagamento, forma_pagamento, valor, dt_pagamento, id_cartao, id_cliente) VALUES (2, 'Boleto Bancário', 50.20, '2023-06-14', 2, 2);
INSERT INTO Pagamento (id_pagamento, forma_pagamento, valor, dt_pagamento, id_cartao, id_cliente) VALUES (3, 'PayPal', 75.80, '2023-06-14', 3, 3);
INSERT INTO Pagamento (id_pagamento, forma_pagamento, valor, dt_pagamento, id_cartao, id_cliente) VALUES (4, 'Transferência Bancária', 120.35, '2023-06-14', 4, 4);
INSERT INTO Pagamento (id_pagamento, forma_pagamento, valor, dt_pagamento, id_cartao, id_cliente) VALUES (5, 'Dinheiro', 90.90, '2023-06-14', 5, 5);

INSERT INTO Tipo_pagamento (id_pagamento, catalogo_id) VALUES (1, 1);
INSERT INTO Tipo_pagamento (id_pagamento, catalogo_id) VALUES (2, 2);
INSERT INTO Tipo_pagamento (id_pagamento, catalogo_id) VALUES (3, 3);
INSERT INTO Tipo_pagamento (id_pagamento, catalogo_id) VALUES (4, 4);
INSERT INTO Tipo_pagamento (id_pagamento, catalogo_id) VALUES (5, 5);

INSERT INTO Plano (id_plano, valor, id_idioma) VALUES (1, 9.99, 1);
INSERT INTO Plano (id_plano, valor, id_idioma) VALUES (2, 14.99, 2);
INSERT INTO Plano (id_plano, valor, id_idioma) VALUES (3, 19.99, 3);
INSERT INTO Plano (id_plano, valor, id_idioma) VALUES (4, 24.99, 1);
INSERT INTO Plano (id_plano, valor, id_idioma) VALUES (5, 29.99, 2);
