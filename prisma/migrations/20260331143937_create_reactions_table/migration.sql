-- CreateTable
CREATE TABLE `reactions` (
    `profile_id` VARCHAR(191) NOT NULL,
    `reactable_id` VARCHAR(191) NOT NULL,
    `reactable_type` ENUM('post', 'comment', 'photo', 'video', 'song', 'document') NOT NULL DEFAULT 'post',
    `type` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `reactions_profile_id_reactable_id_key`(`profile_id`, `reactable_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `reactions` ADD CONSTRAINT `reactions_profile_id_fkey` FOREIGN KEY (`profile_id`) REFERENCES `profiles`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `reactions` ADD CONSTRAINT `reactions_type_fkey` FOREIGN KEY (`type`) REFERENCES `reaction_types`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
