using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Apposite.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class cuisinePreferencesUpdate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "CuisineType",
                table: "CuisinePreferences",
                newName: "Name");

            migrationBuilder.AddColumn<string>(
                name: "Description",
                table: "CuisinePreferences",
                type: "text",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Description",
                table: "CuisinePreferences");

            migrationBuilder.RenameColumn(
                name: "Name",
                table: "CuisinePreferences",
                newName: "CuisineType");
        }
    }
}
