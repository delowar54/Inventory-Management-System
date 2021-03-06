USE [master]
GO
/****** Object:  Database [InventoryMangement]    Script Date: 11/24/2020 10:36:10 PM ******/
CREATE DATABASE [InventoryMangement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InventoryMangement_Recovered', FILENAME = N'F:\Raha\Versity\Softwre\SD3\Inventory-Management-System\Database\InventoryMangement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InventoryMangement_Recovered_log', FILENAME = N'F:\Raha\Versity\Softwre\SD3\Inventory-Management-System\Database\InventoryMangement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [InventoryMangement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InventoryMangement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InventoryMangement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InventoryMangement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InventoryMangement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InventoryMangement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InventoryMangement] SET ARITHABORT OFF 
GO
ALTER DATABASE [InventoryMangement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InventoryMangement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InventoryMangement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InventoryMangement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InventoryMangement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InventoryMangement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InventoryMangement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InventoryMangement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InventoryMangement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InventoryMangement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InventoryMangement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InventoryMangement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InventoryMangement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InventoryMangement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InventoryMangement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InventoryMangement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InventoryMangement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InventoryMangement] SET RECOVERY FULL 
GO
ALTER DATABASE [InventoryMangement] SET  MULTI_USER 
GO
ALTER DATABASE [InventoryMangement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InventoryMangement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InventoryMangement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InventoryMangement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InventoryMangement] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'InventoryMangement', N'ON'
GO
ALTER DATABASE [InventoryMangement] SET QUERY_STORE = OFF
GO
USE [InventoryMangement]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[ProductDescription] [varchar](100) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase](
	[PurchaseId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SupplierId] [int] NULL,
	[Quantity] [int] NULL,
	[Others] [varchar](100) NULL,
 CONSTRAINT [PK_Purchase] PRIMARY KEY CLUSTERED 
(
	[PurchaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[SalesId] [int] IDENTITY(1,1) NOT NULL,
	[SalesProductName] [varchar](50) NOT NULL,
	[SalesCompanyName] [varchar](50) NOT NULL,
	[SalesQuantity] [int] NOT NULL,
	[SalesPrice] [int] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[SalesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](50) NULL,
	[TradeNo] [nvarchar](15) NULL,
	[MobileNo] [nvarchar](15) NULL,
	[Address] [varchar](100) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInf]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInf](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_UserInf] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sales] ADD  CONSTRAINT [DF_Sales_SalesQuantity]  DEFAULT ((0)) FOR [SalesQuantity]
