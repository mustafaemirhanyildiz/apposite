using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Apposite.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class mediafilefix2 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MediaFiles_RecipeSteps_RecipeStepId",
                table: "MediaFiles");

            migrationBuilder.DropIndex(
                name: "IX_MediaFiles_RecipeStepId",
                table: "MediaFiles");

            migrationBuilder.DropColumn(
                name: "RecipeStepId",
                table: "MediaFiles");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<Guid>(
                name: "RecipeStepId",
                table: "MediaFiles",
                type: "uuid",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_MediaFiles_RecipeStepId",
                table: "MediaFiles",
                column: "RecipeStepId");

            migrationBuilder.AddForeignKey(
                name: "FK_MediaFiles_RecipeSteps_RecipeStepId",
                table: "MediaFiles",
                column: "RecipeStepId",
                principalTable: "RecipeSteps",
                principalColumn: "Id");
        }
    }
}
