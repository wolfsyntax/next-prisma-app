-- DropForeignKey
ALTER TABLE `media` DROP FOREIGN KEY `Media_profile_id_fkey`;

-- AlterTable
ALTER TABLE `profiles` ADD COLUMN `avatarMediaId` VARCHAR(191) NULL,
    ADD COLUMN `coverPhotoId` VARCHAR(191) NULL,
    MODIFY `bio` VARCHAR(191) NULL,
    MODIFY `location` VARCHAR(191) NULL,
    MODIFY `hometown` VARCHAR(191) NULL,
    MODIFY `last_accessed` DATETIME(3) NULL;

-- CreateTable
CREATE TABLE `contact_info` (
    `id` VARCHAR(191) NOT NULL,
    `contact` VARCHAR(191) NOT NULL,
    `type` ENUM('email', 'phone', 'whatsApp', 'viber') NOT NULL DEFAULT 'phone',
    `profile_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `contact_info` ADD CONSTRAINT `contact_info_profile_id_fkey` FOREIGN KEY (`profile_id`) REFERENCES `profiles`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `media` ADD CONSTRAINT `media_profile_id_fkey` FOREIGN KEY (`profile_id`) REFERENCES `profiles`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `profiles` ADD CONSTRAINT `profiles_avatarMediaId_fkey` FOREIGN KEY (`avatarMediaId`) REFERENCES `media`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `profiles` ADD CONSTRAINT `profiles_coverPhotoId_fkey` FOREIGN KEY (`coverPhotoId`) REFERENCES `media`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
