--CREATE DATABASE PRJ
--USE PRJ
--1 CREATE TABLE

CREATE TABLE Category
(
	CategoryID int IDENTITY PRIMARY KEY,
	CatergoryName nvarchar(100)
)

CREATE TABLE [Product]
(
	ProductID int IDENTITY PRIMARY KEY,
	ProductName nvarchar(50),
	Price decimal(10,2),
	image varchar(1500),
	describe nvarchar(220),
	CategoryID int REFERENCES [dbo].[Category](CategoryID)
)

CREATE TABLE Permission
(
	RollID int IDENTITY PRIMARY KEY,
	RollName nvarchar(10)
)


CREATE TABLE [User]
(
	UserID int IDENTITY PRIMARY KEY,
	Username nvarchar(20),
	Password nvarchar(2000),
	Fullname nvarchar(50),
	Email nvarchar(50),
	Birthdate Date,
	Gender nvarchar(50),
	Address nvarchar(1500),
	RollID int REFERENCES [dbo].[Permission](RollID)
)


CREATE TABLE Payment
(
	PayID int IDENTITY PRIMARY KEY,
	PayName nvarchar(20)
)


CREATE TABLE [Order]
(
	OrderID int IDENTITY PRIMARY KEY,
	Address nvarchar(1500),
	total decimal(10,2),
	OrderDate DateTime,
	UserID int REFERENCES [dbo].[User](UserID),
	PayID int REFERENCES [dbo].[Payment](PayID)
)


CREATE TABLE OrderDetail
(
	DetailId int IDENTITY PRIMARY KEY,
	countProduct int,
	[status] int,
	OrderID int REFERENCES [dbo].[Order](OrderID),
	ProductID int REFERENCES [dbo].[Product](ProductID)
)

-- INSERT INTO VALUES
--insert values table CATEGORY
INSERT INTO [dbo].[Category]
           ([CatergoryName])
     VALUES
           ('Nike')
INSERT INTO [dbo].[Category]
           ([CatergoryName])
     VALUES
           ('Adidas')
INSERT INTO [dbo].[Category]
           ([CatergoryName])
     VALUES
           ('Puma')
INSERT INTO [dbo].[Category]
           ([CatergoryName])
     VALUES
           ('Vans')
INSERT INTO [dbo].[Category]
           ([CatergoryName])
     VALUES
           ('Converse')

--- insert values table PRODUCT
INSERT INTO [dbo].[Product] --1
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           (N'Nike Air Force 1'
           ,199
           ,'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/b7d9211c-26e7-431a-ac24-b0540fb3c00f/AIR+FORCE+1+%2707.png'
           ,'Comfortable'
           ,1)
INSERT INTO [dbo].[Product] --2
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Nike Revolution 6'
           ,229
           ,'https://static.nike.com/a/images/t_default/2a87e3da-58fd-4cdf-8b11-aee7501a8ac5/NIKE+REVOLUTION+6+NN.png'
           ,'Flexible'
           ,1)
INSERT INTO [dbo].[Product] --3
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Nike Dunk Low Retro Premium'
           ,299
           ,'https://static.nike.com/a/images/t_default/172e274c-b992-4deb-b886-b177514c751c/NIKE+DUNK+LOW+RETRO+PRM.png'
           ,'Trendy'
           ,1)
INSERT INTO [dbo].[Product] --4
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Nike Air Max Plus Premium'
           ,179
           ,'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/96d373e5-fe14-4ab8-8579-030e21713dcb/NIKE+AIR+MAX+PLUS+PRM.png'
           ,'Good'
           ,1)
INSERT INTO [dbo].[Product] --5
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Nike Air Force 1 Older'
           ,219
           ,'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/c924bcb3-4624-49d3-a76e-3cfb318f167a/AIR+FORCE+1+%28GS%29.png'
           ,'Stylish'
           ,1)
