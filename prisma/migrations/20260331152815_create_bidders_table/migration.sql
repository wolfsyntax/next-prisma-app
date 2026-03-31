-- CreateTable
CREATE TABLE `bids` (
    `id` VARCHAR(191) NOT NULL,
    `bidder_id` VARCHAR(191) NOT NULL,
    `amount` DECIMAL(11, 2) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `bids` ADD CONSTRAINT `bids_bidder_id_fkey` FOREIGN KEY (`bidder_id`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
