-- AlterTable
ALTER TABLE `orders` ADD COLUMN `delivery_at` DATETIME(3) NULL,
    ADD COLUMN `notes` TEXT NULL;
