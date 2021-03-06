USE [RGIS]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 13/07/2016 22:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] NOT NULL,
	[usuario] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CentroCosto]    Script Date: 13/07/2016 22:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CentroCosto](
	[cc_cntr_csto] [float] NOT NULL,
	[cc_scrs] [nvarchar](255) NULL,
	[cc_rfc] [nvarchar](255) NULL,
	[cc_clle] [nvarchar](255) NULL,
	[cc_clna] [nvarchar](255) NULL,
	[cc_estd] [nvarchar](255) NULL,
	[cc_mncp] [nvarchar](255) NULL,
	[c_tipo] [nvarchar](255) NULL,
 CONSTRAINT [PK_CenroCosto] PRIMARY KEY CLUSTERED 
(
	[cc_cntr_csto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[F_Tienda]    Script Date: 13/07/2016 22:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_Tienda](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [nvarchar](10) NULL,
	[Centro_costo] [nvarchar](10) NULL,
 CONSTRAINT [PK_F_Tienda] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Registros]    Script Date: 13/07/2016 22:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registros](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CentroCostos] [nvarchar](6) NULL,
	[Fecha] [nvarchar](6) NULL,
	[Cantidad] [nvarchar](4) NULL,
	[Sector] [nvarchar](20) NULL,
	[Sku] [nvarchar](11) NULL,
	[Cantida2] [nvarchar](4) NULL,
 CONSTRAINT [PK_Registros] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 13/07/2016 22:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id_usuario] [nvarchar](50) NOT NULL,
	[usuario] [nvarchar](250) NULL,
	[psw] [nvarchar](50) NULL,
	[rol] [nvarchar](50) NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[admin] ([id], [usuario], [pass]) VALUES (1, N'Israel', N'12232006')
