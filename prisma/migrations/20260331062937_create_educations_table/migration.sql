/*
  Warnings:

  - You are about to drop the column `create_at` on the `media` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `media` DROP COLUMN `create_at`,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3);

-- CreateTable
CREATE TABLE `educations` (
    `id` VARCHAR(191) NOT NULL,
    `profile_id` VARCHAR(191) NOT NULL,
    `university_name` VARCHAR(191) NOT NULL,
    `start_at` DATE NOT NULL,
    `end_at` DATE NULL,
    `is_graduated` BOOLEAN NOT NULL DEFAULT false,
    `fieldOfStudy` VARCHAR(191) NULL,
    `dorm` VARCHAR(191) NULL,
    `description` TEXT NULL,
    `activities_involved` JSON NOT NULL,
    `class_taken` JSON NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,
    `deleted_at` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `educations` ADD CONSTRAINT `educations_profile_id_fkey` FOREIGN KEY (`profile_id`) REFERENCES `profiles`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
