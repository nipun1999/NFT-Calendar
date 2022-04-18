-- CreateTable
CREATE TABLE "nfts" (
    "id" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "event" TEXT NOT NULL,
    "url" TEXT NOT NULL,

    CONSTRAINT "nfts_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "nfts_id_key" ON "nfts"("id");

-- AddForeignKey
ALTER TABLE "nfts" ADD CONSTRAINT "nfts_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- RenameIndex
ALTER INDEX "VerificationRequest.identifier_token_unique" RENAME TO "VerificationRequest_identifier_token_key";

-- RenameIndex
ALTER INDEX "VerificationRequest.token_unique" RENAME TO "VerificationRequest_token_key";
