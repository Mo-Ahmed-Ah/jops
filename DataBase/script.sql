CREATE DATABASE IF NOT EXISTS `jobs`;
USE jobs;
CREATE TABLE IF NOT EXISTS `users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `frist_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `user_name` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `jobs` INT NULL DEFAULT 0,
  `complet_jobs` INT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  UNIQUE INDEX `userscol_UNIQUE` (`user_name` ASC) )
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `job_title` VARCHAR(45) NOT NULL,
  `jop_desc` TEXT NOT NULL,
  `user_id` INT NOT NULL,
  `jub_ststus` VARCHAR(45) NOT NULL DEFAULT 'new',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_jobs_users_idx` (`user_id` ASC),
  CONSTRAINT `fk_jobs_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;