INSERT [dbo].[CentroCosto] ([cc_cntr_csto], [cc_scrs], [cc_rfc], [cc_clle], [cc_clna], [cc_estd], [cc_mncp], [c_tipo]) VALUES (4020, N'uyiuy', N'iuyiu', N'uyuyiu', N'iuyiuy', N'iuyiuy', N'iuyiuy', N'Tienda')
INSERT [dbo].[CentroCosto] ([cc_cntr_csto], [cc_scrs], [cc_rfc], [cc_clle], [cc_clna], [cc_estd], [cc_mncp], [c_tipo]) VALUES (4177, N'C.D. GUADALAJARA', N'DMA850716 ER5', N'CARR.SN.MARTIN D/LAS FLORES 525 KM 2.5', N'SAN MARTIN DE LAS FLORES', N'JALISCO', N'TLAQUEPAQUE', N'cdk')
INSERT [dbo].[CentroCosto] ([cc_cntr_csto], [cc_scrs], [cc_rfc], [cc_clle], [cc_clna], [cc_estd], [cc_mncp], [c_tipo]) VALUES (4179, N'ALMACEN MAYOREO', N'DMA850716 ER5', N'CALLE 5, MANZ. 10  LOTES 4,5 Y 6', N'PARQUE INDUSTRIAL TOLUCA 2000', N'ESTADO DE MEXICO', N'TOLUCA', N'cdk')
INSERT [dbo].[CentroCosto] ([cc_cntr_csto], [cc_scrs], [cc_rfc], [cc_clle], [cc_clna], [cc_estd], [cc_mncp], [c_tipo]) VALUES (4182, N'C.D. CANCUN', N'IEI-880229-SL8', N'CANCUN', N'CANCUN', N'QUINTANA ROO', N'CANCUN', N'cdk')
INSERT [dbo].[CentroCosto] ([cc_cntr_csto], [cc_scrs], [cc_rfc], [cc_clle], [cc_clna], [cc_estd], [cc_mncp], [c_tipo]) VALUES (4330, N'ALMACEN MAYOREO OUTLET', N'DMA850716 ER5', N'CALLE 5, MANZ. 10  LOTES 4,5 Y 6', N'PARQUE INDUSTRIAL TOLUCA 2000', N'ESTADO DE MEXICO', N'TOLUCA', N'cdk')
INSERT [dbo].[CentroCosto] ([cc_cntr_csto], [cc_scrs], [cc_rfc], [cc_clle], [cc_clna], [cc_estd], [cc_mncp], [c_tipo]) VALUES (4331, N'C.D. GUADALAJARA OUTLET', N'DMA850716 ER5', N'CARR.SN.MARTIN D/LAS FLORES KM 525', N'(KM 2.5)', N'JALISCO', N'NULL', N'cdk')
INSERT [dbo].[CentroCosto] ([cc_cntr_csto], [cc_scrs], [cc_rfc], [cc_clle], [cc_clna], [cc_estd], [cc_mncp], [c_tipo]) VALUES (4332, N'C.D. CANCUN OUTLET', N'IEI-880229-SL8', N'CANCUN', N'CANCUN', N'QUINTANA ROO', N'CANCUN', N'cdk')
INSERT [dbo].[CentroCosto] ([cc_cntr_csto], [cc_scrs], [cc_rfc], [cc_clle], [cc_clna], [cc_estd], [cc_mncp], [c_tipo]) VALUES (4655, N'CD TIENDA VIRTUAL', N'DMA850716 ER5', N'CALLE 5, MANZ. 10  LOTES 4,5 Y 6', N'PARQUE INDUSTRIAL TOLUCA 2000', N'ESTADO DE MEXICO', N'TOLUCA', N'cdk')
INSERT [dbo].[CentroCosto] ([cc_cntr_csto], [cc_scrs], [cc_rfc], [cc_clle], [cc_clna], [cc_estd], [cc_mncp], [c_tipo]) VALUES (5001, N'CD. Veracruz', N'YYU2YYGUY', N'DOLORES', N'LOSHEROES', N'MEXICO', N'MEXICO', N'Tienda')
INSERT [dbo].[CentroCosto] ([cc_cntr_csto], [cc_scrs], [cc_rfc], [cc_clle], [cc_clna], [cc_estd], [cc_mncp], [c_tipo]) VALUES (8765, N'yguyg', N'ftfytf', N'guyguyg', N'yguyg', N'ygug', N'ytf', N'Tienda')
INSERT [dbo].[CentroCosto] ([cc_cntr_csto], [cc_scrs], [cc_rfc], [cc_clle], [cc_clna], [cc_estd], [cc_mncp], [c_tipo]) VALUES (9004, N'CD TULTITLAN UNDER ARMOUR', N'DMA850716 ER5', N'CALLE 5, MANZ. 10  LOTES 4,5 Y 6', N'PARQUE INDUSTRIAL TOLUCA 2000', N'ESTADO DE MEXICO', N'TOLUCA', N'cdk')
INSERT [dbo].[CentroCosto] ([cc_cntr_csto], [cc_scrs], [cc_rfc], [cc_clle], [cc_clna], [cc_estd], [cc_mncp], [c_tipo]) VALUES (9005, N'CD CANCUN UNDER ARMOUR', N'IEI-880229-SL8', N'CANCUN', N'CANCUN', N'QUINTANA ROO', N'CANCUN', N'cdk')
INSERT [dbo].[CentroCosto] ([cc_cntr_csto], [cc_scrs], [cc_rfc], [cc_clle], [cc_clna], [cc_estd], [cc_mncp], [c_tipo]) VALUES (9006, N'CD GUADALAJARA UNDER ARMOUR', N'DMA850716 ER5', N'CARR.SN.MARTIN D/LAS FLORES 525 KM 2.5', N'SAN MARTIN DE LAS FLORES', N'JALISCO', N'TLAQUEPAQUE', N'cdk')
SET IDENTITY_INSERT [dbo].[F_Tienda] ON 

