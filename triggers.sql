DELIMITER //
CREATE TRIGGER tgr_lavado_insert AFTER INSERT ON lavado
FOR EACH ROW
BEGIN
	UPDATE louca SET qntd_na_pia = qntd_na_pia - NEW.qntd
	WHERE id = NEW.id_louca;
END; //

DELIMITER //
CREATE TRIGGER tgr_lavado_delete AFTER DELETE ON lavado
FOR EACH ROW
BEGIN
	UPDATE louca SET qntd_na_pia = qntd_na_pia + OLD.qntd
WHERE id = OLD.id_louca;
END; //