using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Apposite.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class mediaFileTypeChanged : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MediaFile_RecipeStep_RecipeStepId",
                table: "MediaFile");

            migrationBuilder.DropForeignKey(
                name: "FK_Recipes_MediaFile_MediaFileId",
                table: "Recipes");

            migrationBuilder.DropPrimaryKey(
                name: "PK_MediaFile",
                table: "MediaFile");

            migrationBuilder.RenameTable(
                name: "MediaFile",
                newName: "MediaFiles");

            migrationBuilder.RenameIndex(
                name: "IX_MediaFile_RecipeStepId",
                table: "MediaFiles",
                newName: "IX_MediaFiles_RecipeStepId");

            migrationBuilder.AddColumn<string>(
                name: "MediaName",
                table: "MediaFiles",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddPrimaryKey(
                name: "PK_MediaFiles",
                table: "MediaFiles",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_MediaFiles_RecipeStep_RecipeStepId",
                table: "MediaFiles",
                column: "RecipeStepId",
                principalTable: "RecipeStep",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Recipes_MediaFiles_MediaFileId",
                table: "Recipes",
                column: "MediaFileId",
                principalTable: "MediaFiles",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MediaFiles_RecipeStep_RecipeStepId",
                table: "MediaFiles");

            migrationBuilder.DropForeignKey(
                name: "FK_Recipes_MediaFiles_MediaFileId",
                table: "Recipes");

            migrationBuilder.DropPrimaryKey(
                name: "PK_MediaFiles",
                table: "MediaFiles");

            migrationBuilder.DropColumn(
                name: "MediaName",
                table: "MediaFiles");

            migrationBuilder.RenameTable(
                name: "MediaFiles",
                newName: "MediaFile");

            migrationBuilder.RenameIndex(
                name: "IX_MediaFiles_RecipeStepId",
                table: "MediaFile",
                newName: "IX_MediaFile_RecipeStepId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_MediaFile",
                table: "MediaFile",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_MediaFile_RecipeStep_RecipeStepId",
                table: "MediaFile",
                column: "RecipeStepId",
                principalTable: "RecipeStep",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Recipes_MediaFile_MediaFileId",
                table: "Recipes",
                column: "MediaFileId",
                principalTable: "MediaFile",
                principalColumn: "Id");
        }
    }
}
