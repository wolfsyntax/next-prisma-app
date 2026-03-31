-- CreateTable
CREATE TABLE `shipments` (
    `id` VARCHAR(191) NOT NULL,
    `order_id` VARCHAR(191) NOT NULL,
    `courier_id` VARCHAR(191) NOT NULL,
    `tracking_number` VARCHAR(191) NOT NULL,
    `status` ENUM('pending', 'packed', 'picked-up', 'in-transit', 'out-for-delivery', 'delivered', 'failed-delivery', 'returned', 'cancelled') NOT NULL DEFAULT 'pending',
    `remark` VARCHAR(191) NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,
    `deleted_at` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `shipments` ADD CONSTRAINT `shipments_order_id_fkey` FOREIGN KEY (`order_id`) REFERENCES `orders`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `shipments` ADD CONSTRAINT `shipments_courier_id_fkey` FOREIGN KEY (`courier_id`) REFERENCES `logistics`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
