# Inventory-Management-System
**Inventory Management System by ASP.NET and MSSQL**

This is a Inventory Management System. Here i am trying to develop some basic and important fields of Inventory Management System.
They are: 
- [x] Login
- [x] Products
- [x] Suppliers
- [x] Purchases
- [x] Stock Item
- [x] Sales

**How to use this project:** 
----- Nedd Tools: -----
1. Visual Studio
2. MS SQL Server 2019
-----------------------

----- Run Project: -----

- Attach InventoryMangement.mdf database MSSQL Database.
- find InventoryMangement.mdf Project folder,folder name Database

- Run Visual Studio
- Open project and Select and Open InventoryMangement.sln file. All of the files and folder will display your visual studio solution.
- If you can not access database file:
  - Edit connectionString from `App_Code->SQLCommand.cs` file and add `Data Source=Here SQL Server Name;initial Catalog=InventoryMangement;User ID=here SQL User ID;Password=Here User Password;` 
    In my case `Data Source=MASTER\SQLSERVER2019;initial Catalog=InventoryMangement;User ID=sa;Password=1234;`
- Login Username: `admin` Password: `123456`

**Thanks.**
