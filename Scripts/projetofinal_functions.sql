-- Função para calcular a idade de uma pessoa com base em sua data de nascimento
DELIMITER //

CREATE FUNCTION calcular_idade(dt_nascimento DATE) RETURNS INT
BEGIN
    DECLARE idade INT;
    SET idade = YEAR(CURDATE()) - YEAR(dt_nascimento);
    IF MONTH(CURDATE()) < MONTH(dt_nascimento) THEN
        SET idade = idade - 1;
    ELSEIF MONTH(CURDATE()) = MONTH(dt_nascimento) AND DAY(CURDATE()) < DAY(dt_nascimento) THEN
        SET idade = idade - 1;
    END IF;
    RETURN idade;
END//

DELIMITER ;


DELIMITER //

CREATE FUNCTION calcular_media_avaliacao_por_idioma(id_idioma INT)
RETURNS FLOAT
BEGIN
    DECLARE media FLOAT;
    SELECT AVG(avaliacao) INTO media FROM Catalogo WHERE idioma_original = (SELECT nome FROM Idioma WHERE id_idioma = id_idioma) AND id_filme IS NOT NULL;
    RETURN media;
END //

DELIMITER ;

DELIMITER //

CREATE FUNCTION contar_temporadas(id_serie INT)
RETURNS INT
BEGIN
    DECLARE qtd_temporadas INT;
    SELECT COUNT(*) INTO qtd_temporadas FROM Temporada WHERE id_serie = id_serie;
    RETURN qtd_temporadas;
END //

DELIMITER ;

DELIMITER //

CREATE FUNCTION verificar_perfil_ativo(id_cliente INT)
RETURNS BOOLEAN
BEGIN
    DECLARE ativo BOOLEAN;
    SELECT COUNT(*) INTO ativo FROM Perfil WHERE id_perfil = (SELECT id_perfil FROM Cliente WHERE id_cliente = id_cliente);
    RETURN ativo > 0;
END //

DELIMITER ;

DELIMITER //

CREATE FUNCTION calcular_valor_total_pagamentos(id_cliente INT)
RETURNS FLOAT
BEGIN
    DECLARE valor_total FLOAT;
    SELECT SUM(valor) INTO valor_total FROM Pagamento WHERE id_cliente = id_cliente;
    RETURN valor_total;
END //

DELIMITER ;






