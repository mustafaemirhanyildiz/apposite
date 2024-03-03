using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Apposite.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class deneme : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_RecipeIngredient_Ingredient_IngredientId",
                table: "RecipeIngredient");

            migrationBuilder.DropForeignKey(
                name: "FK_RecipeIngredient_Recipe_RecipeId",
                table: "RecipeIngredient");

            migrationBuilder.DropForeignKey(
                name: "FK_UserCuisinePreference_CuisinePreference_CuisinePreferenceId",
                table: "UserCuisinePreference");

            migrationBuilder.DropForeignKey(
                name: "FK_UserCuisinePreference_User_UserId",
                table: "UserCuisinePreference");

            migrationBuilder.DropForeignKey(
                name: "FK_UserHealth_Health_HealthId",
                table: "UserHealth");

            migrationBuilder.DropForeignKey(
                name: "FK_UserHealth_User_UserId",
                table: "UserHealth");

            migrationBuilder.DropForeignKey(
                name: "FK_UserHealthIngredient_Ingredient_IngredientId",
                table: "UserHealthIngredient");

            migrationBuilder.DropForeignKey(
                name: "FK_UserHealthIngredient_User_UserId",
                table: "UserHealthIngredient");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredient_Ingredient_IngredientId",
                table: "UserIngredient");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredient_Recipe_RecipeId",
                table: "UserIngredient");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredient_User_UserId",
                table: "UserIngredient");

            migrationBuilder.DropPrimaryKey(
                name: "PK_UserIngredient",
                table: "UserIngredient");

            migrationBuilder.DropPrimaryKey(
                name: "PK_UserHealthIngredient",
                table: "UserHealthIngredient");

            migrationBuilder.DropPrimaryKey(
                name: "PK_UserHealth",
                table: "UserHealth");

            migrationBuilder.DropPrimaryKey(
                name: "PK_UserCuisinePreference",
                table: "UserCuisinePreference");

            migrationBuilder.DropPrimaryKey(
                name: "PK_RecipeIngredient",
                table: "RecipeIngredient");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Recipe",
                table: "Recipe");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Ingredient",
                table: "Ingredient");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Health",
                table: "Health");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CuisinePreference",
                table: "CuisinePreference");

            migrationBuilder.RenameTable(
                name: "UserIngredient",
                newName: "UserIngredients");

            migrationBuilder.RenameTable(
                name: "UserHealthIngredient",
                newName: "UserHealthIngredients");

            migrationBuilder.RenameTable(
                name: "UserHealth",
                newName: "UserHealths");

            migrationBuilder.RenameTable(
                name: "UserCuisinePreference",
                newName: "UserCuisinePreferences");

            migrationBuilder.RenameTable(
                name: "RecipeIngredient",
                newName: "RecipeIngredients");

            migrationBuilder.RenameTable(
                name: "Recipe",
                newName: "Recipes");

            migrationBuilder.RenameTable(
                name: "Ingredient",
                newName: "Ingredients");

            migrationBuilder.RenameTable(
                name: "Health",
                newName: "Healths");

            migrationBuilder.RenameTable(
                name: "CuisinePreference",
                newName: "CuisinePreferences");

            migrationBuilder.RenameIndex(
                name: "IX_UserIngredient_UserId",
                table: "UserIngredients",
                newName: "IX_UserIngredients_UserId");

            migrationBuilder.RenameIndex(
                name: "IX_UserIngredient_RecipeId",
                table: "UserIngredients",
                newName: "IX_UserIngredients_RecipeId");

            migrationBuilder.RenameIndex(
                name: "IX_UserIngredient_IngredientId",
                table: "UserIngredients",
                newName: "IX_UserIngredients_IngredientId");

            migrationBuilder.RenameIndex(
                name: "IX_UserHealthIngredient_UserId",
                table: "UserHealthIngredients",
                newName: "IX_UserHealthIngredients_UserId");

            migrationBuilder.RenameIndex(
                name: "IX_UserHealthIngredient_IngredientId",
                table: "UserHealthIngredients",
                newName: "IX_UserHealthIngredients_IngredientId");

            migrationBuilder.RenameIndex(
                name: "IX_UserHealth_UserId",
                table: "UserHealths",
                newName: "IX_UserHealths_UserId");

            migrationBuilder.RenameIndex(
                name: "IX_UserHealth_HealthId",
                table: "UserHealths",
                newName: "IX_UserHealths_HealthId");

            migrationBuilder.RenameIndex(
                name: "IX_UserCuisinePreference_UserId",
                table: "UserCuisinePreferences",
                newName: "IX_UserCuisinePreferences_UserId");

            migrationBuilder.RenameIndex(
                name: "IX_UserCuisinePreference_CuisinePreferenceId",
                table: "UserCuisinePreferences",
                newName: "IX_UserCuisinePreferences_CuisinePreferenceId");

            migrationBuilder.RenameIndex(
                name: "IX_RecipeIngredient_RecipeId",
                table: "RecipeIngredients",
                newName: "IX_RecipeIngredients_RecipeId");

            migrationBuilder.RenameIndex(
                name: "IX_RecipeIngredient_IngredientId",
                table: "RecipeIngredients",
                newName: "IX_RecipeIngredients_IngredientId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_UserIngredients",
                table: "UserIngredients",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_UserHealthIngredients",
                table: "UserHealthIngredients",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_UserHealths",
                table: "UserHealths",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_UserCuisinePreferences",
                table: "UserCuisinePreferences",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_RecipeIngredients",
                table: "RecipeIngredients",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Recipes",
                table: "Recipes",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Ingredients",
                table: "Ingredients",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Healths",
                table: "Healths",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CuisinePreferences",
                table: "CuisinePreferences",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_RecipeIngredients_Ingredients_IngredientId",
                table: "RecipeIngredients",
                column: "IngredientId",
                principalTable: "Ingredients",
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
                name: "FK_UserCuisinePreferences_CuisinePreferences_CuisinePreference~",
                table: "UserCuisinePreferences",
                column: "CuisinePreferenceId",
                principalTable: "CuisinePreferences",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserCuisinePreferences_User_UserId",
                table: "UserCuisinePreferences",
                column: "UserId",
                principalTable: "User",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserHealthIngredients_Ingredients_IngredientId",
                table: "UserHealthIngredients",
                column: "IngredientId",
                principalTable: "Ingredients",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserHealthIngredients_User_UserId",
                table: "UserHealthIngredients",
                column: "UserId",
                principalTable: "User",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserHealths_Healths_HealthId",
                table: "UserHealths",
                column: "HealthId",
                principalTable: "Healths",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserHealths_User_UserId",
                table: "UserHealths",
                column: "UserId",
                principalTable: "User",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredients_Ingredients_IngredientId",
                table: "UserIngredients",
                column: "IngredientId",
                principalTable: "Ingredients",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredients_Recipes_RecipeId",
                table: "UserIngredients",
                column: "RecipeId",
                principalTable: "Recipes",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredients_User_UserId",
                table: "UserIngredients",
                column: "UserId",
                principalTable: "User",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_RecipeIngredients_Ingredients_IngredientId",
                table: "RecipeIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_RecipeIngredients_Recipes_RecipeId",
                table: "RecipeIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserCuisinePreferences_CuisinePreferences_CuisinePreference~",
                table: "UserCuisinePreferences");

            migrationBuilder.DropForeignKey(
                name: "FK_UserCuisinePreferences_User_UserId",
                table: "UserCuisinePreferences");

            migrationBuilder.DropForeignKey(
                name: "FK_UserHealthIngredients_Ingredients_IngredientId",
                table: "UserHealthIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserHealthIngredients_User_UserId",
                table: "UserHealthIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserHealths_Healths_HealthId",
                table: "UserHealths");

            migrationBuilder.DropForeignKey(
                name: "FK_UserHealths_User_UserId",
                table: "UserHealths");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredients_Ingredients_IngredientId",
                table: "UserIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredients_Recipes_RecipeId",
                table: "UserIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_UserIngredients_User_UserId",
                table: "UserIngredients");

            migrationBuilder.DropPrimaryKey(
                name: "PK_UserIngredients",
                table: "UserIngredients");

            migrationBuilder.DropPrimaryKey(
                name: "PK_UserHealths",
                table: "UserHealths");

            migrationBuilder.DropPrimaryKey(
                name: "PK_UserHealthIngredients",
                table: "UserHealthIngredients");

            migrationBuilder.DropPrimaryKey(
                name: "PK_UserCuisinePreferences",
                table: "UserCuisinePreferences");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Recipes",
                table: "Recipes");

            migrationBuilder.DropPrimaryKey(
                name: "PK_RecipeIngredients",
                table: "RecipeIngredients");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Ingredients",
                table: "Ingredients");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Healths",
                table: "Healths");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CuisinePreferences",
                table: "CuisinePreferences");

            migrationBuilder.RenameTable(
                name: "UserIngredients",
                newName: "UserIngredient");

            migrationBuilder.RenameTable(
                name: "UserHealths",
                newName: "UserHealth");

            migrationBuilder.RenameTable(
                name: "UserHealthIngredients",
                newName: "UserHealthIngredient");

            migrationBuilder.RenameTable(
                name: "UserCuisinePreferences",
                newName: "UserCuisinePreference");

            migrationBuilder.RenameTable(
                name: "Recipes",
                newName: "Recipe");

            migrationBuilder.RenameTable(
                name: "RecipeIngredients",
                newName: "RecipeIngredient");

            migrationBuilder.RenameTable(
                name: "Ingredients",
                newName: "Ingredient");

            migrationBuilder.RenameTable(
                name: "Healths",
                newName: "Health");

            migrationBuilder.RenameTable(
                name: "CuisinePreferences",
                newName: "CuisinePreference");

            migrationBuilder.RenameIndex(
                name: "IX_UserIngredients_UserId",
                table: "UserIngredient",
                newName: "IX_UserIngredient_UserId");

            migrationBuilder.RenameIndex(
                name: "IX_UserIngredients_RecipeId",
                table: "UserIngredient",
                newName: "IX_UserIngredient_RecipeId");

            migrationBuilder.RenameIndex(
                name: "IX_UserIngredients_IngredientId",
                table: "UserIngredient",
                newName: "IX_UserIngredient_IngredientId");

            migrationBuilder.RenameIndex(
                name: "IX_UserHealths_UserId",
                table: "UserHealth",
                newName: "IX_UserHealth_UserId");

            migrationBuilder.RenameIndex(
                name: "IX_UserHealths_HealthId",
                table: "UserHealth",
                newName: "IX_UserHealth_HealthId");

            migrationBuilder.RenameIndex(
                name: "IX_UserHealthIngredients_UserId",
                table: "UserHealthIngredient",
                newName: "IX_UserHealthIngredient_UserId");

            migrationBuilder.RenameIndex(
                name: "IX_UserHealthIngredients_IngredientId",
                table: "UserHealthIngredient",
                newName: "IX_UserHealthIngredient_IngredientId");

            migrationBuilder.RenameIndex(
                name: "IX_UserCuisinePreferences_UserId",
                table: "UserCuisinePreference",
                newName: "IX_UserCuisinePreference_UserId");

            migrationBuilder.RenameIndex(
                name: "IX_UserCuisinePreferences_CuisinePreferenceId",
                table: "UserCuisinePreference",
                newName: "IX_UserCuisinePreference_CuisinePreferenceId");

            migrationBuilder.RenameIndex(
                name: "IX_RecipeIngredients_RecipeId",
                table: "RecipeIngredient",
                newName: "IX_RecipeIngredient_RecipeId");

            migrationBuilder.RenameIndex(
                name: "IX_RecipeIngredients_IngredientId",
                table: "RecipeIngredient",
                newName: "IX_RecipeIngredient_IngredientId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_UserIngredient",
                table: "UserIngredient",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_UserHealth",
                table: "UserHealth",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_UserHealthIngredient",
                table: "UserHealthIngredient",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_UserCuisinePreference",
                table: "UserCuisinePreference",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Recipe",
                table: "Recipe",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_RecipeIngredient",
                table: "RecipeIngredient",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Ingredient",
                table: "Ingredient",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Health",
                table: "Health",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CuisinePreference",
                table: "CuisinePreference",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_RecipeIngredient_Ingredient_IngredientId",
                table: "RecipeIngredient",
                column: "IngredientId",
                principalTable: "Ingredient",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_RecipeIngredient_Recipe_RecipeId",
                table: "RecipeIngredient",
                column: "RecipeId",
                principalTable: "Recipe",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserCuisinePreference_CuisinePreference_CuisinePreferenceId",
                table: "UserCuisinePreference",
                column: "CuisinePreferenceId",
                principalTable: "CuisinePreference",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserCuisinePreference_User_UserId",
                table: "UserCuisinePreference",
                column: "UserId",
                principalTable: "User",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserHealth_Health_HealthId",
                table: "UserHealth",
                column: "HealthId",
                principalTable: "Health",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserHealth_User_UserId",
                table: "UserHealth",
                column: "UserId",
                principalTable: "User",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserHealthIngredient_Ingredient_IngredientId",
                table: "UserHealthIngredient",
                column: "IngredientId",
                principalTable: "Ingredient",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserHealthIngredient_User_UserId",
                table: "UserHealthIngredient",
                column: "UserId",
                principalTable: "User",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredient_Ingredient_IngredientId",
                table: "UserIngredient",
                column: "IngredientId",
                principalTable: "Ingredient",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredient_Recipe_RecipeId",
                table: "UserIngredient",
                column: "RecipeId",
                principalTable: "Recipe",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_UserIngredient_User_UserId",
                table: "UserIngredient",
                column: "UserId",
                principalTable: "User",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
