INSERT INTO louca (descricao, qntd_na_pia) VALUES ("talheres", 25);
INSERT INTO louca (descricao, qntd_na_pia) VALUES ("copos", 15);
INSERT INTO louca (descricao, qntd_na_pia) VALUES ("pratos", 25);

INSERT INTO lavar_louca (bem_feitor) VALUES ("mãe");
INSERT INTO lavar_louca (bem_feitor) VALUES ("filho_1");
INSERT INTO lavar_louca (bem_feitor) VALUES ("filho_2");

INSERT INTO lavado(id_lavar, id_louca, qntd) VALUES (1, 1, 15);
INSERT INTO lavado(id_lavar, id_louca, qntd) VALUES (2, 2, 10);
INSERT INTO lavado(id_lavar, id_louca, qntd) VALUES (3, 3, 10);