USE [Alo_Tra]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[billid] [int] IDENTITY(1,1) NOT NULL,
	[cost] [numeric](18, 0) NULL,
	[date] [date] NULL,
	[ship_fee] [numeric](18, 0) NULL,
	[total] [numeric](18, 0) NULL,
	[orderid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[billid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[branch]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[branch](
	[branchid] [int] IDENTITY(1,1) NOT NULL,
	[active] [bit] NOT NULL,
	[address] [nvarchar](max) NULL,
	[branch_name] [nvarchar](max) NULL,
	[close_time] [time](7) NULL,
	[description] [nvarchar](max) NULL,
	[images] [varchar](255) NULL,
	[introduction] [nvarchar](255) NULL,
	[open_time] [time](7) NULL,
	[userid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[branchid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[branch_milk_tea]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[branch_milk_tea](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sell_quantity] [int] NULL,
	[stock_quantity] [int] NULL,
	[branchid] [int] NULL,
	[milk_teaid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[cartid] [int] IDENTITY(1,1) NOT NULL,
	[total_cost] [numeric](38, 2) NULL,
	[total_product] [int] NULL,
	[userid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cartid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart_milk_tea]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_milk_tea](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity_milk_tea] [int] NULL,
	[cartid] [int] NULL,
	[milk_teaid] [int] NULL,
	[sizeid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[delivery]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[delivery](
	[deliveryid] [int] IDENTITY(1,1) NOT NULL,
	[delivery_name] [nvarchar](255) NULL,
	[delivery_type] [nvarchar](255) NULL,
	[extra_cost] [numeric](38, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[deliveryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[income]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[income](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[value] [float] NOT NULL,
	[branchid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[likes]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[likes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[liked_at] [date] NULL,
	[milk_teaid] [int] NULL,
	[userid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[milk_tea]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[milk_tea](
	[milk_teaid] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](max) NULL,
	[discount_price] [numeric](38, 2) NULL,
	[image] [varchar](255) NULL,
	[introduction] [nvarchar](max) NULL,
	[milk_tea_name] [nvarchar](255) NULL,
	[price] [numeric](38, 2) NULL,
	[type_milk_teaid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[milk_teaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[milk_tea_type]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[milk_tea_type](
	[milk_tea_typeid] [int] IDENTITY(1,1) NOT NULL,
	[milk_tea_type_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[milk_tea_typeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[ship_address] [nvarchar](max) NULL,
	[status] [varchar](255) NULL,
	[cartid] [int] NULL,
	[payid] [int] NULL,
	[userid] [int] NULL,
	[branchid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pays]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pays](
	[payid] [int] IDENTITY(1,1) NOT NULL,
	[pay_method] [nvarchar](255) NULL,
	[total] [numeric](38, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[payid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rate]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rate](
	[rateid] [int] IDENTITY(1,1) NOT NULL,
	[comment] [nvarchar](max) NULL,
	[post_time] [date] NULL,
	[rate_value] [numeric](38, 2) NULL,
	[milk_teaid] [int] NULL,
	[userid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[rateid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[roleid] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shipper]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shipper](
	[shipid] [int] IDENTITY(1,1) NOT NULL,
	[branchid] [int] NULL,
	[deliveryid] [int] NULL,
	[rateid] [int] NULL,
	[userid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[shipid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sizes]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sizes](
	[sizeid] [int] IDENTITY(1,1) NOT NULL,
	[extra_cost] [numeric](18, 2) NOT NULL,
	[size_name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[sizeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/9/2024 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[active] [bit] NOT NULL,
	[address] [nvarchar](max) NULL,
	[date] [datetime2](6) NOT NULL,
	[email] [nvarchar](max) NULL,
	[full_name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[phone] [varchar](10) NOT NULL,
	[roleid] [int] NOT NULL,
	[username] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[branch] ON 

INSERT [dbo].[branch] ([branchid], [active], [address], [branch_name], [close_time], [description], [images], [introduction], [open_time], [userid]) VALUES (1, 1, N'Xã Đại áng, Huyện Thanh Trì, Thành phố Hà Nội', N'AloTra Thủ Đức', CAST(N'20:00:00' AS Time), N'AloTra Thủ Đức là điểm đến lý tưởng cho những tín đồ trà sữa với hương vị đa dạng và chất lượng đảm bảo. Tại đây, không chỉ có đồ uống thơm ngon mà còn mang đến không gian thư giãn, thoải mái để gặp gỡ bạn bè hoặc làm việc. Với phong cách phục vụ chuyên nghiệp và tận tâm, AloTra Thủ Đức cam kết mang đến trải nghiệm tuyệt vời cho mọi khách hàng.', N'1733719747062_1733676817952_z6109926083067_4d062031650fa795be62356f62977f21.jpg', N'AloTra Thủ Đức: Trà sữa chất lượng, hương vị độc đáo, không gian thư giãn lý tưởng.', CAST(N'08:00:00' AS Time), 3)
INSERT [dbo].[branch] ([branchid], [active], [address], [branch_name], [close_time], [description], [images], [introduction], [open_time], [userid]) VALUES (2, 1, N'Phường 15, Quận Gò Vấp, Thành phố Hồ Chí Minh', N'AloTra Gò Vấp', CAST(N'21:30:00' AS Time), N'AloTra Gò Vấp là điểm đến lý tưởng cho những tín đồ yêu thích trà sữa và các loại đồ uống tươi mát. Với không gian thoải mái, sạch sẽ, AloTra mang đến cho khách hàng trải nghiệm tuyệt vời từ những ly trà sữa thơm ngon, mát lạnh đến các món sinh tố tươi ngon. Các nguyên liệu được chọn lọc kỹ càng, pha chế cẩn thận, đảm bảo hương vị luôn tươi mới và hấp dẫn. Dịch vụ tận tâm, đội ngũ nhân viên thân thiện, luôn sẵn sàng phục vụ khách hàng. Hãy đến và thưởng thức các món ngon tại AloTra Gò Vấp để cảm nhận sự khác biệt!', N'1733677424434_z6109932138448_993af3243fe1ab84df8a57e2060a8765.jpg,1733677424437_z6109947251265_5bfdb3e88830743604e774fd24bd2911.jpg,1733677424439_z6109948239330_e81921e0bfdfc3b23db0955ace1706c0.jpg', N' AloTra Gò Vấp: Trà sữa thơm ngon, đồ uống tươi mát, phục vụ tận tâm, giá hợp lý.', CAST(N'08:30:00' AS Time), 4)
INSERT [dbo].[branch] ([branchid], [active], [address], [branch_name], [close_time], [description], [images], [introduction], [open_time], [userid]) VALUES (3, 1, N'Phường Tăng Nhơn Phú A, Quận 9, Thành phố Hồ Chí Minh', N'AloTra Quận 9', CAST(N'20:00:00' AS Time), N'AloTra Quận 9 là một điểm đến lý tưởng cho những ai yêu thích trà sữa và các thức uống tươi ngon. Với không gian rộng rãi, thoải mái, quán là lựa chọn hoàn hảo để thư giãn hoặc gặp gỡ bạn bè. Các món trà sữa tại đây được pha chế từ nguyên liệu tươi ngon, đảm bảo hương vị đậm đà và chất lượng. Ngoài trà sữa, quán còn phục vụ các loại sinh tố, trà trái cây, và các món nước đặc biệt khác, đáp ứng mọi sở thích của khách hàng. Với dịch vụ tận tình và không gian hiện đại, AloTra Quận 9 là địa điểm lý tưởng để thưởng thức thức uống yêu thích.', N'1733678071677_z6109961699586_15b7c3a709978b920768e18f70d2ef05.jpg,1733678071680_z6109962008657_d46f69b2612d409bca63c38d9d08f5b2.jpg,1733678071682_z6109972120101_44605aa2671500d4e390893b75443b07.jpg', N' AloTra Quận 9 phục vụ trà sữa, thức uống tươi ngon, không gian thoải mái, tiện lợi.', CAST(N'09:00:00' AS Time), 5)
INSERT [dbo].[branch] ([branchid], [active], [address], [branch_name], [close_time], [description], [images], [introduction], [open_time], [userid]) VALUES (4, 1, N'Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh', N'AloTra Quận 1', CAST(N'23:00:00' AS Time), N'AloTra Quận 1 mang đến không gian hiện đại và sang trọng, tọa lạc ngay trung tâm thành phố. Với thiết kế ấm cúng và trang trí tinh tế, quán là nơi lý tưởng để thưởng thức những ly trà sữa thơm ngon, đậm đà hương vị. Đội ngũ nhân viên nhiệt tình, chu đáo sẽ mang đến cho bạn một trải nghiệm tuyệt vời, là lựa chọn hoàn hảo cho các buổi gặp gỡ bạn bè, gia đình hay hẹn hò.', N'1733684578880_z6109954040134_1378ce71df06102789adadfa744d9864.jpg,1733684578883_z6109957585530_3e74b44301958e37b92f4425ebe8cb65.jpg,1733684578885_z6109958100560_77012bccc0f3b2f0a86965bdd9419f2b.jpg', N'AloTra Quận 1, không gian hiện đại, trà sữa ngon, phục vụ tận tình khách hàng.', CAST(N'10:00:00' AS Time), 12)
SET IDENTITY_INSERT [dbo].[branch] OFF
GO
SET IDENTITY_INSERT [dbo].[branch_milk_tea] ON 

INSERT [dbo].[branch_milk_tea] ([id], [sell_quantity], [stock_quantity], [branchid], [milk_teaid]) VALUES (1, 6, 44, 1, 1)
INSERT [dbo].[branch_milk_tea] ([id], [sell_quantity], [stock_quantity], [branchid], [milk_teaid]) VALUES (2, 2, 38, 1, 2)
INSERT [dbo].[branch_milk_tea] ([id], [sell_quantity], [stock_quantity], [branchid], [milk_teaid]) VALUES (3, 3, 32, 1, 3)
INSERT [dbo].[branch_milk_tea] ([id], [sell_quantity], [stock_quantity], [branchid], [milk_teaid]) VALUES (4, 1, 29, 2, 4)
INSERT [dbo].[branch_milk_tea] ([id], [sell_quantity], [stock_quantity], [branchid], [milk_teaid]) VALUES (5, 0, 30, 2, 5)
INSERT [dbo].[branch_milk_tea] ([id], [sell_quantity], [stock_quantity], [branchid], [milk_teaid]) VALUES (6, 0, 25, 2, 6)
INSERT [dbo].[branch_milk_tea] ([id], [sell_quantity], [stock_quantity], [branchid], [milk_teaid]) VALUES (7, 0, 25, 3, 7)
INSERT [dbo].[branch_milk_tea] ([id], [sell_quantity], [stock_quantity], [branchid], [milk_teaid]) VALUES (8, 0, 35, 3, 8)
INSERT [dbo].[branch_milk_tea] ([id], [sell_quantity], [stock_quantity], [branchid], [milk_teaid]) VALUES (9, 0, 25, 3, 9)
INSERT [dbo].[branch_milk_tea] ([id], [sell_quantity], [stock_quantity], [branchid], [milk_teaid]) VALUES (10, 0, 25, 4, 10)
INSERT [dbo].[branch_milk_tea] ([id], [sell_quantity], [stock_quantity], [branchid], [milk_teaid]) VALUES (11, 0, 25, 4, 11)
SET IDENTITY_INSERT [dbo].[branch_milk_tea] OFF
GO
SET IDENTITY_INSERT [dbo].[cart] ON 

INSERT [dbo].[cart] ([cartid], [total_cost], [total_product], [userid]) VALUES (4, CAST(28000.00 AS Numeric(38, 2)), 1, 7)
INSERT [dbo].[cart] ([cartid], [total_cost], [total_product], [userid]) VALUES (5, CAST(28000.00 AS Numeric(38, 2)), 1, 2)
SET IDENTITY_INSERT [dbo].[cart] OFF
GO
SET IDENTITY_INSERT [dbo].[cart_milk_tea] ON 

INSERT [dbo].[cart_milk_tea] ([id], [quantity_milk_tea], [cartid], [milk_teaid], [sizeid]) VALUES (16, 1, 4, 1, 2)
INSERT [dbo].[cart_milk_tea] ([id], [quantity_milk_tea], [cartid], [milk_teaid], [sizeid]) VALUES (20, 1, 5, 1, 2)
SET IDENTITY_INSERT [dbo].[cart_milk_tea] OFF
GO
SET IDENTITY_INSERT [dbo].[delivery] ON 

INSERT [dbo].[delivery] ([deliveryid], [delivery_name], [delivery_type], [extra_cost]) VALUES (1, N'Slow', NULL, CAST(8000.00 AS Numeric(38, 2)))
INSERT [dbo].[delivery] ([deliveryid], [delivery_name], [delivery_type], [extra_cost]) VALUES (2, N'Fast', N'Fast', CAST(20000.00 AS Numeric(38, 2)))
SET IDENTITY_INSERT [dbo].[delivery] OFF
GO
SET IDENTITY_INSERT [dbo].[income] ON 

INSERT [dbo].[income] ([id], [date], [value], [branchid]) VALUES (4, CAST(N'2024-12-08' AS Date), 120000, 1)
INSERT [dbo].[income] ([id], [date], [value], [branchid]) VALUES (5, CAST(N'2024-12-08' AS Date), 64562, 2)
INSERT [dbo].[income] ([id], [date], [value], [branchid]) VALUES (6, CAST(N'2024-10-10' AS Date), 1700000, 3)
INSERT [dbo].[income] ([id], [date], [value], [branchid]) VALUES (7, CAST(N'2024-12-08' AS Date), 1000000, 4)
INSERT [dbo].[income] ([id], [date], [value], [branchid]) VALUES (8, CAST(N'2024-12-09' AS Date), 104000, 1)
INSERT [dbo].[income] ([id], [date], [value], [branchid]) VALUES (9, CAST(N'2024-01-01' AS Date), 56133, 2)
INSERT [dbo].[income] ([id], [date], [value], [branchid]) VALUES (10, CAST(N'2024-02-01' AS Date), 526846, 1)
INSERT [dbo].[income] ([id], [date], [value], [branchid]) VALUES (11, CAST(N'2024-03-01' AS Date), 885549, 3)
INSERT [dbo].[income] ([id], [date], [value], [branchid]) VALUES (12, CAST(N'2024-04-01' AS Date), 66566, 2)
INSERT [dbo].[income] ([id], [date], [value], [branchid]) VALUES (13, CAST(N'2024-05-01' AS Date), 248640, 1)
INSERT [dbo].[income] ([id], [date], [value], [branchid]) VALUES (19, CAST(N'2024-04-01' AS Date), 654666, 4)
INSERT [dbo].[income] ([id], [date], [value], [branchid]) VALUES (20, CAST(N'2024-06-01' AS Date), 1200000, 3)
SET IDENTITY_INSERT [dbo].[income] OFF
GO
SET IDENTITY_INSERT [dbo].[likes] ON 

INSERT [dbo].[likes] ([id], [liked_at], [milk_teaid], [userid]) VALUES (2, CAST(N'2024-12-09' AS Date), 1, 2)
SET IDENTITY_INSERT [dbo].[likes] OFF
GO
SET IDENTITY_INSERT [dbo].[milk_tea] ON 

INSERT [dbo].[milk_tea] ([milk_teaid], [description], [discount_price], [image], [introduction], [milk_tea_name], [price], [type_milk_teaid]) VALUES (1, N'Trà sữa việt quất là sự kết hợp tinh tế giữa vị trà thơm mát, sữa béo ngậy và hương việt quất chua ngọt tự nhiên. Đồ uống không chỉ có màu sắc bắt mắt mà còn mang đến cảm giác sảng khoái với lớp topping đa dạng như trân châu, thạch, hoặc pudding. Mỗi ngụm trà sữa việt quất là sự hòa quyện hoàn hảo của hương vị, khiến bạn khó lòng quên được. Đây là lựa chọn lý tưởng cho những ai yêu thích sự mới mẻ và ngọt ngào trong mỗi ly trà sữa.', CAST(25000.00 AS Numeric(38, 2)), N'1733677024631_z6110544628929_521824a952a6d8240d5ec4bb48f0369c.jpg,1733677024634_z6110545435371_31c1d79ec5e5184eeac0d78fee3fd6a0.jpg', N'Trà sữa việt quất thơm béo, chua ngọt, mang lại cảm giác sảng khoái.', N'Trà Sữa Việt Quất', CAST(30000.00 AS Numeric(38, 2)), 1)
INSERT [dbo].[milk_tea] ([milk_teaid], [description], [discount_price], [image], [introduction], [milk_tea_name], [price], [type_milk_teaid]) VALUES (2, N'Trà xanh gừng là sự hòa quyện hoàn hảo giữa hương vị thanh mát của lá trà xanh nguyên chất và vị cay nồng ấm áp của gừng tươi. Loại trà này không chỉ mang lại cảm giác sảng khoái, mà còn giúp cơ thể thư giãn, hỗ trợ tiêu hóa và tăng cường sức đề kháng. Từng ngụm trà lan tỏa vị dịu nhẹ của trà xanh, hòa cùng hơi ấm dễ chịu của gừng, tạo nên một trải nghiệm ẩm thực vừa truyền thống vừa hiện đại, thích hợp cho mọi thời điểm trong ngày, đặc biệt là những ngày se lạnh.', CAST(20000.00 AS Numeric(38, 2)), N'1733677151923_z6110538222191_759ebeb89f26a451edf76230993a4692.jpg,1733677151925_z6110540125483_26607a9bc4aeacc3ff1f1bdae73d5e8d.jpg', N'Trà xanh gừng kết hợp giữa vị thanh mát trà xanh, ấm áp từ gừng.', N'Trà Xanh Gừng', CAST(25000.00 AS Numeric(38, 2)), 2)
INSERT [dbo].[milk_tea] ([milk_teaid], [description], [discount_price], [image], [introduction], [milk_tea_name], [price], [type_milk_teaid]) VALUES (3, N'Sinh tố bơ là một món đồ uống mát lạnh, bổ dưỡng, được làm từ bơ tươi, sữa, đá xay, mang lại hương vị béo ngậy và mịn màng. Được yêu thích vì độ ngọt tự nhiên và giàu vitamin, sinh tố bơ giúp bổ sung năng lượng và tốt cho sức khỏe.', CAST(25000.00 AS Numeric(38, 2)), N'1733677229865_z6110543963799_5b464061537fbddbe6776c95d4a31f75.jpg,1733677229867_z6110548463106_7e96c7b483a3ae900fad218f5f95675d.jpg', N'Sinh tố bơ mịn màng, béo ngậy, giàu vitamin, mang lại cảm giác sảng khoái.', N'Sinh Tố Bơ', CAST(28000.00 AS Numeric(38, 2)), 6)
INSERT [dbo].[milk_tea] ([milk_teaid], [description], [discount_price], [image], [introduction], [milk_tea_name], [price], [type_milk_teaid]) VALUES (4, N'Trà việt quất là sự kết hợp hoàn hảo giữa trà xanh thơm ngon và việt quất chín mọng, tạo nên một thức uống tươi mát và giàu dưỡng chất. Với vị chua ngọt đặc trưng từ việt quất, kết hợp với hương trà thanh nhẹ, trà việt quất mang đến cảm giác sảng khoái, dễ chịu cho người thưởng thức. Đây là một lựa chọn lý tưởng cho những ai yêu thích sự mới lạ và muốn thưởng thức một loại đồ uống vừa ngon miệng lại tốt cho sức khỏe.', CAST(25000.00 AS Numeric(38, 2)), N'1733677547241_z6110536133875_dab9c33d3214f9e18d868bf605d99a99.jpg,1733677547243_z6110536771368_fc642dfca2b13eccf9a825489db04f51.jpg', N'Trà việt quất thơm ngon,, mang đến sự tươi mới và bổ dưỡng cho cơ thể.', N'Trà Việt Quất', CAST(30000.00 AS Numeric(38, 2)), 3)
INSERT [dbo].[milk_tea] ([milk_teaid], [description], [discount_price], [image], [introduction], [milk_tea_name], [price], [type_milk_teaid]) VALUES (5, N'Sinh tố mãng cầu là sự kết hợp giữa vị ngọt tự nhiên và hương thơm đặc trưng của mãng cầu, tạo nên một thức uống mát lạnh, bổ dưỡng. Chứa nhiều vitamin C và chất xơ, sinh tố mãng cầu giúp tăng cường sức đề kháng, hỗ trợ tiêu hóa và làm đẹp da. Với màu sắc tươi sáng và hương vị đậm đà, đây là lựa chọn tuyệt vời cho những ai yêu thích sự tươi mới và sức khỏe.', CAST(22000.00 AS Numeric(38, 2)), N'1733677671726_z6110560401940_d9eedd284d342376785a119367daf48a.jpg,1733677671730_z6110560904760_2a2c47da1164bac991dfc644b926d7de.jpg,1733677671732_z6110561489023_de2460000c26a34222db206712312949.jpg', N'
Sinh tố mãng cầu ngọt ngào, bổ dưỡng, giúp làm đẹp da.', N'Sinh Tố Mãng Cầu', CAST(25000.00 AS Numeric(38, 2)), 4)
INSERT [dbo].[milk_tea] ([milk_teaid], [description], [discount_price], [image], [introduction], [milk_tea_name], [price], [type_milk_teaid]) VALUES (6, N'Sinh tố sữa chua dâu là sự kết hợp hoàn hảo giữa vị chua nhẹ của sữa chua và vị ngọt thanh mát của dâu tươi. Với thành phần chính là dâu tươi, sữa chua và đá xay, món sinh tố này không chỉ thơm ngon mà còn giúp bổ sung vitamin C, tốt cho hệ tiêu hóa và làn da. Vị thanh mát, dễ uống và đầy đủ dưỡng chất, sinh tố sữa chua dâu là lựa chọn lý tưởng cho những ai yêu thích sự tươi mới và ngon miệng.', CAST(13000.00 AS Numeric(38, 2)), N'1733677794840_z6110520586561_69c7edb38ccc3f8a54726d93a1726c5d.jpg,1733677794842_z6110523349470_26bca75f0d13c8f69e0be8a6fc323a54.jpg,1733677794846_z6110523965823_4d760016ebd06f4ad7376bcc70dcb13e.jpg', N'Sinh tố sữa chua dâu tươi ngon, bổ dưỡng, giúp đẹp da và dễ uống.', N'Sinh Tố Sữa Dâu', CAST(15000.00 AS Numeric(38, 2)), 5)
INSERT [dbo].[milk_tea] ([milk_teaid], [description], [discount_price], [image], [introduction], [milk_tea_name], [price], [type_milk_teaid]) VALUES (7, N'Trà sữa hương đào của AloTra là sự kết hợp hoàn hảo giữa vị trà đậm đà và hương thơm ngọt ngào từ đào chín. Ly trà sữa này mang đến cảm giác tươi mới, nhẹ nhàng và rất dễ uống. Vị đào tự nhiên kết hợp với lớp sữa béo ngậy, tạo nên một món thức uống thơm ngon, mát lạnh. Được pha chế từ nguyên liệu chất lượng, trà sữa hương đào không chỉ hấp dẫn về hương vị mà còn có màu sắc đẹp mắt, khiến bạn càng thêm thích thú. Một lựa chọn tuyệt vời cho những ai yêu thích sự tươi mát và ngọt ngào.', CAST(30000.00 AS Numeric(38, 2)), N'1733678257303_z6110544628929_521824a952a6d8240d5ec4bb48f0369c.jpg,1733678257307_z6110545435371_31c1d79ec5e5184eeac0d78fee3fd6a0.jpg,1733678257309_z6110546856237_4ce67ca5f19fe75fb67be00afbd18306.jpg', N'
Trà sữa hương đào ngọt ngào, kết hợp trà đậm đà và sữa béo ngậy.', N'Trà Sữa Hương Đào', CAST(36000.00 AS Numeric(38, 2)), 1)
INSERT [dbo].[milk_tea] ([milk_teaid], [description], [discount_price], [image], [introduction], [milk_tea_name], [price], [type_milk_teaid]) VALUES (8, N'Trà xoài mang hương vị thơm ngọt của xoài tươi, kết hợp với trà xanh thanh mát. Vị ngọt tự nhiên từ xoài hòa quyện với vị trà nhẹ nhàng, tạo nên thức uống refreshing, phù hợp cho những ngày hè nóng bức. Trà xoài không chỉ làm dịu cơn khát mà còn mang lại cảm giác tươi mới và đầy năng lượng.', CAST(20000.00 AS Numeric(38, 2)), N'1733678389247_z6110560904760_2a2c47da1164bac991dfc644b926d7de.jpg,1733678389249_z6110561489023_de2460000c26a34222db206712312949.jpg,1733678389252_z6110561855095_d025999e7fa172435bbc9562e5c3e3ea.jpg', N'
Trà xoài thanh mát, kết hợp hương vị ngọt ngào, giải khát vào mùa hè.', N'Trà Xoài', CAST(25000.00 AS Numeric(38, 2)), 3)
INSERT [dbo].[milk_tea] ([milk_teaid], [description], [discount_price], [image], [introduction], [milk_tea_name], [price], [type_milk_teaid]) VALUES (9, N'Sinh tố bạc hà mang đến hương vị mát lạnh, tươi mới với sự kết hợp hoàn hảo giữa lá bạc hà tươi và các nguyên liệu khác. Sinh tố này không chỉ giúp giải khát mà còn đem lại cảm giác sảng khoái, dễ chịu. Vị thanh mát từ bạc hà kết hợp với độ ngọt tự nhiên của trái cây tạo nên một thức uống lý tưởng cho mùa hè. Sinh tố bạc hà là sự lựa chọn tuyệt vời để thư giãn và bổ sung năng lượng cho cơ thể.', CAST(20000.00 AS Numeric(38, 2)), N'1733678486976_z6110561489023_de2460000c26a34222db206712312949.jpg,1733678486980_z6110561855095_d025999e7fa172435bbc9562e5c3e3ea.jpg', N'Sinh tố bạc hà tươi mát, giải khát và mang lại cảm giác sảng khoái.', N'Sinh Tố Bạc Hà', CAST(25000.00 AS Numeric(38, 2)), 4)
INSERT [dbo].[milk_tea] ([milk_teaid], [description], [discount_price], [image], [introduction], [milk_tea_name], [price], [type_milk_teaid]) VALUES (10, N'Trà sữa socola của AloTra là sự kết hợp hoàn hảo giữa trà đen thơm lừng và socola ngọt ngào. Hương vị socola mượt mà, đậm đà hòa quyện cùng lớp trà sữa béo ngậy tạo nên một thức uống ngọt ngào, hấp dẫn. Được trang trí với đá bào mát lạnh và một lớp bọt sữa mềm mịn, trà sữa socola là sự lựa chọn tuyệt vời cho những ai yêu thích sự ngọt ngào và mới lạ trong mỗi ngụm trà.', CAST(17000.00 AS Numeric(38, 2)), N'1733684687515_z6110549822860_7a62726e4cf552fda62aef07d321cb11.jpg,1733684687516_z6110550035173_115b4771da99108602e545c3d1ec2a48.jpg,1733684687518_z6110550525858_8b781214ffa040d6491eb62b2884a61d.jpg', N'Trà sữa socola ngọt ngào, đậm đà, kết hợp trà đen và socola thơm ngon.', N'Trà Sữa Socola', CAST(20000.00 AS Numeric(38, 2)), 1)
INSERT [dbo].[milk_tea] ([milk_teaid], [description], [discount_price], [image], [introduction], [milk_tea_name], [price], [type_milk_teaid]) VALUES (11, N'Trà chanh là thức uống mát lạnh, kết hợp giữa trà xanh tươi mát và chanh tươi, tạo nên hương vị chua ngọt thanh khiết, sảng khoái, giúp giải nhiệt tuyệt vời.', CAST(1000.00 AS Numeric(38, 2)), N'1733684859837_trachanh.jpg,1733684859838_z6110523965823_4d760016ebd06f4ad7376bcc70dcb13e.jpg', N'Trà chanh thơm mát, kết hợp chanh tươi và trà xanh, giải nhiệt.






', N'Trà chanh', CAST(12000.00 AS Numeric(38, 2)), 3)
SET IDENTITY_INSERT [dbo].[milk_tea] OFF
GO
SET IDENTITY_INSERT [dbo].[milk_tea_type] ON 

INSERT [dbo].[milk_tea_type] ([milk_tea_typeid], [milk_tea_type_name]) VALUES (1, N'Trà sữa')
INSERT [dbo].[milk_tea_type] ([milk_tea_typeid], [milk_tea_type_name]) VALUES (2, N'Trà sữa xanh')
INSERT [dbo].[milk_tea_type] ([milk_tea_typeid], [milk_tea_type_name]) VALUES (3, N'Trà hoa quả')
INSERT [dbo].[milk_tea_type] ([milk_tea_typeid], [milk_tea_type_name]) VALUES (4, N'Sinh tố quyết')
INSERT [dbo].[milk_tea_type] ([milk_tea_typeid], [milk_tea_type_name]) VALUES (5, N'Sinh tố sữa chua')
INSERT [dbo].[milk_tea_type] ([milk_tea_typeid], [milk_tea_type_name]) VALUES (6, N'Sinh tố đặc sản')
SET IDENTITY_INSERT [dbo].[milk_tea_type] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([orderid], [ship_address], [status], [cartid], [payid], [userid], [branchid]) VALUES (5, N'15/4', N'COMPLETED', 4, 5, 7, 1)
INSERT [dbo].[orders] ([orderid], [ship_address], [status], [cartid], [payid], [userid], [branchid]) VALUES (6, N'15/4', N'COMPLETED', 4, 6, 7, 1)
INSERT [dbo].[orders] ([orderid], [ship_address], [status], [cartid], [payid], [userid], [branchid]) VALUES (11, N'15/4', N'PENDING', 5, 11, 2, 1)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[pays] ON 

INSERT [dbo].[pays] ([payid], [pay_method], [total]) VALUES (1, N'COD', CAST(33000.00 AS Numeric(38, 2)))
INSERT [dbo].[pays] ([payid], [pay_method], [total]) VALUES (2, N'COD', CAST(48000.00 AS Numeric(38, 2)))
INSERT [dbo].[pays] ([payid], [pay_method], [total]) VALUES (3, N'COD', CAST(70000.00 AS Numeric(38, 2)))
INSERT [dbo].[pays] ([payid], [pay_method], [total]) VALUES (4, N'COD', CAST(35000.00 AS Numeric(38, 2)))
INSERT [dbo].[pays] ([payid], [pay_method], [total]) VALUES (5, N'COD', CAST(94000.00 AS Numeric(38, 2)))
INSERT [dbo].[pays] ([payid], [pay_method], [total]) VALUES (6, N'COD', CAST(30000.00 AS Numeric(38, 2)))
INSERT [dbo].[pays] ([payid], [pay_method], [total]) VALUES (11, N'VNPAY', CAST(104000.00 AS Numeric(38, 2)))
SET IDENTITY_INSERT [dbo].[pays] OFF
GO
SET IDENTITY_INSERT [dbo].[rate] ON 

INSERT [dbo].[rate] ([rateid], [comment], [post_time], [rate_value], [milk_teaid], [userid]) VALUES (1, N'Uống ngon', CAST(N'2024-12-09' AS Date), CAST(4.00 AS Numeric(38, 2)), 2, 2)
INSERT [dbo].[rate] ([rateid], [comment], [post_time], [rate_value], [milk_teaid], [userid]) VALUES (2, N'Uống ngon', CAST(N'2024-12-09' AS Date), CAST(4.00 AS Numeric(38, 2)), 2, 3)
SET IDENTITY_INSERT [dbo].[rate] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([roleid], [role_name]) VALUES (1, N'ADMIN')
INSERT [dbo].[role] ([roleid], [role_name]) VALUES (2, N'SELLER')
INSERT [dbo].[role] ([roleid], [role_name]) VALUES (3, N'USER')
INSERT [dbo].[role] ([roleid], [role_name]) VALUES (4, N'SHIPPER')
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[shipper] ON 

INSERT [dbo].[shipper] ([shipid], [branchid], [deliveryid], [rateid], [userid]) VALUES (1, 1, 1, 1, 9)
SET IDENTITY_INSERT [dbo].[shipper] OFF
GO
SET IDENTITY_INSERT [dbo].[sizes] ON 

INSERT [dbo].[sizes] ([sizeid], [extra_cost], [size_name]) VALUES (1, CAST(0.00 AS Numeric(18, 2)), N'S')
INSERT [dbo].[sizes] ([sizeid], [extra_cost], [size_name]) VALUES (2, CAST(3000.00 AS Numeric(18, 2)), N'M')
INSERT [dbo].[sizes] ([sizeid], [extra_cost], [size_name]) VALUES (3, CAST(5000.00 AS Numeric(18, 2)), N'L')
SET IDENTITY_INSERT [dbo].[sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([userid], [active], [address], [date], [email], [full_name], [image], [password], [phone], [roleid], [username]) VALUES (2, 1, N'Thôn 3 Tân Lạc Bảo Lâm Lâm Đồng', CAST(N'2024-12-08T23:31:08.2850000' AS DateTime2), N'baohiptanlac@gmail.com', N'Trần Trịnh Gia Bảo Bảo', N'1733675468145_IMG_7098.JPG', N'$2a$10$pXyZeNY7OMdLIu5Yj9GfbOZ5dZyxeYCi55fulYnhxRNsY.jyCcHum', N'0123456789', 3, N'user1')
INSERT [dbo].[users] ([userid], [active], [address], [date], [email], [full_name], [image], [password], [phone], [roleid], [username]) VALUES (3, 1, N'Thôn 1 Tân Lạc Bảo Lâm Lâm Đồng', CAST(N'2024-12-08T23:34:16.0840000' AS DateTime2), N'duytanlac1@gmail.com', N'Hoàng Duy', N'1733675655955_z6111086680524_2aa46e8c353afb207ea693db23bc3c3c.jpg', N'$2a$10$9Vc8AjSk82ePS5npXnr6BOdCxOZ1R6pE5AmtWFUVW7oMfTDjnBKPG', N'0225369147', 2, N'seller1')
INSERT [dbo].[users] ([userid], [active], [address], [date], [email], [full_name], [image], [password], [phone], [roleid], [username]) VALUES (4, 1, N'Số 2 Đường Âu Cơ Thôn 1 Xã Tân Lạc Huyện Bảo Lâm Tỉnh Lâm Đồng', CAST(N'2024-12-08T23:36:58.2940000' AS DateTime2), N'hduya2.2019c3locthanh@gmail.com', N'Hoàng Thị Duy', N'1733675818170_z6111090021391_7a4e77945941943404f0da3c839fb370.jpg', N'$2a$10$RF4P5cyEF5jcyTNRmcivDe9pydYqIbYBu1BqJXJzEGWDi/2Svm4Hq', N'0932809933', 2, N'seller2')
INSERT [dbo].[users] ([userid], [active], [address], [date], [email], [full_name], [image], [password], [phone], [roleid], [username]) VALUES (5, 1, N'Thôn 3 Tân Lạc Bảo Lâm Lâm Đồng', CAST(N'2024-12-08T23:39:46.9140000' AS DateTime2), N'dphat2601@gmail.com', N'Trần Tiến Dũng', N'1733675986774_default.jpg', N'$2a$10$VsXAqlrnbV7AebOnyEwFkOm58lUOC3m1Sue35gMSwudDexjvERzWO', N'0255896321', 2, N'seller3')
INSERT [dbo].[users] ([userid], [active], [address], [date], [email], [full_name], [image], [password], [phone], [roleid], [username]) VALUES (6, 1, N'Thôn 8 Tân Lạc Bảo Lâm Lâm Đồng', CAST(N'2024-12-08T23:43:06.5620000' AS DateTime2), N'22110418@student.hcmute.edu.vn', N'Nguyễn Tuấn Thành', N'1733676186453_default.jpg', N'$2a$10$eYJQRkB0wZoEMLKY4Un/H.Mk/yGIaBp6fXLbwCr0aAB5oRjjpuHvG', N'0332967034', 1, N'admin')
INSERT [dbo].[users] ([userid], [active], [address], [date], [email], [full_name], [image], [password], [phone], [roleid], [username]) VALUES (7, 1, N'17 Hoàng Diệu 2 Linh Chiểu Thủ Đức Thành phố Hồ Chí Minh', CAST(N'2024-12-09T00:26:19.5310000' AS DateTime2), N'lyhung10nctlop95@gmail.com', N'Nguyễn Lý Hùng', N'1733678779413_default.jpg', N'$2a$10$KA4Wg.vYOTAvLJ2LMOjBGuSS5Vq5s/2ZkA.oOFf.H3d/ahx16/KFy', N'0147258369', 3, N'user2')
INSERT [dbo].[users] ([userid], [active], [address], [date], [email], [full_name], [image], [password], [phone], [roleid], [username]) VALUES (8, 1, N'80 Võ Văn Ngân Linh Chiểu Thủ Đức Thành phố Hồ Chí Minh', CAST(N'2024-12-09T00:27:29.0890000' AS DateTime2), N'phuongtrinhdangthuc@gmail.com', N'Nguyễn Lý ', N'1733678848962_IMG_7102.JPG', N'$2a$10$cKmGGhz8Jan8anj/7NpUfetk/q0aC2CS7nd1ZTsrse87hFw4jmXji', N'0111222333', 3, N'user3')
INSERT [dbo].[users] ([userid], [active], [address], [date], [email], [full_name], [image], [password], [phone], [roleid], [username]) VALUES (9, 1, N'231 Lê Văn Chí Linh Trung Thủ Đức', CAST(N'2024-12-09T00:28:43.1050000' AS DateTime2), N'phuongtrinhdangthuc2@gmail.com', N'Nguyễn Văn A', N'1733678922976_IMG_7100.JPG', N'$2a$10$4E08k4LI.aiVxcupjl8VIujqh7EWPi2E6P/FZOQW.ipx3AWFcNB0a', N'0966582134', 4, N'shipper1')
INSERT [dbo].[users] ([userid], [active], [address], [date], [email], [full_name], [image], [password], [phone], [roleid], [username]) VALUES (10, 1, N'Phước Long B, Quận 9, Thành phố Hồ Chí Minh', CAST(N'2024-12-09T00:32:03.5280000' AS DateTime2), N'22135004@student.hcmute.edu.vn', N'Nguyễn Văn B', N'1733679123400_IMG_7099.JPG', N'$2a$10$11ebgPsq4fslY6aWVd78tu3uO1b6OKT/s6sl0/tETrTyQ7llqVxIK', N'0777888999', 4, N'shipper2')
INSERT [dbo].[users] ([userid], [active], [address], [date], [email], [full_name], [image], [password], [phone], [roleid], [username]) VALUES (11, 1, N'489 Lê Quang Việt Phường 1 Gò Vấp Thành phố Hồ Chí Minh', CAST(N'2024-12-09T00:33:59.7560000' AS DateTime2), N'22149057@student.hcmute.edu.vn', N'Nguyễn Tài', N'1733679239624_IMG_7128.JPG', N'$2a$10$bsoyvMweYztS6AVM.uy6HeoTZkwFwOCkIOcKul0E4b8ArXGUMmC9q', N'0147888999', 4, N'shipper3')
INSERT [dbo].[users] ([userid], [active], [address], [date], [email], [full_name], [image], [password], [phone], [roleid], [username]) VALUES (12, 1, N'45 Đường Nguyễn Trung Ngạn Bến Nghé Quận 1 Thành phố HCM', CAST(N'2024-12-09T01:58:22.5860000' AS DateTime2), N'123@gmail.com', N'Nguyễn Công Phượng', N'1733684302390_IMG_7098.JPG', N'$2a$10$8PP1Wa10KCUmPoLtqNAA1OQ71MjAjf9ibGgLCCqcelA4hQ0SFMS4i', N'0122555896', 2, N'seller4')
INSERT [dbo].[users] ([userid], [active], [address], [date], [email], [full_name], [image], [password], [phone], [roleid], [username]) VALUES (13, 0, N'123', CAST(N'2024-12-09T11:58:53.3740000' AS DateTime2), N'abg@gmail.com', N'LyHung', N'1733720333277_1733675293978_IMG_7153.JPG', N'$2a$10$j87THWutJtuak6d2jne4zu8Fdb6CHng4D4QcNBEsX8o3QHVxXL7Wy', N'0111222333', 3, N'user4')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK6g76h17ikertw4ybmah8bn2yc] FOREIGN KEY([orderid])
REFERENCES [dbo].[orders] ([orderid])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK6g76h17ikertw4ybmah8bn2yc]
GO
ALTER TABLE [dbo].[branch]  WITH CHECK ADD  CONSTRAINT [FK7vcy2b6k22i3cvi13rt9nuexy] FOREIGN KEY([userid])
REFERENCES [dbo].[users] ([userid])
GO
ALTER TABLE [dbo].[branch] CHECK CONSTRAINT [FK7vcy2b6k22i3cvi13rt9nuexy]
GO
ALTER TABLE [dbo].[branch_milk_tea]  WITH CHECK ADD  CONSTRAINT [FK1r2la2s40fl7j8dbogri3m9n2] FOREIGN KEY([branchid])
REFERENCES [dbo].[branch] ([branchid])
GO
ALTER TABLE [dbo].[branch_milk_tea] CHECK CONSTRAINT [FK1r2la2s40fl7j8dbogri3m9n2]
GO
ALTER TABLE [dbo].[branch_milk_tea]  WITH CHECK ADD  CONSTRAINT [FKi5pxbn3cgioltctgpapdql373] FOREIGN KEY([milk_teaid])
REFERENCES [dbo].[milk_tea] ([milk_teaid])
GO
ALTER TABLE [dbo].[branch_milk_tea] CHECK CONSTRAINT [FKi5pxbn3cgioltctgpapdql373]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK1f3la5ofi3papq9kbt0yqkab7] FOREIGN KEY([userid])
REFERENCES [dbo].[users] ([userid])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK1f3la5ofi3papq9kbt0yqkab7]
GO
ALTER TABLE [dbo].[cart_milk_tea]  WITH CHECK ADD  CONSTRAINT [FK69ee6bjrcgcvqcn9bsw4fjm3i] FOREIGN KEY([cartid])
REFERENCES [dbo].[cart] ([cartid])
GO
ALTER TABLE [dbo].[cart_milk_tea] CHECK CONSTRAINT [FK69ee6bjrcgcvqcn9bsw4fjm3i]
GO
ALTER TABLE [dbo].[cart_milk_tea]  WITH CHECK ADD  CONSTRAINT [FKk9nvgm8fk3vjrddj2xt3ut1ca] FOREIGN KEY([sizeid])
REFERENCES [dbo].[sizes] ([sizeid])
GO
ALTER TABLE [dbo].[cart_milk_tea] CHECK CONSTRAINT [FKk9nvgm8fk3vjrddj2xt3ut1ca]
GO
ALTER TABLE [dbo].[cart_milk_tea]  WITH CHECK ADD  CONSTRAINT [FKnv6vqb0o1htgahh41pfkxitoy] FOREIGN KEY([milk_teaid])
REFERENCES [dbo].[milk_tea] ([milk_teaid])
GO
ALTER TABLE [dbo].[cart_milk_tea] CHECK CONSTRAINT [FKnv6vqb0o1htgahh41pfkxitoy]
GO
ALTER TABLE [dbo].[income]  WITH CHECK ADD  CONSTRAINT [FK4qisn88xguvrw2y2duhtcrpgi] FOREIGN KEY([branchid])
REFERENCES [dbo].[branch] ([branchid])
GO
ALTER TABLE [dbo].[income] CHECK CONSTRAINT [FK4qisn88xguvrw2y2duhtcrpgi]
GO
ALTER TABLE [dbo].[likes]  WITH CHECK ADD  CONSTRAINT [FKb4xnm0tctkm13ccqq2qq0vefg] FOREIGN KEY([milk_teaid])
REFERENCES [dbo].[milk_tea] ([milk_teaid])
GO
ALTER TABLE [dbo].[likes] CHECK CONSTRAINT [FKb4xnm0tctkm13ccqq2qq0vefg]
GO
ALTER TABLE [dbo].[likes]  WITH CHECK ADD  CONSTRAINT [FKhtad8wmxkw770qkrkxnm5ijd8] FOREIGN KEY([userid])
REFERENCES [dbo].[users] ([userid])
GO
ALTER TABLE [dbo].[likes] CHECK CONSTRAINT [FKhtad8wmxkw770qkrkxnm5ijd8]
GO
ALTER TABLE [dbo].[milk_tea]  WITH CHECK ADD  CONSTRAINT [FKeynifojcpfn1302f746i036du] FOREIGN KEY([type_milk_teaid])
REFERENCES [dbo].[milk_tea_type] ([milk_tea_typeid])
GO
ALTER TABLE [dbo].[milk_tea] CHECK CONSTRAINT [FKeynifojcpfn1302f746i036du]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK1gsokawhv52669pajseg7k8wu] FOREIGN KEY([payid])
REFERENCES [dbo].[pays] ([payid])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK1gsokawhv52669pajseg7k8wu]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKn8uo2nkkbm703jpwk47bsehyy] FOREIGN KEY([cartid])
REFERENCES [dbo].[cart] ([cartid])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKn8uo2nkkbm703jpwk47bsehyy]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKpnm1eeupqm4tykds7k3okqegv] FOREIGN KEY([userid])
REFERENCES [dbo].[users] ([userid])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKpnm1eeupqm4tykds7k3okqegv]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKpq3pondoyp9o1onhoprevd3s3] FOREIGN KEY([branchid])
REFERENCES [dbo].[branch] ([branchid])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKpq3pondoyp9o1onhoprevd3s3]
GO
ALTER TABLE [dbo].[rate]  WITH CHECK ADD  CONSTRAINT [FK1m4oja1wucnl47pkv5f3gr888] FOREIGN KEY([milk_teaid])
REFERENCES [dbo].[milk_tea] ([milk_teaid])
GO
ALTER TABLE [dbo].[rate] CHECK CONSTRAINT [FK1m4oja1wucnl47pkv5f3gr888]
GO
ALTER TABLE [dbo].[rate]  WITH CHECK ADD  CONSTRAINT [FKjst18t5fa9iehl5jtx5t0pdug] FOREIGN KEY([userid])
REFERENCES [dbo].[users] ([userid])
GO
ALTER TABLE [dbo].[rate] CHECK CONSTRAINT [FKjst18t5fa9iehl5jtx5t0pdug]
GO
ALTER TABLE [dbo].[shipper]  WITH CHECK ADD  CONSTRAINT [FK7utyf3j93vei10aghjyvcs4um] FOREIGN KEY([branchid])
REFERENCES [dbo].[branch] ([branchid])
GO
ALTER TABLE [dbo].[shipper] CHECK CONSTRAINT [FK7utyf3j93vei10aghjyvcs4um]
GO
ALTER TABLE [dbo].[shipper]  WITH CHECK ADD  CONSTRAINT [FKjmn0l1gw0h2h3ky9i1d5frlp8] FOREIGN KEY([rateid])
REFERENCES [dbo].[rate] ([rateid])
GO
ALTER TABLE [dbo].[shipper] CHECK CONSTRAINT [FKjmn0l1gw0h2h3ky9i1d5frlp8]
GO
ALTER TABLE [dbo].[shipper]  WITH CHECK ADD  CONSTRAINT [FKmye9g074bm9t2sjictcl7wdr2] FOREIGN KEY([deliveryid])
REFERENCES [dbo].[delivery] ([deliveryid])
GO
ALTER TABLE [dbo].[shipper] CHECK CONSTRAINT [FKmye9g074bm9t2sjictcl7wdr2]
GO
ALTER TABLE [dbo].[shipper]  WITH CHECK ADD  CONSTRAINT [FKqn6b0yfpfl5o1y173rhx3ce40] FOREIGN KEY([userid])
REFERENCES [dbo].[users] ([userid])
GO
ALTER TABLE [dbo].[shipper] CHECK CONSTRAINT [FKqn6b0yfpfl5o1y173rhx3ce40]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FKrhp1f2rxh5oa7d7fgxktv062f] FOREIGN KEY([roleid])
REFERENCES [dbo].[role] ([roleid])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FKrhp1f2rxh5oa7d7fgxktv062f]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD CHECK  (([status]='REFUNDED' OR [status]='COMPLETED' OR [status]='SHIPPING' OR [status]='CANCELLED' OR [status]='CONFIRMED' OR [status]='PENDING'))
GO
