CREATE TABLE IF NOT EXISTS `Haberler` (
	`id` int NOT NULL,
	`baslik` varchar(255) NOT NULL DEFAULT '255',
	`icerik` text NOT NULL,
	`yazar_id` int NOT NULL,
	`tarih` datetime NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `Kullanici` (
	`kullanici_adi` varchar(255) NOT NULL DEFAULT '100',
	`id` int NOT NULL,
	`sifre` varchar(255) NOT NULL DEFAULT '255',
	`email` varchar(255) NOT NULL UNIQUE DEFAULT '150',
	`kayit_tarihi` datetime NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `Yorumlar` (
	`id` int NOT NULL,
	`haber_id` int NOT NULL,
	`kullanici_id` int NOT NULL,
	`yorum` text NOT NULL,
	`yorum_tarihi` datetime NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Haberler` ADD CONSTRAINT `Haberler_fk3` FOREIGN KEY (`yazar_id`) REFERENCES `Kullanici`(`id`);

ALTER TABLE `Yorumlar` ADD CONSTRAINT `Yorumlar_fk1` FOREIGN KEY (`haber_id`) REFERENCES `Haberler`(`id`);

ALTER TABLE `Yorumlar` ADD CONSTRAINT `Yorumlar_fk2` FOREIGN KEY (`kullanici_id`) REFERENCES `Kullanici`(`id`);