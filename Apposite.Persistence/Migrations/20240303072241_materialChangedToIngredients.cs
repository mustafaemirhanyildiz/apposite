using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Apposite.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class materialChangedToIngredients : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_RecipeIngredients_Materials_MaterialId",
                table: "RecipeIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserHealthIngredients_Materials_MaterialId",
                table: "UserHealthIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredients_Materials_MaterialId",
                table: "UserIngredients");

            migrationBuilder.DropTable(
                name: "Materials");

            migrationBuilder.CreateTable(
                name: "Ingredients",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    Description = table.Column<string>(type: "text", nullable: false),
                    Calories = table.Column<double>(type: "double precision", nullable: false),
                    Protein = table.Column<double>(type: "double precision", nullable: false),
                    Fat = table.Column<double>(type: "double precision", nullable: false),
                    Image = table.Column<byte[]>(type: "bytea", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true),
                    UpdatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true),
                    IsDeleted = table.Column<bool>(type: "boolean", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Ingredients", x => x.Id);
                });

            migrationBuilder.AddForeignKey(
                name: "FK_RecipeIngredients_Ingredients_MaterialId",
                table: "RecipeIngredients",
                column: "MaterialId",
                principalTable: "Ingredients",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserHealthIngredients_Ingredients_MaterialId",
                table: "UserHealthIngredients",
                column: "MaterialId",
                principalTable: "Ingredients",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredients_Ingredients_MaterialId",
                table: "UserIngredients",
                column: "MaterialId",
                principalTable: "Ingredients",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_RecipeIngredients_Ingredients_MaterialId",
                table: "RecipeIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserHealthIngredients_Ingredients_MaterialId",
                table: "UserHealthIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredients_Ingredients_MaterialId",
                table: "UserIngredients");

            migrationBuilder.DropTable(
                name: "Ingredients");

            migrationBuilder.CreateTable(
                name: "Materials",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Calories = table.Column<double>(type: "double precision", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true),
                    Description = table.Column<string>(type: "text", nullable: false),
                    Fat = table.Column<double>(type: "double precision", nullable: false),
                    Image = table.Column<byte[]>(type: "bytea", nullable: false),
                    IsDeleted = table.Column<bool>(type: "boolean", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    Protein = table.Column<double>(type: "double precision", nullable: false),
                    UpdatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Materials", x => x.Id);
                });

            migrationBuilder.AddForeignKey(
                name: "FK_RecipeIngredients_Materials_MaterialId",
                table: "RecipeIngredients",
                column: "MaterialId",
                principalTable: "Materials",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserHealthIngredients_Materials_MaterialId",
                table: "UserHealthIngredients",
                column: "MaterialId",
                principalTable: "Materials",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredients_Materials_MaterialId",
                table: "UserIngredients",
                column: "MaterialId",
                principalTable: "Materials",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
