-- CreateTable
CREATE TABLE `Media` (
    `id` VARCHAR(191) NOT NULL,
    `profile_id` VARCHAR(191) NOT NULL,
    `type` ENUM('photo', 'video', 'audio', 'document') NOT NULL,
    `category` ENUM('photos', 'videos', 'songs', 'events') NOT NULL,
    `file_path` VARCHAR(191) NULL,
    `thumbnail_path` VARCHAR(191) NULL,
    `duration` INTEGER NULL DEFAULT 0,
    `size` DECIMAL(65, 30) NULL DEFAULT 0,
    `visibility` ENUM('public', 'private', 'friends') NOT NULL,
    `create_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Media` ADD CONSTRAINT `media_profile_id_fkey` FOREIGN KEY (`profile_id`) REFERENCES `profiles`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
