-- CreateTable
CREATE TABLE `communities` (
    `id` VARCHAR(191) NOT NULL,
    `owner_id` VARCHAR(191) NULL,
    `cover_photo_id` VARCHAR(191) NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` TEXT NOT NULL,
    `privacy` ENUM('Public', 'Private', 'Secret') NOT NULL DEFAULT 'Public',
    `post_approval_request` BOOLEAN NOT NULL DEFAULT false,
    `allow_anonymous_post` BOOLEAN NOT NULL DEFAULT false,
    `join_request_approval` BOOLEAN NOT NULL DEFAULT false,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,
    `deleted_at` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `communities` ADD CONSTRAINT `communities_owner_id_fkey` FOREIGN KEY (`owner_id`) REFERENCES `profiles`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `communities` ADD CONSTRAINT `communities_cover_photo_id_fkey` FOREIGN KEY (`cover_photo_id`) REFERENCES `media`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