INSERT INTO [dbo].[Product] --10
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Nike Dunk Low Women'
           ,169
           ,'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/3ff2b05a-1070-41ea-ac43-d199c6cc875b/W+DUNK+LOW+NEXT+NATURE.png'
           ,'Good'
           ,1)
INSERT INTO [dbo].[Product] --6
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Adidas Response Super 3.0'
           ,219
           ,'https://assets.adidas.com/images/w_600,f_auto,q_auto/2fcb12007907475aa33cf7aa313d8b4e_9366/Giay_Response_Super_3.0_trang_IG0338_01_standard.jpg'
           ,'Comfortable '
           ,2)
INSERT INTO [dbo].[Product] --7
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Adidas RUNFALCON 3'
           ,179
           ,'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/2d2249871d004e4e91c0af34014a7c8f_9366/Giay_Runfalcon_3.0_trang_HQ3789_01_standard.jpg'
           ,'Flexible'
           ,2)
INSERT INTO [dbo].[Product] --8
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Adidas PUREBOOST 23'
           ,189
           ,'https://assets.adidas.com/images/w_600,f_auto,q_auto/97099eca461340b7942b23b2e4af4994_9366/Giay_Pureboost_23_Mau_xanh_da_troi_IF2373_01_standard.jpg'
           ,'Lightweight'
           ,2)
INSERT INTO [dbo].[Product] --9
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Adidas ULTRABOOST 1.0'
           ,209
           ,'https://assets.adidas.com/images/w_600,f_auto,q_auto/b167fd83945f414bbfdbf637efba5a01_9366/Giay_Ultraboost_1.0_trang_ID5879_01_00_standard.jpg'
           ,'Flexible'
           ,2)

INSERT INTO [dbo].[Product] --11
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Adidas Samba OG Cloud White Core Black'
           ,239
           ,'https://assets.adidas.com/images/w_600,f_auto,q_auto/b19389122c51434eb5bea8bf0117da35_9366/Giay_Samba_OG_trang_B75806_07_standard.jpg'
           ,'Trendy'
           ,2)
INSERT INTO [dbo].[Product] --12
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Adidas Stan Smith'
           ,199
           ,'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/36970c01ecaf4001abdfac0200dd4c06_9366/Giay_Stan_Smith_trang_FX7519_01_standard.jpg'
           ,'Beautiful'
           ,2)
INSERT INTO [dbo].[Product] --13
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Puma Palermo Leather'
           ,159
           ,'https://cdn.storims.com/api/v2/image/resize?path=https://storage.googleapis.com/storims_cdn/storims/uploads/a94787b78fecfadf5ea4c2b32ec1254f.jpeg&format=jpeg'
           ,'Sleek'
           ,3)
INSERT INTO [dbo].[Product] --14
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('RS-X Faded Daytona Sneakers'
           ,199
           ,'https://d141zx60z515qt.cloudfront.net/mp62586fb643/pr0da03/img0_800w.webp'
           ,'Supportive'
           ,3)
INSERT INTO [dbo].[Product] --15
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Puma Suede Classic'
           ,169
           ,'https://product.hstatic.net/200000581855/product/giay_puma_suede_croc_black_and_white_384852-015_7016e376600344ceb53fa2fed3b22e52_master.jpg'
           ,'Good'
           ,3)
INSERT INTO [dbo].[Product] --16
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Puma Cali Star'
           ,189
           ,'https://sneakerholicvietnam.vn/wp-content/uploads/2022/07/puma-cali-star-metallic-silver-380219-01.jpg'
           ,'Trendy'
           ,3)
INSERT INTO [dbo].[Product] --17
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Puma Future Rider'
           ,159
           ,'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/391927/01/sv01/fnd/DFA/fmt/png/Future-Rider-New-Core-Sneakers'
           ,'Durable '
           ,3)
INSERT INTO [dbo].[Product] --18
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Puma RS-X 3D'
           ,199
           ,'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2023/09/giay-the-thao-puma-rs-x-3d-low-cut-sneakers-390025-mau-den-ghi-650171fedb13d-13092023152534.jpg'
           ,'Beautiful'
           ,3)
