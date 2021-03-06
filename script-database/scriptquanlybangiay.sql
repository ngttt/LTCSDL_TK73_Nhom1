USE [quanlybangiay]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/22/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 6/22/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/22/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [float] NULL,
	[Discount] [float] NULL,
	[OrderDetailsName] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/22/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[OrderDate] [datetime] NULL,
	[ShipName] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Oders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productss]    Script Date: 6/22/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productss](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[CategoryID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
	[UnitPrice] [float] NULL,
	[UnitInStock] [int] NULL,
	[Color] [nvarchar](50) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Productss] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 6/22/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SuppliersID] [int] IDENTITY(1,1) NOT NULL,
	[SuppliersName] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SuppliersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'giày cao gótt')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Giày xăng đan')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Giày búp bê')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Giày boots')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (5, N'Giày sneaker')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (6, N'Dép Guốc')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Country]) VALUES (1, N'Thảo', N'Nguyễn', N'VT')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Country]) VALUES (2, N'Nguyên', N'Cao', N'VT')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Country]) VALUES (3, N'Hoa', N'Hồ', N'LG')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Country]) VALUES (4, N'Trâm', N'Nguyễn', N'TPHCM')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [Country]) VALUES (5, N'Tiên', N'Nguyễn', N'TPHCM')
SET IDENTITY_INSERT [dbo].[Employees] OFF
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Discount], [OrderDetailsName]) VALUES (1, 105, 1, 0.1, N'A')
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Discount], [OrderDetailsName]) VALUES (3, 104, 2, 0.2, N'B')
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Discount], [OrderDetailsName]) VALUES (3, 174, 4, 0.4, N'D')
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Discount], [OrderDetailsName]) VALUES (3, 104, 1, 0.1, N'E')
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Discount], [OrderDetailsName]) VALUES (1, 200, 1, 0.1, N'F')
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Discount], [OrderDetailsName]) VALUES (4, 106, 3, 0.1, N'G')
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [EmployeeID], [OrderDate], [ShipName], [City], [Note]) VALUES (1, 1, CAST(N'2020-01-05 00:00:00.000' AS DateTime), N'Thu', N'Hồ Chí Minh', NULL)
INSERT [dbo].[Orders] ([OrderID], [EmployeeID], [OrderDate], [ShipName], [City], [Note]) VALUES (2, 2, CAST(N'2020-02-05 00:00:00.000' AS DateTime), N'Đông', N'Quy Nhơ', NULL)
INSERT [dbo].[Orders] ([OrderID], [EmployeeID], [OrderDate], [ShipName], [City], [Note]) VALUES (3, 3, CAST(N'2020-03-05 00:00:00.000' AS DateTime), N'Hạ', N'Phú Quốc', NULL)
INSERT [dbo].[Orders] ([OrderID], [EmployeeID], [OrderDate], [ShipName], [City], [Note]) VALUES (4, 4, CAST(N'2020-04-05 00:00:00.000' AS DateTime), N'Xuân', N'Nha Trang', NULL)
INSERT [dbo].[Orders] ([OrderID], [EmployeeID], [OrderDate], [ShipName], [City], [Note]) VALUES (5, 5, CAST(N'2020-05-05 00:00:00.000' AS DateTime), N'Hè', N'Vũng Tàu', NULL)
INSERT [dbo].[Orders] ([OrderID], [EmployeeID], [OrderDate], [ShipName], [City], [Note]) VALUES (6, 1, CAST(N'2020-06-05 00:00:00.000' AS DateTime), N'Nguyễn', N'Bình Định', NULL)
INSERT [dbo].[Orders] ([OrderID], [EmployeeID], [OrderDate], [ShipName], [City], [Note]) VALUES (7, 2, CAST(N'2020-07-05 00:00:00.000' AS DateTime), N'Cường', N'Đà Lạt', NULL)
INSERT [dbo].[Orders] ([OrderID], [EmployeeID], [OrderDate], [ShipName], [City], [Note]) VALUES (8, 3, CAST(N'2020-08-05 00:00:00.000' AS DateTime), N'Cao', N'Huế', NULL)
INSERT [dbo].[Orders] ([OrderID], [EmployeeID], [OrderDate], [ShipName], [City], [Note]) VALUES (9, 4, CAST(N'2020-09-05 00:00:00.000' AS DateTime), N'Chen', N'Hà Nội', NULL)
INSERT [dbo].[Orders] ([OrderID], [EmployeeID], [OrderDate], [ShipName], [City], [Note]) VALUES (10, 5, CAST(N'2020-10-05 00:00:00.000' AS DateTime), N'Sú', N'Đà Nẵng', NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Productss] ON 

INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (104, N'Giày cao gót slingback mũi nhọn gót thanh
', 1, 2, 435000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/den_cg07089_3_8a709c19180e47658d2b2d9e4aadba5d.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (105, N'Giày cao gót thanh mũi nhọn
', 1, 3, 435000, 20, N'Kem', N'http://product.hstatic.net/1000003969/product/hong_cg07092_3_5e410bc277414830b161e68b0391220d_grande.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (106, N'Giày cao gót slingback gót chuyển màu
', 1, 4, 435000, 20, N'Kem', N'http://product.hstatic.net/1000003969/product/hong_cg05094_3_78b625cfdecb42778fca2a4cc4c0e50f_grande.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (107, N'Giày mules mũi nhọn khóa trang trí
', 1, 5, 435000, 20, N'Xanh nhạt', N'http://product.hstatic.net/1000003969/product/xanh-nhat_cg05095_3_ff2bd618a0d84470885da0910e4d9956_grande.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (108, N'Giày cao gót slingback gót thanh
', 1, 6, 435000, 20, N'Kem', N'https://product.hstatic.net/1000003969/product/kem_cg07091_3_d513be26ff3d48f1948efc2ea7ae80c3.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (109, N'Giày cao gót thanh quai cổ chân
', 1, 7, 435000, 20, N'Đỏ', N'http://product.hstatic.net/1000003969/product/do_cg09120_3_c8de7190618d472e80f76fd87471f594_grande.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (110, N'Giày cao gót mũi nhọn gót thanh
', 1, 8, 435000, 20, N'Kem', N'http://product.hstatic.net/1000003969/product/nau_cg05089_3_7881708064154a5c860fcdb61f5fdfa7_grande.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (111, N'Giày mules mũi nhọn gót thanh
', 1, 9, 475000, 20, N'Đỏ', N'http://product.hstatic.net/1000003969/product/do_cg07088_3_833ed1f5497d459ebf44a42856f57017_grande.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (112, N'Giày cao gót mũi bầu gót thô
', 1, 10, 455000, 20, N'Đỏ', N'https://product.hstatic.net/1000003969/product/do_cg05091_3_a6188445ea1440f0892a830174dfb388.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (113, N'Giày cao gót mũi nhọn phối lưới
', 1, 1, 455000, 20, N'Kem', N'http://product.hstatic.net/1000003969/product/kem_cg07087_3_ff703a8d54b542ac8886e84f2c68ca61_grande.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (114, N'Giày cao gót quai cổ chân', 1, 2, 455000, 20, N'Đen', N'http://product.hstatic.net/1000003969/product/den_cg09117_3_05be35b81f3f4e038c7dad999157f3ac_grande.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (115, N'Giày cao gót mũi nhọn
', 1, 3, 455000, 20, N'Kem', N'https://product.hstatic.net/1000003969/product/trang_cg09116_3_e2a90d34e1fa4e959a4286a29eeacd31.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (116, N'GIày cao gót mũi nhọn
', 1, 4, 435000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/den_cg09113_3_229af51cdef84c429246a4d0eddd408d.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (117, N'Giày cao gót mũi nhọn gót vuông
', 1, 5, 435000, 20, N'Đen', N'http://product.hstatic.net/1000003969/product/den_cg05090_3_f8f00d3b96724155b7ba77648c4ccf37_grande.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (118, N'Giày cao gót slingback mũi nhọn
', 1, 6, 435000, 20, N'VÀng', N'http://product.hstatic.net/1000003969/product/vang_cg09114_3_5ba7f7cf2f8f459994769efd4944f407_grande.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (119, N'Giày cao gót mũi nhọn
', 1, 7, 435000, 20, N'Trắng', N'http://product.hstatic.net/1000003969/product/trang_cg09115_3_ae94f0828c774c73ab175d3441cacbcf_grande.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (120, N'Giày cao gót mũi nhọn
', 1, 8, 435000, 20, N'Xanh rêu', N'https://product.hstatic.net/1000003969/product/xanh-reu_cg07085_3_62176bbe827e40298c3cdf9531fdbf64.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (121, N'Giày Mules mũi nhọn
', 1, 9, 435000, 20, N'Trắng', N'https://product.hstatic.net/1000003969/product/trang_cg05088_3_002b7b23cf8e40a599fa11bd73c1b29c.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (122, N'Giày cao gót slingback mũi nhọn
', 1, 10, 455000, 20, N'Xanh rêu', N'https://product.hstatic.net/1000003969/product/xanh-reu_cg09113_3_08cb165234f74fd7b63f1bd1a681d7f8.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (123, N'Giày cao gót họa tiết monogram
', 1, 1, 455000, 20, N'Đen nâu', N'https://product.hstatic.net/1000003969/product/nau_cg11006_4_fcf1a3849d654a6395e4904e7b112695.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (124, N'Giày cao gót slingback họa tiết monogram
', 1, 2, 455000, 20, N'Đen đỏ', N'https://product.hstatic.net/1000003969/product/den_cg07081_3_37ecdfd421b64667ab61d3ab669f0bda.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (125, N'Giày cao gót slingback mũi gót nhọn thanh
', 1, 3, 455000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/den_cg09112_3_b3f4c9e634484afab3ede879aae8204b.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (126, N'Giày cao gót mũi bầu trang trí nơ
', 1, 4, 555000, 20, N'Trắng', N'https://product.hstatic.net/1000003969/product/trang_cg05084_3_b6724337870f44e797fc60e7438c11ff.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (127, N'Giày cao gót si bóng mũi nhọn
', 1, 5, 555000, 20, N'Xanh', N'https://product.hstatic.net/1000003969/product/xanh_cg07084_3_f49114fd11cb411b8258ccc0e5750180.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (128, N'Giày cao gót mũi nhọn gót thanh
', 1, 6, 555000, 20, N'Hồng', N'https://product.hstatic.net/1000003969/product/hong_cg07080_3_d8c852978a0d4275b2de45cee12bd431.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (129, N'Giày sandal gót sơn ombre
', 2, 7, 455000, 20, N'Hồng', N'https://product.hstatic.net/1000003969/product/kem_cg09111_3_65b223f0b16a4627ac43d0413511dc5e.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (130, N'Giày sandal bệt gắn khóa trang trí
', 2, 8, 455000, 20, N'Xanh', N'https://product.hstatic.net/1000003969/product/xanh-la_cg05083_3_81142d6e28e74ab69795c84793dcb063.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (131, N'Dép 3 dây quai ngang
', 2, 9, 455000, 20, N'Kem', N'https://product.hstatic.net/1000003969/product/hong_cg07083_3_6b73148a3de04e798d12c0d24a4c5fbb.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (132, N'Giày sandal day bất đối xứng 
', 2, 10, 455000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/den_cg09110_3_788da6a924fe4c52b0a9430ab867a653.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (133, N'Giày sandal gót thô hoa trang trí
', 2, 1, 455000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/den_cg05087_3_233060bde8c541ad99939c63c68a29d6.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (134, N'Giày đế xuồng giả gỗ
', 2, 2, 455000, 20, N'Vàng', N'https://product.hstatic.net/1000003969/product/nau_dx07020_3_cc8032825dfa4ed1938b6e3ef5401e02.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (135, N'Giày sandal quai ngang dây chéo
', 2, 3, 395000, 20, N'Vàng', N'https://product.hstatic.net/1000003969/product/vang_sd07042_3_fc02da6996774f779ebafea08f530a93.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (136, N'Giày sandal họa tiết hoa khô
', 2, 4, 395000, 20, N'Kem', N'https://product.hstatic.net/1000003969/product/hong_sd09077_3_ae97360dcb0b4acf98bfb3c951e03730.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (137, N'Giày sandal bệt đế giả gỗ
', 2, 5, 395000, 20, N'Vàng', N'https://product.hstatic.net/1000003969/product/vang_sd01098_3_51723a2dafee4082be31475dd8a8751f.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (138, N'Giày sandal gót vuông mũi vuông
', 2, 6, 395000, 20, N'Kem ', N'https://product.hstatic.net/1000003969/product/kem_sd05055_3_03c158bc3cc147e9ae89ccac889751f8.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (139, N'Giày sandal mũi vuông gót vuông
', 2, 7, 395000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/den_sd07039_3_60bffb1f8dcc4e37ac6df3f957801ec7.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (140, N'Giày sandal gót vuông đính hoa trang trí
', 2, 8, 395000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/den_sd05052_3_db6de13160d24cff934b6767f008ca2b.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (141, N'Giày đế xuồng giả gỗ
', 2, 9, 395000, 20, N'Vàng', N'https://product.hstatic.net/1000003969/product/nau_dx07019_3_dfa0df6dfb844ccab3e001de4320676e.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (142, N'Giày sandal gót vuông phối si hologram
', 2, 10, 395000, 20, N'Bạc', N'https://product.hstatic.net/1000003969/product/trang_sd07038_3_99960636f3164c8ab622bc6c48df3f18.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (143, N'Giày sandal mũi vuông dây mảnh 
', 2, 1, 395000, 20, N'VÀng', N'https://product.hstatic.net/1000003969/product/vang_sd07036_3_295b089ffcc646959c73de677e60586c.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (144, N'Giày mules mũi vuông
', 3, 2, 455000, 20, N'Kem', N'https://product.hstatic.net/1000003969/product/hong_bb03056_3_4995c270f2ea4379bf63bf1b8713c05b.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (145, N'Giày búp bê mũi nhọn gắn khóa trang trí
', 3, 3, 455000, 20, N'Nâu', N'https://product.hstatic.net/1000003969/product/nau_bb03057_3_78d729a1421345bd813b1fd6596ccbbb.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (146, N'Giày mules mũi vuông
', 3, 4, 455000, 20, N'Đen nâu', N'https://product.hstatic.net/1000003969/product/kem_sd03038_3_9b73aaa69bd14dfa9c3fa595ef3c40b2.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (147, N'Giày mulé mũi nhọn khóa trang trí
', 3, 5, 455000, 20, N'Xanh', N'https://product.hstatic.net/1000003969/product/xanh-nhat_bb03059_3_239b7c4de6ba4360af23d25ab2d578e3.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (148, N'Giày búp bê slingback
', 3, 6, 455000, 20, N'Kem', N'https://product.hstatic.net/1000003969/product/trang_bb03054_3_50472f627eab4fef9f6681ad6f577d13.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (149, N'Giày búp bê gót vuông
', 3, 7, 455000, 20, N'Xanh', N'https://product.hstatic.net/1000003969/product/xanh-nhat_bb03053_3_8bb45bac609b49bf8b64b01a9d99837a.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (150, N'Giày búp bê mũi nhọn hở gót
', 3, 8, 455000, 20, N'Trắng', N'https://product.hstatic.net/1000003969/product/xanh-da-troi_bb03055_3_4caddf0eafe44b9186bca57ec733e317.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (151, N'Giày búp bê mũi vuông gót vuông
', 3, 9, 455000, 20, N'Kem', N'https://product.hstatic.net/1000003969/product/kem_bb03051_3_3287204ecc5441d0b52e5a3da1f01afd.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (152, N'Giày búp bê mũi bầu cắt laser
', 3, 10, 455000, 20, N'Vàng', N'https://product.hstatic.net/1000003969/product/vang_bb01138_3_51c95ee700d84cf9bdd17b0a202218c7.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (153, N'Giày búp bê mũi nhọn trang trí dây kéo
', 3, 1, 455000, 20, N'Hồng', N'https://product.hstatic.net/1000003969/product/hong_bb03048_3_ca55a15a8ce5484086a077c5071822f2.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (154, N'Giày búp bê mũi vuông
', 3, 2, 455000, 202, N'Hồng', N'https://product.hstatic.net/1000003969/product/hong_bb03047_3_291ff55bfbd84a92a235592a9b611a2b.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (155, N'Giày búp bê họa tiết caro
', 3, 3, 455000, 20, N'Nâu', N'https://product.hstatic.net/1000003969/product/nau_bb01137_3_c0ea35b833a04ba2be461f5973ace27d.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (156, N'Giày búp bê mũi vuông gót thang
', 3, 4, 455000, 20, N'Xanh', N'https://product.hstatic.net/1000003969/product/xanh-nhat_bb03045_3_a440b967f25a47f7bb22308efa21ce07.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (157, N'Giày búp bê mũi nhọn khóa trang trí
', 3, 5, 455000, 20, N'Kem', N'https://product.hstatic.net/1000003969/product/kem_bb03046_3_d76848f0b209401696c66ee36b645ac9.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (158, N'Giày búp bê mũi bầu dây rút nhún
', 3, 6, 455000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/den_bb03050_3_ad94edbea90a457e9642aa45924220d0.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (159, N'Giày búp bê phối 2 màu
', 3, 7, 455000, 2, N'Kem', N'https://product.hstatic.net/1000003969/product/hong_bb03049_3_f28c0dfc104f4b4d8250fbfd7c4cce3d.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (160, N'Giày búp bê mũi bầu dây chéo
', 3, 8, 455000, 20, N'Hồng', N'https://product.hstatic.net/1000003969/product/hong_bb01135_3_f8689ca2392349c7874565cd884d42b0.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (161, N'Giày búp bê mũi nhọn viền sóng
', 3, 9, 455000, 20, N'Nâu', N'https://product.hstatic.net/1000003969/product/nau-nhat_bb03022_3.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (162, N'Giày búp bê slingback
', 3, 10, 455000, 20, N'Đỏ', N'https://product.hstatic.net/1000003969/product/do_tim_bb03044_3_e1a0f327c51840cf8d8407c80d77ee1e.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (163, N'Giày mules gót trong suốt
', 3, 1, 455000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/xanh-duong_bb03043_3_80217a228f844405b4e3044f2f5cc47a.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (164, N'Giày búp bê mũi vuông gót thang
', 3, 2, 455000, 20, N'Xanh', N'https://product.hstatic.net/1000003969/product/xanh-nhat_bb03045_3_a440b967f25a47f7bb22308efa21ce07.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (165, N'Giày búp bê mũi nhọn khóa trang trí
', 3, 3, 455000, 20, N'Hồng', N'https://product.hstatic.net/1000003969/product/hong_bb03046_3_b35392592c114331a7f7f70bdbfc8b55.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (166, N'Giày búp bê mũi bầu dây rút nhún
', 3, 4, 455000, 20, N'đen', N'https://product.hstatic.net/1000003969/product/den_bb03050_3_ad94edbea90a457e9642aa45924220d0.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (167, N'Giày búp bê phối 2 màu
', 3, 5, 455000, 20, N'Kem', N'https://product.hstatic.net/1000003969/product/hong_bb03049_3_f28c0dfc104f4b4d8250fbfd7c4cce3d.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (168, N'Giày búp bê mũi nhọn
', 3, 6, 455000, 20, N'Hồng', N'https://product.hstatic.net/1000003969/product/hong_bb03032_3_af7c113f035d4002a9f4e4964b73a811.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (169, N'Giày búp bê mules khóa trang trí
', 3, 7, 455000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/den_bb03037_3_fdab8792100c4121bdde3e7dc3ee6830.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (170, N'Giày búp bê mules mũi nhọn
', 3, 8, 455000, 20, N'Hồng', N'https://product.hstatic.net/1000003969/product/hong_bb03036_3_d2199639f12141b09dacb5438d7bb93e.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (171, N'Giày búp bê cut-out
', 3, 9, 455000, 20, N'Xám', N'https://product.hstatic.net/1000003969/product/nhu-vang_bb03034_3_408f4820f1594b4f84421a67df2fe976.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (172, N'Giày búp bê slingback mũi nhọn
', 3, 10, 455000, 20, N'Hồng', N'https://product.hstatic.net/1000003969/product/hong_bb03041_3_063685fe3d8943739aafce697f19dc63.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (173, N'Giày boot cổ thấp
', 4, 1, 455000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/den_bo05009_3_1039cba5616d47f2be2db98c6c3f32ac.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (174, N'Giay boot dây đen trang trí
', 4, 2, 455000, 20, N'Xanh đen', N'https://product.hstatic.net/1000003969/product/xanh-navy_bo05010_3_41c8d9fa0d1a494dbebb1fa70658ec13.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (175, N'Giày boot viền lông 
', 4, 3, 455000, 20, N'Nâu', N'https://product.hstatic.net/1000003969/product/nau_bo07013_3_9cf8324672574ce9bce67c23cfd26b25.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (176, N'Giày boot phối 2 chất liệu
', 4, 4, 455000, 20, N'Xám', N'https://product.hstatic.net/1000003969/product/xam_bo07014_3_59275353c1984584917babcf5450067d.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (177, N'Giày boot viền lông cổ chân
', 4, 5, 455000, 20, N'Nâu', N'https://product.hstatic.net/1000003969/product/nau_bo09013_3_75c207d125a44daea5892536743a0aaf.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (178, N'Giày boot trang trí kim loại viền mũi
', 4, 6, 455000, 20, N'Xanh', N'https://product.hstatic.net/1000003969/product/xanh_bo09014_3_b0de30a98c454b35956df61a0c661a2a.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (179, N'Giày boot hoa văn tartan
', 4, 7, 455000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/xanh_bo07012_3_70bc21605d4a404c83374cfd7f02a4e4.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (180, N'Juno active starter 4
', 5, 8, 455000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/den_tt03024_2_ad2695ab5e9b486dbd047f8ef560fe5a.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (181, N'Juno active starter 3
', 5, 9, 455000, 20, N'Xanh', N'https://product.hstatic.net/1000003969/product/xanh-ngoc_tt03023_3_577fe9d0fe694d3fb43aff4fa5356d9a.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (182, N'Juno active starter 2
', 5, 10, 455000, 20, N'Xanh rêu', N'https://product.hstatic.net/1000003969/product/xanh-reu_tt03022_3_3158bb1020ba48cf933bcb7f8f8aa758.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (183, N'Juno active starter 1
', 5, 1, 455000, 20, N'Xanh nhạt', N'https://product.hstatic.net/1000003969/product/xam_tt03021_3_3fd4d54d2f1a4fa1be6fae14c358e166.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (184, N'Juno giày thể thao
', 5, 2, 455000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/den_tt03017_3.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (185, N'Juno sneakers active model
', 5, 3, 455000, 20, N'Đen', N'https://product.hstatic.net/1000003969/product/den_tt03007_3.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (186, N'Juno sneakers active model
', 5, 4, 455000, 20, N'Xanh rêu', N'https://product.hstatic.net/1000003969/product/xanh-reu_tt03008_3.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (187, N'Juno sneakers active model
', 5, 5, 455000, 2, N'đen', N'https://product.hstatic.net/1000003969/product/den_tt03014_3.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (188, N'Dép 3 day quai ngang
', 6, 6, 455000, 20, N'Kem', N'https://product.hstatic.net/1000003969/product/trang_sd01100_3_cfe9b20b5a3448bcba969bcab4c40f87.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (189, N'Dép guốc
', 6, 7, 455000, 20, N'Cam', N'https://product.hstatic.net/1000003969/product/cam_dk060_3_86943883e4554923aa2aae26a2063200.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (190, N'Dép kẹp
', 6, 8, 455000, 12, N'Đen', N'https://product.hstatic.net/1000003969/product/xanh-duong_dk061_3_6b731ec84b604a4e92fdce51e316bf12.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (191, N'Dép quai ngang gót sơn giả gỗ
', 6, 9, 455000, 12, N'VÀng', N'https://product.hstatic.net/1000003969/product/nau_sd01096_3_06d22943401340a0a24de9f68e6923ed.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (192, N'Dép quai ngang mũi vuông
', 6, 10, 455000, 12, N'Trắng', N'https://product.hstatic.net/1000003969/product/trang_sd01095_3_234b973e0ef1477895f89f6f0c020147.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (193, N'Dép tông
', 6, 1, 455000, 12, N'Hoa cúc', N'https://product.hstatic.net/1000003969/product/den_dk054_3_f7de7ec09c1c4b4b9bebf1e4ea319391.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (194, N'Guốc mules mũi bầu họa tiết đan
', 6, 2, 455000, 12, N'Hồng', N'https://product.hstatic.net/1000003969/product/tim_bb03039_3_9b030090430843dfbe642899a175c142.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (195, N'Guốc gót vuông phối khóa
', 6, 3, 455000, 12, N'BẠc', N'https://product.hstatic.net/1000003969/product/xam_sd05026_3.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (196, N'Guôc mules mũi nhọn
', 6, 4, 455000, 12, N'Kem', N'https://product.hstatic.net/1000003969/product/kem_bb03038_3_9d1ba380ca934921a3ea7eb70b1c68dc.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (197, N'Dép
', 6, 5, 455000, 12, N'Trằng', N'https://product.hstatic.net/1000003969/product/xam_de001_3_cf25b774f3c24cf48b7e6f61d33edebc.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (198, N'Dép quai chéo nữ tính
', 6, 6, 455000, 12, N'Bạc', N'https://product.hstatic.net/1000003969/product/xam_sd01073_3_1750ef7455eb4e1a86f85f83b5f6c54c.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (199, N'Guốc cao 5cm gót bạc mũi tròn
', 6, 7, 455000, 12, N'Hồng', N'https://product.hstatic.net/1000003969/product/hong_cg05070_3.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (200, N'Guốc họa tiết dệt gấm "Ngẫu Hứng Thời Gian"
', 6, 8, 455000, 12, N'Đỏ', N'https://product.hstatic.net/1000003969/product/do_cg05066_3.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (201, N'Dép quai vải thắt nơ
', 6, 9, 455000, 12, N'Đen', N'https://product.hstatic.net/1000003969/product/xanh_sd03035_3.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (202, N'Dép quai ngang phối màu
', 6, 10, 455000, 12, N'Xanh', N'https://product.hstatic.net/1000003969/product/xanh_sd03022_3.jpg')
GO
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (203, N'Dép quai ngang vân cẩm thạch
', 6, 1, 455000, 12, N'Đen', N'https://product.hstatic.net/1000003969/product/den_sd03027_3.jpg')
INSERT [dbo].[Productss] ([ProductID], [ProductName], [CategoryID], [SupplierID], [UnitPrice], [UnitInStock], [Color], [Image]) VALUES (204, N'Dép quai ngang phối khóa
', 6, 2, 455000, 12, N'Đen', N'https://product.hstatic.net/1000003969/product/nau-dam_sd03026_3.jpg')
SET IDENTITY_INSERT [dbo].[Productss] OFF
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SuppliersID], [SuppliersName], [City]) VALUES (1, N'Tokyo Traders', N'Tokyo')
INSERT [dbo].[Suppliers] ([SuppliersID], [SuppliersName], [City]) VALUES (2, N'Cooperativa de Quesos ''Las Cabras''', N'Oviedo')
INSERT [dbo].[Suppliers] ([SuppliersID], [SuppliersName], [City]) VALUES (3, N'Mayumi''s', N'Osaka')
INSERT [dbo].[Suppliers] ([SuppliersID], [SuppliersName], [City]) VALUES (4, N'Refrescos Americanas LTDA', N'London')
INSERT [dbo].[Suppliers] ([SuppliersID], [SuppliersName], [City]) VALUES (5, N'Heli Süßwaren GmbH & Co. KG', N'England')
INSERT [dbo].[Suppliers] ([SuppliersID], [SuppliersName], [City]) VALUES (6, N'Plutzer Lebensmittelgroßmärkte AG', N'VietNam')
INSERT [dbo].[Suppliers] ([SuppliersID], [SuppliersName], [City]) VALUES (7, N'Nord-Ost-Fisch Handelsgesellschaft mbH', N'French')
INSERT [dbo].[Suppliers] ([SuppliersID], [SuppliersName], [City]) VALUES (8, N'Formaggi Fortini s.r.l.', N'USA')
INSERT [dbo].[Suppliers] ([SuppliersID], [SuppliersName], [City]) VALUES (9, N'Norske Meierier', N'Australia')
INSERT [dbo].[Suppliers] ([SuppliersID], [SuppliersName], [City]) VALUES (10, N'Bigfoot Breweries', N'Egypt')
INSERT [dbo].[Suppliers] ([SuppliersID], [SuppliersName], [City]) VALUES (11, N'test', N'test')
INSERT [dbo].[Suppliers] ([SuppliersID], [SuppliersName], [City]) VALUES (12, N'Hanoi Trader', N'HN')
INSERT [dbo].[Suppliers] ([SuppliersID], [SuppliersName], [City]) VALUES (13, N'HCMTrader', N'HCM')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OderDetails_Oders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OderDetails_Oders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OderDetails_Productss1] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Productss] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OderDetails_Productss1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Oders_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Oders_Employees]
GO
ALTER TABLE [dbo].[Productss]  WITH CHECK ADD  CONSTRAINT [FK_Productss_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Productss] CHECK CONSTRAINT [FK_Productss_Categories]
GO
ALTER TABLE [dbo].[Productss]  WITH CHECK ADD  CONSTRAINT [FK_Productss_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SuppliersID])
GO
ALTER TABLE [dbo].[Productss] CHECK CONSTRAINT [FK_Productss_Suppliers]
GO
