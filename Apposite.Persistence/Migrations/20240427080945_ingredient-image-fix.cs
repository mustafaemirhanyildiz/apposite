using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Apposite.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class ingredientimagefix : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Image",
                table: "Ingredients");

            migrationBuilder.AddColumn<Guid>(
                name: "MediaFileId",
                table: "Ingredients",
                type: "uuid",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Ingredients_MediaFileId",
                table: "Ingredients",
                column: "MediaFileId");

            migrationBuilder.AddForeignKey(
                name: "FK_Ingredients_MediaFiles_MediaFileId",
                table: "Ingredients",
                column: "MediaFileId",
                principalTable: "MediaFiles",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Ingredients_MediaFiles_MediaFileId",
                table: "Ingredients");

            migrationBuilder.DropIndex(
                name: "IX_Ingredients_MediaFileId",
                table: "Ingredients");

            migrationBuilder.DropColumn(
                name: "MediaFileId",
                table: "Ingredients");

            migrationBuilder.AddColumn<byte[]>(
                name: "Image",
                table: "Ingredients",
                type: "bytea",
                nullable: true);
        }
    }
}