INSERT INTO [dbo].[Product] --19
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Vans Old Skool'
           ,199
           ,'https://bizweb.dktcdn.net/thumb/1024x1024/100/140/774/products/vans-viet-nam-vans-vault-old-skool-lx-black-vn0a4p3xoiu.jpg'
           ,'Trendy'
           ,4)
INSERT INTO [dbo].[Product] --20
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Vans Sk8-Hi'
           ,219
           ,'https://bizweb.dktcdn.net/thumb/1024x1024/100/140/774/products/vans-sk8-hi-classic-black-white-vn000d5ib8c-1.jpg'
           ,'Sturdy'
           ,4)
INSERT INTO [dbo].[Product] --21
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Vans Authentic'
           ,179
           ,'https://product.hstatic.net/200000265619/product/vn000ee3blk-1_114cdb1db3ab455f9834cf1ac2771760_de93c3c8224b4b01802e8832e0a9ffdc_1024x1024.jpg'
           ,'Comfortable'
           ,4)
INSERT INTO [dbo].[Product] --22
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Vans UltraRange'
           ,119
           ,'https://bizweb.dktcdn.net/thumb/1024x1024/100/140/774/products/giay-vans-ultrarange-exo-ww-mte-1-navy-black-vn0005v9ngv-1.jpg?v=1726303827370'
           ,'Good'
           ,4)
INSERT INTO [dbo].[Product] --23
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Vans Slip-On Checkerboard'
           ,139
           ,'https://bizweb.dktcdn.net/100/140/774/products/vault-viet-nam-vans-vault-og-checkerboard-slip-on-lx-vn000udff8l.jpg?v=1626201177303'
           ,'Flexible'
           ,4)
INSERT INTO [dbo].[Product] --24
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Vans Half Cab'
           ,169
           ,'https://kcdcskateshop.com/cdn/shop/files/oe8ulh5moykh7kkmmqgs_2048x.jpg?v=1682542999'
           ,'Cushioned'
           ,4)
INSERT INTO [dbo].[Product] --25
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Converse Jack Purcell'
           ,169
           ,'https://bizweb.dktcdn.net/thumb/1024x1024/100/419/301/products/1642242.png?v=1614010081787'
           ,'Good'
           ,5)
INSERT INTO [dbo].[Product] --26
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Converse Chuck Taylor All Star'
           ,149
           ,'https://www.converse.vn/media/catalog/product/cache/ae7cee22ac1ff58c2794c87414f27b45/0/8/0882-CONM9160C00005H-1.jpg'
           ,'Comfortable'
           ,5)
INSERT INTO [dbo].[Product] --27
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Converse Chuck 70'
           ,219
           ,'https://www.converse.vn/media/catalog/product/0/8/0882-CONA00916C005003-1.jpg'
           ,'Beautiful'
           ,5)
INSERT INTO [dbo].[Product] --28
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Converse Pro Leather'
           ,179
           ,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP9irvEqtDNCyzRJTGJ9A2d0IWAHJfN-R9tw&s'
           ,'Lightweight'
           ,5)
INSERT INTO [dbo].[Product] --29
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Converse One Star'
           ,219
           ,'https://www.converse.vn/media/catalog/product/0/8/0882-CONA06426C00509H-1.jpg'
           ,'Trendy'
           ,5)
INSERT INTO [dbo].[Product] --30
           ([ProductName]
           ,[Price]
           ,[image]
           ,[describe]
           ,[CategoryID])
     VALUES
           ('Converse CX'
           ,199
           ,'https://product.hstatic.net/1000382698/product/a02410c-1_86bbe6d95f054d2dac546bdd3035e5c1.jpg'
           ,'Stylish'
           ,5)


-- insert tables PERMISSION
INSERT INTO [dbo].[Permission]
           ([RollName])
     VALUES
           ('admin')
INSERT INTO [dbo].[Permission]
           ([RollName])
     VALUES
           ('seller')
