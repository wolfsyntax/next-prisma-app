-- CreateTable
CREATE TABLE `product_media` (
    `product_id` VARCHAR(191) NOT NULL,
    `media_id` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `product_media_product_id_media_id_key`(`product_id`, `media_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `product_media` ADD CONSTRAINT `product_media_product_id_fkey` FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_media` ADD CONSTRAINT `product_media_media_id_fkey` FOREIGN KEY (`media_id`) REFERENCES `media`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