INSERT [dbo].[F_Tienda] ([id], [Tipo], [Centro_costo]) VALUES (1, N'cdk', N'1')
INSERT [dbo].[F_Tienda] ([id], [Tipo], [Centro_costo]) VALUES (2, N'cdk', N'2')
SET IDENTITY_INSERT [dbo].[F_Tienda] OFF
SET IDENTITY_INSERT [dbo].[Registros] ON 

INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (1, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (2, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (3, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (4, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (5, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (6, N'4155', N'281015', N'501', N'004155281015501', N'9000058391', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (7, N'4155', N'281015', N'501', N'004155281015501', N'9000058391', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (8, N'4155', N'281015', N'501', N'004155281015501', N'9000058391', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (9, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (10, N'4155', N'281015', N'501', N'004155281015501', N'9000058391', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (11, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (12, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (13, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (14, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (15, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (16, N'4155', N'281015', N'501', N'004155281015501', N'9000058391', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (17, N'4155', N'281015', N'501', N'004155281015501', N'9000058391', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (18, N'4155', N'281015', N'501', N'004155281015501', N'9000058391', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (19, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (20, N'4155', N'281015', N'501', N'004155281015501', N'9000058391', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (21, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (22, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (23, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (24, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (25, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (26, N'4155', N'281015', N'501', N'004155281015501', N'9000058391', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (27, N'4155', N'281015', N'501', N'004155281015501', N'9000058391', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (28, N'4155', N'281015', N'501', N'004155281015501', N'9000058391', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (29, N'4155', N'281015', N'501', N'004155281015501', N'1463730101', N'0001')
INSERT [dbo].[Registros] ([ID], [CentroCostos], [Fecha], [Cantidad], [Sector], [Sku], [Cantida2]) VALUES (30, N'4155', N'281015', N'501', N'004155281015501', N'9000058391', N'0001')
SET IDENTITY_INSERT [dbo].[Registros] OFF
INSERT [dbo].[usuarios] ([id_usuario], [usuario], [psw], [rol]) VALUES (N'1', N'ISRAEL', N'5678', N'ADMINISTRADOR')
INSERT [dbo].[usuarios] ([id_usuario], [usuario], [psw], [rol]) VALUES (N'2', N'ROBERTO', N'1234', N'USUARIO')
INSERT [dbo].[usuarios] ([id_usuario], [usuario], [psw], [rol]) VALUES (N'20', N'ANDRES', N'1234', N'RGIS_ADM')
INSERT [dbo].[usuarios] ([id_usuario], [usuario], [psw], [rol]) VALUES (N'3', N'RICARDO', N'12345', N'ADMINISTRADOR')
INSERT [dbo].[usuarios] ([id_usuario], [usuario], [psw], [rol]) VALUES (N'4', N'RODRIGO', N'5678', N'RGIS_ADM')
INSERT [dbo].[usuarios] ([id_usuario], [usuario], [psw], [rol]) VALUES (N'7', N'RODRIGO', N'1234', N'USUARIO')
INSERT [dbo].[usuarios] ([id_usuario], [usuario], [psw], [rol]) VALUES (N'8', N'MARIO', N'5678', N'ADMINISTRADOR')
/****** Object:  StoredProcedure [dbo].[Agregalo]    Script Date: 13/07/2016 22:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Agregalo]
	
	@CentroCostos nvarchar(6) null,
	@Fecha nvarchar(6) null,
	@Cantidad nvarchar(4) null,
	@Sector nvarchar(20) null,
	@Sku nvarchar(11) null,
	@Cantidad2 nvarchar(4) null,
	@o_flag    nchar(2),
	@o_dttm    datetime
AS
BEGIN
       INSERT INTO
		Registros
	VALUES (
	
    @CentroCostos ,
	@Fecha ,
	@Cantidad ,
	@Sector ,
	@Sku ,
	@Cantidad2,
	@o_flag,
	@o_dttm);
END
GO
