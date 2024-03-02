using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Apposite.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class userHealthIngredients : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CuisinePreferences_Users_UserId1",
                table: "CuisinePreferences");

            migrationBuilder.DropForeignKey(
                name: "FK_RecipeIngredients_Material_MaterialId1",
                table: "RecipeIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_RecipeIngredients_Recipe_RecipeId1",
                table: "RecipeIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredients_Material_MaterialId1",
                table: "UserIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredients_Recipe_RecipeId",
                table: "UserIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredients_Users_UserId1",
                table: "UserIngredients");

            migrationBuilder.DropIndex(
                name: "IX_UserIngredients_MaterialId1",
                table: "UserIngredients");

            migrationBuilder.DropIndex(
                name: "IX_UserIngredients_UserId1",
                table: "UserIngredients");

            migrationBuilder.DropIndex(
                name: "IX_RecipeIngredients_MaterialId1",
                table: "RecipeIngredients");

            migrationBuilder.DropIndex(
                name: "IX_RecipeIngredients_RecipeId1",
                table: "RecipeIngredients");

            migrationBuilder.DropIndex(
                name: "IX_CuisinePreferences_UserId1",
                table: "CuisinePreferences");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Recipe",
                table: "Recipe");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Material",
                table: "Material");

            migrationBuilder.DropColumn(
                name: "MaterialId1",
                table: "UserIngredients");

            migrationBuilder.DropColumn(
                name: "UserId1",
                table: "UserIngredients");

            migrationBuilder.DropColumn(
                name: "MaterialId1",
                table: "RecipeIngredients");

            migrationBuilder.DropColumn(
                name: "RecipeId1",
                table: "RecipeIngredients");

            migrationBuilder.DropColumn(
                name: "UserId1",
                table: "CuisinePreferences");

            migrationBuilder.RenameTable(
                name: "Recipe",
                newName: "Recipes");

            migrationBuilder.RenameTable(
                name: "Material",
                newName: "Materials");

            migrationBuilder.AlterColumn<Guid>(
                name: "UserId",
                table: "UserIngredients",
                type: "uuid",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AlterColumn<Guid>(
                name: "MaterialId",
                table: "UserIngredients",
                type: "uuid",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AlterColumn<Guid>(
                name: "RecipeId",
                table: "RecipeIngredients",
                type: "uuid",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AlterColumn<Guid>(
                name: "MaterialId",
                table: "RecipeIngredients",
                type: "uuid",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AlterColumn<Guid>(
                name: "UserId",
                table: "CuisinePreferences",
                type: "uuid",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Recipes",
                table: "Recipes",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Materials",
                table: "Materials",
                column: "Id");

            migrationBuilder.CreateTable(
                name: "UserHealthIngredients",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    UserId = table.Column<Guid>(type: "uuid", nullable: false),
                    MaterialId = table.Column<Guid>(type: "uuid", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true),
                    UpdatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true),
                    IsDeleted = table.Column<bool>(type: "boolean", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserHealthIngredients", x => x.Id);
                    table.ForeignKey(
                        name: "FK_UserHealthIngredients_Materials_MaterialId",
                        column: x => x.MaterialId,
                        principalTable: "Materials",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_UserHealthIngredients_Users_UserId",
                        column: x => x.UserId,
                        principalTable: "Users",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_UserIngredients_MaterialId",
                table: "UserIngredients",
                column: "MaterialId");

            migrationBuilder.CreateIndex(
                name: "IX_UserIngredients_UserId",
                table: "UserIngredients",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_RecipeIngredients_MaterialId",
                table: "RecipeIngredients",
                column: "MaterialId");

            migrationBuilder.CreateIndex(
                name: "IX_RecipeIngredients_RecipeId",
                table: "RecipeIngredients",
                column: "RecipeId");

            migrationBuilder.CreateIndex(
                name: "IX_CuisinePreferences_UserId",
                table: "CuisinePreferences",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_UserHealthIngredients_MaterialId",
                table: "UserHealthIngredients",
                column: "MaterialId");

            migrationBuilder.CreateIndex(
                name: "IX_UserHealthIngredients_UserId",
                table: "UserHealthIngredients",
                column: "UserId");

            migrationBuilder.AddForeignKey(
                name: "FK_CuisinePreferences_Users_UserId",
                table: "CuisinePreferences",
                column: "UserId",
                principalTable: "Users",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_RecipeIngredients_Materials_MaterialId",
                table: "RecipeIngredients",
                column: "MaterialId",
                principalTable: "Materials",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_RecipeIngredients_Recipes_RecipeId",
                table: "RecipeIngredients",
                column: "RecipeId",
                principalTable: "Recipes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredients_Materials_MaterialId",
                table: "UserIngredients",
                column: "MaterialId",
                principalTable: "Materials",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredients_Recipes_RecipeId",
                table: "UserIngredients",
                column: "RecipeId",
                principalTable: "Recipes",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredients_Users_UserId",
                table: "UserIngredients",
                column: "UserId",
                principalTable: "Users",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CuisinePreferences_Users_UserId",
                table: "CuisinePreferences");

            migrationBuilder.DropForeignKey(
                name: "FK_RecipeIngredients_Materials_MaterialId",
                table: "RecipeIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_RecipeIngredients_Recipes_RecipeId",
                table: "RecipeIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredients_Materials_MaterialId",
                table: "UserIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredients_Recipes_RecipeId",
                table: "UserIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredients_Users_UserId",
                table: "UserIngredients");

            migrationBuilder.DropTable(
                name: "UserHealthIngredients");

            migrationBuilder.DropIndex(
                name: "IX_UserIngredients_MaterialId",
                table: "UserIngredients");

            migrationBuilder.DropIndex(
                name: "IX_UserIngredients_UserId",
                table: "UserIngredients");

            migrationBuilder.DropIndex(
                name: "IX_RecipeIngredients_MaterialId",
                table: "RecipeIngredients");

            migrationBuilder.DropIndex(
                name: "IX_RecipeIngredients_RecipeId",
                table: "RecipeIngredients");

            migrationBuilder.DropIndex(
                name: "IX_CuisinePreferences_UserId",
                table: "CuisinePreferences");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Recipes",
                table: "Recipes");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Materials",
                table: "Materials");

            migrationBuilder.RenameTable(
                name: "Recipes",
                newName: "Recipe");

            migrationBuilder.RenameTable(
                name: "Materials",
                newName: "Material");

            migrationBuilder.AlterColumn<int>(
                name: "UserId",
                table: "UserIngredients",
                type: "integer",
                nullable: false,
                oldClrType: typeof(Guid),
                oldType: "uuid");

            migrationBuilder.AlterColumn<int>(
                name: "MaterialId",
                table: "UserIngredients",
                type: "integer",
                nullable: false,
                oldClrType: typeof(Guid),
                oldType: "uuid");

            migrationBuilder.AddColumn<Guid>(
                name: "MaterialId1",
                table: "UserIngredients",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "UserId1",
                table: "UserIngredients",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AlterColumn<int>(
                name: "RecipeId",
                table: "RecipeIngredients",
                type: "integer",
                nullable: false,
                oldClrType: typeof(Guid),
                oldType: "uuid");

            migrationBuilder.AlterColumn<int>(
                name: "MaterialId",
                table: "RecipeIngredients",
                type: "integer",
                nullable: false,
                oldClrType: typeof(Guid),
                oldType: "uuid");

            migrationBuilder.AddColumn<Guid>(
                name: "MaterialId1",
                table: "RecipeIngredients",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "RecipeId1",
                table: "RecipeIngredients",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AlterColumn<int>(
                name: "UserId",
                table: "CuisinePreferences",
                type: "integer",
                nullable: false,
                oldClrType: typeof(Guid),
                oldType: "uuid");

            migrationBuilder.AddColumn<Guid>(
                name: "UserId1",
                table: "CuisinePreferences",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddPrimaryKey(
                name: "PK_Recipe",
                table: "Recipe",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Material",
                table: "Material",
                column: "Id");

            migrationBuilder.CreateIndex(
                name: "IX_UserIngredients_MaterialId1",
                table: "UserIngredients",
                column: "MaterialId1");

            migrationBuilder.CreateIndex(
                name: "IX_UserIngredients_UserId1",
                table: "UserIngredients",
                column: "UserId1");

            migrationBuilder.CreateIndex(
                name: "IX_RecipeIngredients_MaterialId1",
                table: "RecipeIngredients",
                column: "MaterialId1");

            migrationBuilder.CreateIndex(
                name: "IX_RecipeIngredients_RecipeId1",
                table: "RecipeIngredients",
                column: "RecipeId1");

            migrationBuilder.CreateIndex(
                name: "IX_CuisinePreferences_UserId1",
                table: "CuisinePreferences",
                column: "UserId1");

            migrationBuilder.AddForeignKey(
                name: "FK_CuisinePreferences_Users_UserId1",
                table: "CuisinePreferences",
                column: "UserId1",
                principalTable: "Users",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_RecipeIngredients_Material_MaterialId1",
                table: "RecipeIngredients",
                column: "MaterialId1",
                principalTable: "Material",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_RecipeIngredients_Recipe_RecipeId1",
                table: "RecipeIngredients",
                column: "RecipeId1",
                principalTable: "Recipe",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredients_Material_MaterialId1",
                table: "UserIngredients",
                column: "MaterialId1",
                principalTable: "Material",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredients_Recipe_RecipeId",
                table: "UserIngredients",
                column: "RecipeId",
                principalTable: "Recipe",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredients_Users_UserId1",
                table: "UserIngredients",
                column: "UserId1",
                principalTable: "Users",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
