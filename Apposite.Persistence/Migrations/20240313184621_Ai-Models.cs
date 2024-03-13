using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Apposite.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class AiModels : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "AiRecipes",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    UserId = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    Description = table.Column<string>(type: "text", nullable: false),
                    PreparationTime = table.Column<int>(type: "integer", nullable: false),
                    Servings = table.Column<int>(type: "integer", nullable: false),
                    Calories = table.Column<double>(type: "double precision", nullable: false),
                    Protein = table.Column<double>(type: "double precision", nullable: false),
                    Fat = table.Column<double>(type: "double precision", nullable: false),
                    Carbohydrates = table.Column<double>(type: "double precision", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true),
                    UpdatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true),
                    IsDeleted = table.Column<bool>(type: "boolean", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AiRecipes", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AiRecipes_User_UserId",
                        column: x => x.UserId,
                        principalTable: "User",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AiIngredients",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    AiRecipeId = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    Description = table.Column<string>(type: "text", nullable: false),
                    Calories = table.Column<double>(type: "double precision", nullable: false),
                    Protein = table.Column<double>(type: "double precision", nullable: false),
                    Fat = table.Column<double>(type: "double precision", nullable: false),
                    Carbohydrates = table.Column<double>(type: "double precision", nullable: false),
                    QuantityType = table.Column<string>(type: "text", nullable: false),
                    Quantity = table.Column<double>(type: "double precision", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true),
                    UpdatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true),
                    IsDeleted = table.Column<bool>(type: "boolean", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AiIngredients", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AiIngredients_AiRecipes_AiRecipeId",
                        column: x => x.AiRecipeId,
                        principalTable: "AiRecipes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AiInstructions",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    AiRecipeId = table.Column<Guid>(type: "uuid", nullable: false),
                    StepNumber = table.Column<int>(type: "integer", nullable: false),
                    Description = table.Column<string>(type: "text", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true),
                    UpdatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true),
                    IsDeleted = table.Column<bool>(type: "boolean", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AiInstructions", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AiInstructions_AiRecipes_AiRecipeId",
                        column: x => x.AiRecipeId,
                        principalTable: "AiRecipes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_AiIngredients_AiRecipeId",
                table: "AiIngredients",
                column: "AiRecipeId");

            migrationBuilder.CreateIndex(
                name: "IX_AiInstructions_AiRecipeId",
                table: "AiInstructions",
                column: "AiRecipeId");

            migrationBuilder.CreateIndex(
                name: "IX_AiRecipes_UserId",
                table: "AiRecipes",
                column: "UserId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "AiIngredients");

            migrationBuilder.DropTable(
                name: "AiInstructions");

            migrationBuilder.DropTable(
                name: "AiRecipes");
        }
    }
}