GO
ALTER TABLE [dbo].[Sales] ADD  CONSTRAINT [DF_Sales_SalesPrice]  DEFAULT ((0)) FOR [SalesPrice]
GO
ALTER TABLE [dbo].[Purchase]  WITH CHECK ADD  CONSTRAINT [ FK_Purchase_Product1] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Purchase] CHECK CONSTRAINT [ FK_Purchase_Product1]
GO
ALTER TABLE [dbo].[Purchase]  WITH CHECK ADD  CONSTRAINT [ FK_Purchase_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[Purchase] CHECK CONSTRAINT [ FK_Purchase_Supplier]
GO
/****** Object:  StoredProcedure [dbo].[GroupByTotalStock]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[GroupByTotalStock]
as
begin
select Product.ProductName,Supplier.CompanyName, Sum(Purchase.Quantity) as total
from Product 
inner join Purchase on Product.ProductId = Purchase.ProductId
inner join Supplier on Purchase.SupplierId = Supplier.SupplierId
group by product.ProductName, Supplier.CompanyName
end
GO
/****** Object:  StoredProcedure [dbo].[ProductCreateOrUpdate]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ProductCreateOrUpdate]
@ProductId int,
@ProductName varchar(50),
@ProductDescription varchar(100)
AS
BEGIN
IF(@ProductId=0)
	BEGIN
	INSERT INTO Product(ProductName,ProductDescription)
	VALUES(@ProductName,@ProductDescription)
	END
ELSE
	BEGIN
	UPDATE Product
	SET
		ProductName=@ProductName,
		ProductDescription=@ProductDescription
	WHERE ProductId=@ProductId
	END
END
GO
/****** Object:  StoredProcedure [dbo].[ProductDeleteById]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ProductDeleteById]
@ProductId int
AS
	BEGIN
	DELETE FROM Product
	WHERE ProductId=@ProductId
	END
GO
/****** Object:  StoredProcedure [dbo].[ProductViewAll]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ProductViewAll]
AS
	BEGIN
	SELECT *
	FROM Product
	END
GO
/****** Object:  StoredProcedure [dbo].[ProductViewById]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ProductViewById]
@ProductId int
AS
	BEGIN
	SELECT *
	FROM Product
	WHERE ProductId=@ProductId
	END
GO
/****** Object:  StoredProcedure [dbo].[PurchaseCreateOrUpdate]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PurchaseCreateOrUpdate]
@PurchaseId int,
@ProductId int,
@SupplierId int,
@Quantity varchar(50),
@Others varchar(100)
AS
BEGIN
IF(@PurchaseId=0)
	BEGIN
	INSERT INTO Purchase(ProductId,SupplierId,Quantity,Others)
	VALUES(@ProductId,@SupplierId,@Quantity,@Others)
	END
ELSE
	BEGIN
	UPDATE Purchase
	SET
		ProductId=@ProductId,
		SupplierId=@SupplierId,
		Quantity= @Quantity,
		Others=@Others
	WHERE PurchaseId=@PurchaseId
	END
END
GO
/****** Object:  StoredProcedure [dbo].[PurchaseDeleteById]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[PurchaseDeleteById]
@PurchaseID int
As
Begin
delete from Purchase
where PurchaseId=@PurchaseID

End
GO
/****** Object:  StoredProcedure [dbo].[PurchaseViewById]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PurchaseViewById]
@PurchaseId int
AS
	BEGIN
	
	Select Purchase.PurchaseID,Product.ProductName,Supplier.CompanyName,Purchase.Quantity,Purchase.Others 
from Purchase 
LEFT JOIN Product on Product.ProductId = Purchase.ProductId
LEFT JOIN Supplier on Supplier.SupplierId = Purchase.SupplierId
Where PurchaseId = @PurchaseId

	END
GO
/****** Object:  StoredProcedure [dbo].[RetriveSearch]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[RetriveSearch]
@ProductName varchar
AS
	BEGIN
	
select Product.ProductName,Supplier.CompanyName, Sum(Purchase.Quantity) as total
from Product 
inner join Purchase on Product.ProductId = Purchase.ProductId
inner join Supplier on Purchase.SupplierId = Supplier.SupplierId

group by product.ProductName, Supplier.CompanyName
having ProductName=@ProductName
	END
GO
/****** Object:  StoredProcedure [dbo].[SupplierCreateOrUpdate]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SupplierCreateOrUpdate]
@SupplierId int,
@CompanyName varchar(50),
@TradeNo varchar(50),
@MobileNo varchar(50),
@Address varchar(100)
AS
BEGIN
IF(@SupplierId=0)
	BEGIN
	INSERT INTO Supplier(CompanyName,TradeNo,MobileNo,Address)
	VALUES(@CompanyName,@TradeNo,@MobileNo,@Address)
	END
ELSE
	BEGIN
	UPDATE Supplier
	SET
		CompanyName=@CompanyName,
		TradeNo=@TradeNo,
		MobileNo=@MobileNo,
		Address=@Address
	WHERE SupplierId=@SupplierId
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SupplierDeleteById]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SupplierDeleteById]
@SupplierId varchar
AS
	BEGIN
	DELETE FROM Supplier
	WHERE SupplierId=@SupplierId
	END
GO
/****** Object:  StoredProcedure [dbo].[SupplierViewAll]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[SupplierViewAll]
AS
	BEGIN
	SELECT *
	FROM Supplier
	END
GO
/****** Object:  StoredProcedure [dbo].[SupplierViewById]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[SupplierViewById]
@SupplierId int
AS
	BEGIN
	SELECT *
	FROM Supplier
	WHERE SupplierId=@SupplierId
	END
GO
/****** Object:  StoredProcedure [dbo].[ViewProductName]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[ViewProductName]

AS
	BEGIN
	SELECT product.ProductName
	FROM Purchase inner join Product 
	on Product.ProductId=Purchase.ProductId
	
	END
GO
/****** Object:  StoredProcedure [dbo].[ViewPurchaseGrid]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ViewPurchaseGrid]

As
Begin
Select Purchase.PurchaseID,Product.ProductName,Supplier.CompanyName,Purchase.Quantity,Purchase.Others 
from Supplier, Purchase 
LEFT JOIN Product on Product.ProductId = Purchase.ProductId
Where Supplier.SupplierId = Purchase.SupplierId

End
GO
/****** Object:  StoredProcedure [dbo].[ViewSupplierName]    Script Date: 11/24/2020 10:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROC [dbo].[ViewSupplierName]

AS
	BEGIN
	SELECT Supplier.CompanyName
	FROM Purchase inner join Supplier 
	on Supplier.SupplierId=Purchase.SupplierId
	
	END
GO
USE [master]
GO
ALTER DATABASE [InventoryMangement] SET  READ_WRITE 
GO
