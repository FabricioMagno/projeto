-- Trigger para inserir automaticamente os dados de cadastro de um usuário quando um novo registro é inserido na tabela "Usuário":
DELIMITER //
CREATE TRIGGER tr_usuario_insert
BEFORE INSERT ON Usuario
FOR EACH ROW
BEGIN
    SET NEW.dt_cadastro = CURDATE();
END //
DELIMITER ;

-- Trigger para atualizar a quantidade de episódios de uma temporada automaticamente quando um novo episódio é inserido na tabela "Episodio":
DELIMITER //
CREATE TRIGGER tr_episodio_insert
AFTER INSERT ON Episodio
FOR EACH ROW
BEGIN
    UPDATE Temporada
    SET qtd_episodio = qtd_episodio + 1
    WHERE id_temporada = NEW.id_temporada;
END //
DELIMITER ;

 -- Trigger para atualizar a quantidade de episódios de uma temporada automaticamente quando um episódio é excluído da tabela "Episodio"
DELIMITER //
CREATE TRIGGER tr_episodio_delete
AFTER DELETE ON Episodio
FOR EACH ROW
BEGIN
    UPDATE Temporada
    SET qtd_episodio = qtd_episodio - 1
    WHERE id_temporada = OLD.id_temporada;
END //
DELIMITER ;

-- Trigger para atualizar a média de avaliação de um filme automaticamente quando uma nova avaliação é inserida na tabela "Catálogo":
DELIMITER //
CREATE TRIGGER tr_catalogo_insert
AFTER INSERT ON Catalogo
FOR EACH ROW
BEGIN
    DECLARE total_avaliacoes FLOAT;
    DECLARE qtd_avaliacoes INT;
    SELECT SUM(avaliacao), COUNT(*) INTO total_avaliacoes, qtd_avaliacoes
    FROM Catalogo
    WHERE id_filme = NEW.id_filme;

    UPDATE Filme
    SET avaliacao = total_avaliacoes / qtd_avaliacoes
    WHERE id_filme = NEW.id_filme;
END //
DELIMITER ;

-- Trigger para inserir a data de cadastro do usuário quando um novo registro for adicionado à tabela "Usuário":
DELIMITER //
CREATE TRIGGER insere_data_cadastro_usuario
BEFORE INSERT ON Usuario
FOR EACH ROW
BEGIN
    SET NEW.dt_cadastro = CURDATE();
END//
DELIMITER ;

-- Trigger para calcular a média de avaliação de um catálogo sempre que uma nova avaliação for adicionada à tabela "Catálogo":
DELIMITER //
CREATE TRIGGER calcula_media_avaliacao_catalogo
AFTER INSERT ON Avaliacao
FOR EACH ROW
BEGIN
    DECLARE media_avaliacao FLOAT;
    
    SELECT AVG(avaliacao) INTO media_avaliacao
    FROM Avaliacao
    WHERE id_catalogo = NEW.id_catalogo;
    
    UPDATE Catalogo
    SET avaliacao = media_avaliacao
    WHERE id_catalogo = NEW.id_catalogo;
END//
DELIMITER ;
-- Trigger para atualizar a quantidade de episódios de uma temporada sempre que um novo episódio for adicionado à tabela "Episódio":
DELIMITER //
CREATE TRIGGER atualiza_qtd_episodios_temporada
AFTER INSERT ON Episodio
FOR EACH ROW
BEGIN
    UPDATE Temporada
    SET qtd_episodio = qtd_episodio + 1
    WHERE id_temporada = NEW.id_temporada;
END//
DELIMITER ;

