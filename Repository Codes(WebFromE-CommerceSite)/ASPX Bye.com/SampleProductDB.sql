Create Database SampleProductDb
go
use SampleProductDb
go
CREATE TABLE Category(
	ID bigint IDENTITY(1,1) NOT NULL primary key,
	ParentCatID bigint NULL,
	Name nvarchar(max) NULL,
	DisplayOrder int NULL,
	IsActive bit NULL
	)
go
CREATE TABLE Product(
	ID bigint IDENTITY(1,1) NOT NULL,
	CategoryID bigint NOT NULL,
	Brand nvarchar(max) NULL,
	Name nvarchar(max) NULL,
	Details nvarchar(max) NULL,
	Price float NULL,
	StockQuantity float NULL,
	IsFavorite bit NULL,
	IsActive bit NULL
	)
go
CREATE TABLE ProductImg(
	ID bigint IDENTITY(1,1) NOT NULL,
	ProductID bigint NOT NULL,
	ImgPath nvarchar(max) NULL,
	ThumbnailPath nvarchar(max) NULL,
	DisplayOrder int NULL,
	IsDefaultImg bit NULL,
	)