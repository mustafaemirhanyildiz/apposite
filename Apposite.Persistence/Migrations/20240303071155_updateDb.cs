using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Apposite.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class updateDb : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CuisinePreferences_Users_UserId",
                table: "CuisinePreferences");

            migrationBuilder.DropIndex(
                name: "IX_CuisinePreferences_UserId",
                table: "CuisinePreferences");

            migrationBuilder.DropColumn(
                name: "DietaryRestrictions",
                table: "UserHealth");

            migrationBuilder.DropColumn(
                name: "HealthCondition",
                table: "UserHealth");

            migrationBuilder.DropColumn(
                name: "UserId",
                table: "CuisinePreferences");

            migrationBuilder.AddColumn<Guid>(
                name: "HealthId",
                table: "UserHealth",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateTable(
                name: "Health",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false),
                    Description = table.Column<string>(type: "text", nullable: true),
                    CreatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true),
                    UpdatedAt = table.Column<DateTime>(type: "timestamp without time zone", nullable: true),
                    IsDeleted = table.Column<bool>(type: "boolean", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Health", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_UserHealth_HealthId",
                table: "UserHealth",
                column: "HealthId");

            migrationBuilder.AddForeignKey(
                name: "FK_UserHealth_Health_HealthId",
                table: "UserHealth",
                column: "HealthId",
                principalTable: "Health",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_UserHealth_Health_HealthId",
                table: "UserHealth");

            migrationBuilder.DropTable(
                name: "Health");

            migrationBuilder.DropIndex(
                name: "IX_UserHealth_HealthId",
                table: "UserHealth");

            migrationBuilder.DropColumn(
                name: "HealthId",
                table: "UserHealth");

            migrationBuilder.AddColumn<string>(
                name: "DietaryRestrictions",
                table: "UserHealth",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "HealthCondition",
                table: "UserHealth",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<Guid>(
                name: "UserId",
                table: "CuisinePreferences",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateIndex(
                name: "IX_CuisinePreferences_UserId",
                table: "CuisinePreferences",
                column: "UserId");

            migrationBuilder.AddForeignKey(
                name: "FK_CuisinePreferences_Users_UserId",
                table: "CuisinePreferences",
                column: "UserId",
                principalTable: "Users",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
