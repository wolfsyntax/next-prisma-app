-- CreateTable
CREATE TABLE `reaction_types` (
    `id` VARCHAR(191) NOT NULL,
    `icon_path` VARCHAR(191) NOT NULL,
    `icon_type` ENUM('url', 'svg-code', 'svg-path') NOT NULL DEFAULT 'url',
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,
    `deleted_at` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
