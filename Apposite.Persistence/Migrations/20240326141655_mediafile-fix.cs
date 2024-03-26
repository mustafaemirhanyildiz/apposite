using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Apposite.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class mediafilefix : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateIndex(
                name: "IX_RecipeStepMediaFiles_MediaFileId",
                table: "RecipeStepMediaFiles",
                column: "MediaFileId");

            migrationBuilder.CreateIndex(
                name: "IX_RecipeStepMediaFiles_RecipeStepId",
                table: "RecipeStepMediaFiles",
                column: "RecipeStepId");

            migrationBuilder.AddForeignKey(
                name: "FK_RecipeStepMediaFiles_MediaFiles_MediaFileId",
                table: "RecipeStepMediaFiles",
                column: "MediaFileId",
                principalTable: "MediaFiles",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_RecipeStepMediaFiles_RecipeSteps_RecipeStepId",
                table: "RecipeStepMediaFiles",
                column: "RecipeStepId",
                principalTable: "RecipeSteps",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_RecipeStepMediaFiles_MediaFiles_MediaFileId",
                table: "RecipeStepMediaFiles");

            migrationBuilder.DropForeignKey(
                name: "FK_RecipeStepMediaFiles_RecipeSteps_RecipeStepId",
                table: "RecipeStepMediaFiles");

            migrationBuilder.DropIndex(
                name: "IX_RecipeStepMediaFiles_MediaFileId",
                table: "RecipeStepMediaFiles");

            migrationBuilder.DropIndex(
                name: "IX_RecipeStepMediaFiles_RecipeStepId",
                table: "RecipeStepMediaFiles");
        }
    }
}
