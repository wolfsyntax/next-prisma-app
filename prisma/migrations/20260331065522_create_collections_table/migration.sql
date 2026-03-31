-- CreateTable
CREATE TABLE `collections` (
    `id` VARCHAR(191) NOT NULL,
    `profile_id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NULL,
    `type` ENUM('photo', 'video', 'song', 'document') NOT NULL DEFAULT 'photo',
    `is_public` BOOLEAN NOT NULL DEFAULT true,

    UNIQUE INDEX `collections_name_profile_id_key`(`name`, `profile_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `collections` ADD CONSTRAINT `collections_profile_id_fkey` FOREIGN KEY (`profile_id`) REFERENCES `profiles`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
