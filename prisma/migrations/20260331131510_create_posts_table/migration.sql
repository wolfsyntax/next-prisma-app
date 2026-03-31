-- CreateTable
CREATE TABLE `posts` (
    `id` VARCHAR(191) NOT NULL,
    `profile_id` VARCHAR(191) NULL,
    `community_id` VARCHAR(191) NULL,
    `content` TEXT NOT NULL,
    `type` ENUM('post', 'story', 'short') NOT NULL DEFAULT 'post',
    `status` ENUM('pending', 'approved', 'rejected') NOT NULL DEFAULT 'approved',
    `visibility` ENUM('Public', 'Friends', 'FriendsExcept', 'SpecificFriends', 'OnlyMe') NOT NULL DEFAULT 'Public',
    `exceptions` JSON NOT NULL,
    `allowed_users` JSON NOT NULL,
    `is_anonymous` BOOLEAN NOT NULL DEFAULT false,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,
    `deleted_at` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `posts` ADD CONSTRAINT `posts_profile_id_fkey` FOREIGN KEY (`profile_id`) REFERENCES `profiles`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `posts` ADD CONSTRAINT `posts_community_id_fkey` FOREIGN KEY (`community_id`) REFERENCES `communities`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
