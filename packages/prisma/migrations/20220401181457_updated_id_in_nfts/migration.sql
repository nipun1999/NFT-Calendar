/*
  Warnings:

  - The primary key for the `nfts` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `nfts` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- DropIndex
DROP INDEX "nfts_id_key";

-- AlterTable
ALTER TABLE "nfts" DROP CONSTRAINT "nfts_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "nfts_pkey" PRIMARY KEY ("id");
