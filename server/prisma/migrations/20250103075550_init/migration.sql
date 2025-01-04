/*
  Warnings:

  - You are about to drop the column `stockQuality` on the `Products` table. All the data in the column will be lost.
  - The primary key for the `PurchaseSummary` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `purchaseSummary` on the `PurchaseSummary` table. All the data in the column will be lost.
  - The primary key for the `Sales` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `salesId` on the `Sales` table. All the data in the column will be lost.
  - Added the required column `stockQuantity` to the `Products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `purchaseSummaryId` to the `PurchaseSummary` table without a default value. This is not possible if the table is not empty.
  - Added the required column `saleId` to the `Sales` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Products" DROP COLUMN "stockQuality",
ADD COLUMN     "stockQuantity" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "PurchaseSummary" DROP CONSTRAINT "PurchaseSummary_pkey",
DROP COLUMN "purchaseSummary",
ADD COLUMN     "purchaseSummaryId" TEXT NOT NULL,
ADD CONSTRAINT "PurchaseSummary_pkey" PRIMARY KEY ("purchaseSummaryId");

-- AlterTable
ALTER TABLE "Sales" DROP CONSTRAINT "Sales_pkey",
DROP COLUMN "salesId",
ADD COLUMN     "saleId" TEXT NOT NULL,
ADD CONSTRAINT "Sales_pkey" PRIMARY KEY ("saleId");