INSERT INTO [dbo].[Permission]
           ([RollName])
     VALUES
           ('user')
-- insert table USER
INSERT INTO [dbo].[User]
           ([Username]
           ,[Password]
           ,[Fullname]
           ,[Email]
           ,[RollID])
     VALUES
           ('hoangduy'
           ,'MTUxMDA0ZndlcWZ3ZTtoZml1ZHNmYXNkZmFzZGZhcw=='
           ,N'Nguyễn Hoàng Duy'
           ,'duynhhe180181@fpt.edu.vn'
           ,1)
INSERT INTO [dbo].[User]
           ([Username]
           ,[Password]
           ,[Fullname]
           ,[Email]
           ,[RollID])
     VALUES
           ('uyenbeo'
           ,'NTEyMDA0ZndlcWZ3ZTtoZml1ZHNmYXNkZmFzZGZhcw=='
           ,N'Nguyễn Thu Uyên'
           ,'Uyennt@fpt.edu.vn'
           ,1)
INSERT INTO [dbo].[User]
           ([Username]
           ,[Password]
           ,[Fullname]
           ,[Email]
           ,[RollID])
     VALUES
           ('theanh'
           ,'MTIzZndlcWZ3ZTtoZml1ZHNmYXNkZmFzZGZhcw=='
           ,N'Nguyễn Thế Anh'
           ,'anhnt@fpt.edu.vn'
           ,2)
INSERT INTO [dbo].[User]
           ([Username]
           ,[Password]
           ,[Fullname]
           ,[Email]
           ,[RollID])
     VALUES
           ('anhquan'
           ,'MTIzZndlcWZ3ZTtoZml1ZHNmYXNkZmFzZGZhcw=='
           ,N'Nguyễn Anh Quân'
           ,'quanna@fpt.edu.vn'
           ,2)
INSERT INTO [dbo].[User]
           ([Username]
           ,[Password]
           ,[Fullname]
           ,[Email]
           ,[RollID])
     VALUES
           ('sa'
           ,'c2Fmd2VxZndlO2hmaXVkc2Zhc2RmYXNkZmFz'
           ,N'sa'
           ,'sa@fpt.edu.vn'
           ,3)
INSERT INTO [dbo].[User]
           ([Username]
           ,[Password]
           ,[Fullname]
           ,[Email]
           ,[RollID])
     VALUES
           ('123'
           ,'MTIzZndlcWZ3ZTtoZml1ZHNmYXNkZmFzZGZhcw=='
           ,N'123'
           ,'123@fpt.edu.vn'
           ,3)
		  
		  INSERT INTO [dbo].[User]
           ([Username]
           ,[Password]
           ,[Fullname]
           ,[Email]
		   ,[Birthdate]
		   ,[Gender]
		   ,[Address]
           ,[RollID])
     VALUES
           ('quandz'
           ,'MTIzZndlcWZ3ZTtoZml1ZHNmYXNkZmFzZGZhcw=='
           ,N'Nguyễn Anh Quân'
           ,'quanahe180983@fpt.edu.vn'
		   ,'2004-11-09'
		   ,'Male'
		   ,'Hưng Yên'
           ,1)
-- insert table PAYMENT
INSERT INTO [dbo].[Payment]
           ([PayName])
     VALUES
           ('by cash')
INSERT INTO [dbo].[Payment]
           ([PayName])
     VALUES
           ('by creadit')


--insert table Order
INSERT INTO [dbo].[Order]
           ([Address]
           ,[total]
           ,[OrderDate]
           ,[UserID]
           ,[PayID])
     VALUES
           (N'Thạch Hòa-Hà Nội'
           ,null
           ,null
           ,5
           ,1)
INSERT INTO [dbo].[Order]
           ([Address]
           ,[total]
           ,[OrderDate]
           ,[UserID]
           ,[PayID])
     VALUES
           (N'Tân Xã-Hà Nội'
           ,null
           ,null
           ,6
           ,2)

