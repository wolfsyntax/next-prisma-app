-- AddForeignKey
ALTER TABLE `stories` ADD CONSTRAINT `stories_media_id_fkey` FOREIGN KEY (`media_id`) REFERENCES `media`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
