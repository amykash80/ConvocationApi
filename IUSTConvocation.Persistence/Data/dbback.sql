USE [ConvocationDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [uniqueidentifier] NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[PostalCode] [int] NOT NULL,
	[AddressLine] [nvarchar](max) NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[Module] [tinyint] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppFiles]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppFiles](
	[Id] [uniqueidentifier] NOT NULL,
	[Module] [tinyint] NOT NULL,
	[FilePath] [nvarchar](max) NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_AppFiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppOrders]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppOrders](
	[Id] [uniqueidentifier] NOT NULL,
	[OrderId] [nvarchar](max) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[GownBookingId] [uniqueidentifier] NOT NULL,
	[Receipt] [nvarchar](max) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[IsPartial] [bit] NOT NULL,
	[AmountPaid] [decimal](18, 2) NOT NULL,
	[AmountDue] [decimal](18, 2) NOT NULL,
	[CreatedAt] [int] NOT NULL,
	[Currency] [nvarchar](max) NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_AppOrders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppPayments]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppPayments](
	[Id] [uniqueidentifier] NOT NULL,
	[TransactionId] [nvarchar](max) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Currency] [nvarchar](max) NOT NULL,
	[PaymentMethod] [int] NOT NULL,
	[AppPaymentStatus] [int] NOT NULL,
	[RpOrderId] [nvarchar](max) NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_AppPayments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Convocations]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Convocations](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ConvocationDate] [datetimeoffset](7) NOT NULL,
	[End] [time](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[VenueId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Convocations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [uniqueidentifier] NOT NULL,
	[DepartmentName] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[EmpCode] [nvarchar](max) NULL,
	[Designation] [tinyint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DepartemntId] [uniqueidentifier] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GownBookings]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GownBookings](
	[Id] [uniqueidentifier] NOT NULL,
	[GownId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[GownStatus] [tinyint] NOT NULL,
	[IsCancelled] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_GownBookings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gowns]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gowns](
	[Id] [uniqueidentifier] NOT NULL,
	[Color] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Size] [tinyint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Charges] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Gowns] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guests]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guests](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Designation] [nvarchar](max) NOT NULL,
	[Gender] [tinyint] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[ContactNo] [nvarchar](max) NOT NULL,
	[GuestArrivedFrom] [nvarchar](max) NOT NULL,
	[IsOutSider] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Guests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Id] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[Module] [tinyint] NOT NULL,
	[JobRole] [tinyint] NOT NULL,
	[ConvocationId] [uniqueidentifier] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passes]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passes](
	[Id] [uniqueidentifier] NOT NULL,
	[PassNumber] [nvarchar](max) NOT NULL,
	[IUSTConvocationId] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[VehicleNo] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Passes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registrations]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registrations](
	[Id] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[Module] [tinyint] NOT NULL,
	[RegistrationStatus] [tinyint] NOT NULL,
	[ParticipantRole] [tinyint] NOT NULL,
	[ConvocationId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Registrations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeatAllocations]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeatAllocations](
	[Id] [uniqueidentifier] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[SeatId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
	[ConvocationId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SeatAllocations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seats]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seats](
	[Id] [uniqueidentifier] NOT NULL,
	[VenueId] [uniqueidentifier] NOT NULL,
	[SeatSection] [tinyint] NOT NULL,
	[Row] [int] NOT NULL,
	[SeatNumber] [nvarchar](max) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Seats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [uniqueidentifier] NOT NULL,
	[RegNumber] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Parentage] [nvarchar](max) NOT NULL,
	[DepartemntId] [uniqueidentifier] NULL,
	[Course] [tinyint] NOT NULL,
	[Batch] [int] NOT NULL,
	[Percentage] [float] NOT NULL,
	[Position] [tinyint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Salt] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[ContactNo] [nvarchar](max) NOT NULL,
	[ResetCode] [nvarchar](max) NOT NULL,
	[Gender] [tinyint] NOT NULL,
	[UserRole] [tinyint] NOT NULL,
	[UserStatus] [tinyint] NOT NULL,
	[IsEmailVerified] [bit] NOT NULL,
	[ConfirmationCode] [nvarchar](max) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venues]    Script Date: 2023-11-04 13:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venues](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[TotalSeats] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231024064030_initialmig', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231024144526_venue-added', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231024145057_venues-added', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231025071704_payment', N'7.0.9')
GO
INSERT [dbo].[AppFiles] ([Id], [Module], [FilePath], [EntityId], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'bdd45d1b-17e3-418d-8b98-f40df56b41c5', 2, N'Files\7029f00b-1328-47d1-8540-8a48a0ad6114186995104_3961442253941530_6071202207386713662_n.jpg', N'7e3d3917-ac5e-4ad4-8d17-6911d6844d9f', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-01T10:16:11.1099715+05:30' AS DateTimeOffset), CAST(N'2023-11-01T10:16:11.1024726+05:30' AS DateTimeOffset))
GO
INSERT [dbo].[Convocations] ([Id], [Name], [ConvocationDate], [End], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn], [Description], [VenueId]) VALUES (N'd82ad373-dce9-4984-b0c3-009754c88762', N'sports convocation', CAST(N'2023-12-07T10:32:00.0000000+05:30' AS DateTimeOffset), CAST(N'10:30:00' AS Time), 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-31T11:54:22.8167019+05:30' AS DateTimeOffset), CAST(N'2023-10-31T11:54:22.8167032+05:30' AS DateTimeOffset), N'sports ', N'85270aa6-9ff6-4bad-9c0e-2063823d4558')
INSERT [dbo].[Convocations] ([Id], [Name], [ConvocationDate], [End], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn], [Description], [VenueId]) VALUES (N'bee3eae8-39c8-4ff1-bf7f-6a34cc67debc', N'Diplom certification', CAST(N'2023-11-11T18:56:00.0000000+05:30' AS DateTimeOffset), CAST(N'20:30:00' AS Time), 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-02T18:59:06.4382533+05:30' AS DateTimeOffset), CAST(N'2023-11-02T18:59:06.4382541+05:30' AS DateTimeOffset), N'Certification diploma', N'85270aa6-9ff6-4bad-9c0e-2063823d4558')
INSERT [dbo].[Convocations] ([Id], [Name], [ConvocationDate], [End], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn], [Description], [VenueId]) VALUES (N'35b42753-59e2-49a5-a197-722a29088fb1', N'Diploma Delight', CAST(N'2023-11-25T00:00:00.0000000+05:30' AS DateTimeOffset), CAST(N'10:30:00' AS Time), 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-02T17:23:45.1290026+05:30' AS DateTimeOffset), CAST(N'2023-11-02T17:23:45.1290038+05:30' AS DateTimeOffset), N'diploma', N'85270aa6-9ff6-4bad-9c0e-2063823d4558')
INSERT [dbo].[Convocations] ([Id], [Name], [ConvocationDate], [End], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn], [Description], [VenueId]) VALUES (N'aa3ba729-405b-489e-a87c-b5855135d8c7', N'Certificate Convocation', CAST(N'2023-12-10T10:33:00.0000000+05:30' AS DateTimeOffset), CAST(N'10:30:00' AS Time), 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-31T12:12:28.7077574+05:30' AS DateTimeOffset), CAST(N'2023-10-31T12:12:28.7077579+05:30' AS DateTimeOffset), N'', N'85270aa6-9ff6-4bad-9c0e-2063823d4558')
INSERT [dbo].[Convocations] ([Id], [Name], [ConvocationDate], [End], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn], [Description], [VenueId]) VALUES (N'82be4a71-e77c-4835-9776-d129359fdef1', N'fjdfj', CAST(N'2023-11-04T12:09:00.0000000+05:30' AS DateTimeOffset), CAST(N'10:30:00' AS Time), 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-31T12:09:29.8799260+05:30' AS DateTimeOffset), CAST(N'2023-10-31T12:09:29.8799270+05:30' AS DateTimeOffset), N'afdklfjd', N'85270aa6-9ff6-4bad-9c0e-2063823d4558')
INSERT [dbo].[Convocations] ([Id], [Name], [ConvocationDate], [End], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn], [Description], [VenueId]) VALUES (N'1a52b524-62a7-47a1-ab4b-f650d0a137a9', N'kashmir', CAST(N'2023-11-03T11:54:00.0000000+05:30' AS DateTimeOffset), CAST(N'10:30:00' AS Time), 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-31T11:55:45.4857113+05:30' AS DateTimeOffset), CAST(N'2023-10-31T11:55:45.4857118+05:30' AS DateTimeOffset), N'asdf', N'85270aa6-9ff6-4bad-9c0e-2063823d4558')
GO
INSERT [dbo].[Departments] ([Id], [DepartmentName], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'c5ebfb81-086c-45f8-81bc-7c8daa3e3a51', N'Information Technology', 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-26T11:11:37.8866611+05:30' AS DateTimeOffset), CAST(N'2023-10-26T11:11:37.8866668+05:30' AS DateTimeOffset))
INSERT [dbo].[Departments] ([Id], [DepartmentName], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'dd596988-1e7b-41d6-aeb7-7d091fdc32aa', N'arts  arts', 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-27T12:06:19.2014466+05:30' AS DateTimeOffset), CAST(N'2023-10-27T12:06:19.2014479+05:30' AS DateTimeOffset))
INSERT [dbo].[Departments] ([Id], [DepartmentName], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'9206afaf-697b-490a-8a4d-ba40bc35a49f', N'Management Studies', 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-29T12:21:34.6282682+05:30' AS DateTimeOffset), CAST(N'2023-10-29T12:21:34.6282697+05:30' AS DateTimeOffset))
GO
INSERT [dbo].[Employees] ([Id], [Name], [EmpCode], [Designation], [IsDeleted], [DepartemntId], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'ae1a7fcd-ec45-4ac9-b002-1a99b2011a15', N'a', N'', 1, 0, N'c5ebfb81-086c-45f8-81bc-7c8daa3e3a51', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T17:31:26.5717034+05:30' AS DateTimeOffset), CAST(N'2023-10-28T17:31:26.5717046+05:30' AS DateTimeOffset))
INSERT [dbo].[Employees] ([Id], [Name], [EmpCode], [Designation], [IsDeleted], [DepartemntId], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'80c789bf-f7c8-4b8a-b11d-688da6915f73', N'a', N'', 1, 0, N'c5ebfb81-086c-45f8-81bc-7c8daa3e3a51', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T17:30:58.6993685+05:30' AS DateTimeOffset), CAST(N'2023-10-28T17:30:58.6993695+05:30' AS DateTimeOffset))
INSERT [dbo].[Employees] ([Id], [Name], [EmpCode], [Designation], [IsDeleted], [DepartemntId], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'7e3d3917-ac5e-4ad4-8d17-6911d6844d9f', N'sabir ahmad dar', N'101', 6, 0, N'dd596988-1e7b-41d6-aeb7-7d091fdc32aa', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-31T14:41:26.6857673+05:30' AS DateTimeOffset), CAST(N'2023-10-31T14:41:26.6857687+05:30' AS DateTimeOffset))
INSERT [dbo].[Employees] ([Id], [Name], [EmpCode], [Designation], [IsDeleted], [DepartemntId], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'12b58d7d-436e-416c-8bca-d984a6f81816', N'Sabir Ahmad', N'', 10, 0, N'c5ebfb81-086c-45f8-81bc-7c8daa3e3a51', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-31T14:22:02.6673023+05:30' AS DateTimeOffset), CAST(N'2023-10-31T14:22:02.6673040+05:30' AS DateTimeOffset))
GO
INSERT [dbo].[Registrations] ([Id], [EntityId], [Module], [RegistrationStatus], [ParticipantRole], [ConvocationId], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'fc94adb7-e75a-463f-aaa4-41de59788974', N'0e110ef0-1de8-4d93-9f43-7187d9542182', 0, 2, 11, N'd82ad373-dce9-4984-b0c3-009754c88762', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-03T12:19:47.9187461+05:30' AS DateTimeOffset), CAST(N'2023-11-03T12:19:47.9187511+05:30' AS DateTimeOffset))
INSERT [dbo].[Registrations] ([Id], [EntityId], [Module], [RegistrationStatus], [ParticipantRole], [ConvocationId], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'f3eed547-802b-4ac0-8a0b-447d2d47ae31', N'0e110ef0-1de8-4d93-9f43-7187d9542182', 0, 2, 11, N'bee3eae8-39c8-4ff1-bf7f-6a34cc67debc', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-03T12:19:54.2350362+05:30' AS DateTimeOffset), CAST(N'2023-11-03T12:19:54.2350478+05:30' AS DateTimeOffset))
INSERT [dbo].[Registrations] ([Id], [EntityId], [Module], [RegistrationStatus], [ParticipantRole], [ConvocationId], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'6a485e42-67cd-47cc-8d78-7ee766a74454', N'785d7d0e-7e34-4a11-8ad3-211856daa0e7', 0, 2, 11, N'35b42753-59e2-49a5-a197-722a29088fb1', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-04T02:38:53.3868294+05:30' AS DateTimeOffset), CAST(N'2023-11-04T02:38:53.3868312+05:30' AS DateTimeOffset))
INSERT [dbo].[Registrations] ([Id], [EntityId], [Module], [RegistrationStatus], [ParticipantRole], [ConvocationId], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'1d55e5e5-bb78-4c22-ab06-c3f004767e07', N'00000000-0000-0000-0000-000000000000', 0, 2, 11, N'1a52b524-62a7-47a1-ab4b-f650d0a137a9', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-04T02:38:41.7131512+05:30' AS DateTimeOffset), CAST(N'2023-11-04T02:38:41.7131527+05:30' AS DateTimeOffset))
GO
INSERT [dbo].[SeatAllocations] ([Id], [EntityId], [SeatId], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn], [ConvocationId]) VALUES (N'5452b31e-d86e-4791-b027-4e3282166f59', N'0e110ef0-1de8-4d93-9f43-7187d9542182', N'80cb062e-6228-4669-a10a-cf766ea23b28', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-04T10:16:22.1728960+05:30' AS DateTimeOffset), CAST(N'2023-11-04T10:16:22.1728971+05:30' AS DateTimeOffset), N'aa3ba729-405b-489e-a87c-b5855135d8c7')
INSERT [dbo].[SeatAllocations] ([Id], [EntityId], [SeatId], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn], [ConvocationId]) VALUES (N'e8a0fe13-64b5-4a2f-b405-9f5c333dbf44', N'0e110ef0-1de8-4d93-9f43-7187d9542182', N'80cb062e-6228-4669-a10a-cf766ea23b28', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-04T09:49:03.6472764+05:30' AS DateTimeOffset), CAST(N'2023-11-04T09:49:03.6472773+05:30' AS DateTimeOffset), N'd82ad373-dce9-4984-b0c3-009754c88762')
INSERT [dbo].[SeatAllocations] ([Id], [EntityId], [SeatId], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn], [ConvocationId]) VALUES (N'2c23b63f-a0ee-4d90-8025-d4459a084ad0', N'785d7d0e-7e34-4a11-8ad3-211856daa0e7', N'ed18e1fa-17fc-478a-9fd8-9e454930ab26', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-04T10:31:25.8409993+05:30' AS DateTimeOffset), CAST(N'2023-11-04T10:31:25.8410004+05:30' AS DateTimeOffset), N'35b42753-59e2-49a5-a197-722a29088fb1')
INSERT [dbo].[SeatAllocations] ([Id], [EntityId], [SeatId], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn], [ConvocationId]) VALUES (N'6420ee58-4fbf-47b4-9533-eb285332fbc4', N'0e110ef0-1de8-4d93-9f43-7187d9542182', N'ed18e1fa-17fc-478a-9fd8-9e454930ab26', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-04T01:19:27.0830643+05:30' AS DateTimeOffset), CAST(N'2023-11-04T01:19:27.0830653+05:30' AS DateTimeOffset), N'd82ad373-dce9-4984-b0c3-009754c88762')
GO
INSERT [dbo].[Seats] ([Id], [VenueId], [SeatSection], [Row], [SeatNumber], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'ed18e1fa-17fc-478a-9fd8-9e454930ab26', N'85270aa6-9ff6-4bad-9c0e-2063823d4558', 1, 1, N'1h', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-02T13:06:59.9584181+05:30' AS DateTimeOffset), CAST(N'2023-11-02T13:06:59.9584204+05:30' AS DateTimeOffset))
INSERT [dbo].[Seats] ([Id], [VenueId], [SeatSection], [Row], [SeatNumber], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'80cb062e-6228-4669-a10a-cf766ea23b28', N'85270aa6-9ff6-4bad-9c0e-2063823d4558', 1, 1, N'20', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-02T12:02:40.6180540+05:30' AS DateTimeOffset), CAST(N'2023-11-02T12:02:40.6180559+05:30' AS DateTimeOffset))
GO
INSERT [dbo].[Students] ([Id], [RegNumber], [Name], [Parentage], [DepartemntId], [Course], [Batch], [Percentage], [Position], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'994e4414-34e6-4eb9-9495-027bb7616475', N'string', N'string', N'string', N'c5ebfb81-086c-45f8-81bc-7c8daa3e3a51', 1, 0, 0, 1, 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-27T17:29:16.7187408+05:30' AS DateTimeOffset), CAST(N'2023-10-27T17:29:16.7187416+05:30' AS DateTimeOffset))
INSERT [dbo].[Students] ([Id], [RegNumber], [Name], [Parentage], [DepartemntId], [Course], [Batch], [Percentage], [Position], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'3fd2c819-a312-4690-84c0-1f330809f349', N'102s', N'abul ahad', N'ali mohd dar', N'dd596988-1e7b-41d6-aeb7-7d091fdc32aa', 2, 2020, 99, 1, 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T08:45:39.4269862+05:30' AS DateTimeOffset), CAST(N'2023-10-28T08:45:39.4269872+05:30' AS DateTimeOffset))
INSERT [dbo].[Students] ([Id], [RegNumber], [Name], [Parentage], [DepartemntId], [Course], [Batch], [Percentage], [Position], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'785d7d0e-7e34-4a11-8ad3-211856daa0e7', N'101', N'sabir', N'sabir Ahmad', N'c5ebfb81-086c-45f8-81bc-7c8daa3e3a51', 1, 0, 0, 1, 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-26T11:17:17.0598580+05:30' AS DateTimeOffset), CAST(N'2023-10-26T11:17:17.0598652+05:30' AS DateTimeOffset))
INSERT [dbo].[Students] ([Id], [RegNumber], [Name], [Parentage], [DepartemntId], [Course], [Batch], [Percentage], [Position], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'7dd2be52-a9af-4ded-88cf-6329a2058154', N'102s', N'abul ahad', N'ali mohd dar', N'c5ebfb81-086c-45f8-81bc-7c8daa3e3a51', 2, 2020, 99, 1, 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T08:52:14.3311065+05:30' AS DateTimeOffset), CAST(N'2023-10-28T08:52:14.3311073+05:30' AS DateTimeOffset))
INSERT [dbo].[Students] ([Id], [RegNumber], [Name], [Parentage], [DepartemntId], [Course], [Batch], [Percentage], [Position], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'0e110ef0-1de8-4d93-9f43-7187d9542182', N'Sabir', N'0', N'0', N'dd596988-1e7b-41d6-aeb7-7d091fdc32aa', 1, 1, 0, 1, 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T12:47:06.9190747+05:30' AS DateTimeOffset), CAST(N'2023-10-28T12:47:06.9190765+05:30' AS DateTimeOffset))
INSERT [dbo].[Students] ([Id], [RegNumber], [Name], [Parentage], [DepartemntId], [Course], [Batch], [Percentage], [Position], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'56446665-df2e-4a6e-bd4d-72941e55d827', N'232s', N'shahid', N'shahid', N'c5ebfb81-086c-45f8-81bc-7c8daa3e3a51', 1, 2020, 50, 1, 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-27T17:14:52.8716945+05:30' AS DateTimeOffset), CAST(N'2023-10-27T17:14:52.8716960+05:30' AS DateTimeOffset))
INSERT [dbo].[Students] ([Id], [RegNumber], [Name], [Parentage], [DepartemntId], [Course], [Batch], [Percentage], [Position], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'0f188ccc-9136-42f6-a27f-80ddd885cf88', N'101s', N'amir', N'Bashir', N'c5ebfb81-086c-45f8-81bc-7c8daa3e3a51', 1, 2020, 50, 1, 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-26T12:58:35.9885424+05:30' AS DateTimeOffset), CAST(N'2023-10-26T12:58:35.9885474+05:30' AS DateTimeOffset))
INSERT [dbo].[Students] ([Id], [RegNumber], [Name], [Parentage], [DepartemntId], [Course], [Batch], [Percentage], [Position], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'6732cee3-1f0c-4826-b01d-ba650514554d', N'123', N'amira', N'afdf', N'c5ebfb81-086c-45f8-81bc-7c8daa3e3a51', 2, 32343, 3434, 1, 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-03T12:58:04.3917827+05:30' AS DateTimeOffset), CAST(N'2023-11-03T12:58:04.3917845+05:30' AS DateTimeOffset))
INSERT [dbo].[Students] ([Id], [RegNumber], [Name], [Parentage], [DepartemntId], [Course], [Batch], [Percentage], [Position], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'0673b4a4-091e-4eca-8e59-e4ec1d2bc3ba', N'string', N'string', N'string', N'c5ebfb81-086c-45f8-81bc-7c8daa3e3a51', 1, 0, 0, 1, 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-26T13:42:18.6421611+05:30' AS DateTimeOffset), CAST(N'2023-10-26T13:42:18.6421669+05:30' AS DateTimeOffset))
INSERT [dbo].[Students] ([Id], [RegNumber], [Name], [Parentage], [DepartemntId], [Course], [Batch], [Percentage], [Position], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'0c761e70-85b8-4409-8208-fba09b7e4314', N'string', N'string', N'string', N'c5ebfb81-086c-45f8-81bc-7c8daa3e3a51', 1, 0, 0, 1, 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-26T13:50:28.2180649+05:30' AS DateTimeOffset), CAST(N'2023-10-26T13:50:28.2180690+05:30' AS DateTimeOffset))
INSERT [dbo].[Students] ([Id], [RegNumber], [Name], [Parentage], [DepartemntId], [Course], [Batch], [Percentage], [Position], [IsDeleted], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'25b22a5b-3363-4bfa-9e19-fccc343d5d40', N'Sabir', N'asds', N'sdas', N'c5ebfb81-086c-45f8-81bc-7c8daa3e3a51', 1, 1, 8, 1, 0, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T13:11:32.1873963+05:30' AS DateTimeOffset), CAST(N'2023-10-28T13:11:32.1873973+05:30' AS DateTimeOffset))
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'764cbe0e-9b2e-4d95-af49-01b45a0fca5b', N'admin', N'$2a$11$TYYBxfFaSET3Oizd0CXEleNVtkdE7FEE.p60NpoAT13WT38X2OP5q', N'$2a$11$TYYBxfFaSET3Oizd0CXEle', N'samiaullah1@gmail.com', N'8828084050', N'', 1, 1, 1, 1, N'', N'3d992083-03c9-43b1-b25d-54fd1e862254', N'a379e688-68e8-4271-92aa-a80b65d45efa', CAST(N'2023-10-25T12:47:03.6278306+05:30' AS DateTimeOffset), CAST(N'2023-10-25T12:47:03.6278317+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'994e4414-34e6-4eb9-9495-027bb7616475', N'string', N'$2a$11$e6KNr7107kXX8KhWIpJA4.zSlLdhLhXSMJX83fUvP6//muAwjDupi', N'$2a$11$e6KNr7107kXX8KhWIpJA4.', N'Rz2Ap9VMzj6_NoWoGHGiKbAyYMDbMITA3bjLQ6.8_8mXNsZZZxssHkB6FO7Q50ocr1MUkkJV+UU1x-jAhVTDz9dzE@2orMgS7m6eBUii4B9DvChMT9a4RywvYZcKjLqp1X4n1vXtV3', N'string', N'', 1, 2, 3, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-27T17:29:16.4243303+05:30' AS DateTimeOffset), CAST(N'2023-10-27T17:29:16.4243314+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'ae1a7fcd-ec45-4ac9-b002-1a99b2011a15', N'sabir2@gmail.com', N'$2a$11$1jY6XEu0RooigKAN7TzTbuNJfos3GqQt3AMT8WgrfjJSKpKtV5/MK', N'$2a$11$1jY6XEu0RooigKAN7TzTbu', N'sabir2@gmail.com', N'afd', N'', 0, 3, 1, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T17:31:26.3353593+05:30' AS DateTimeOffset), CAST(N'2023-10-28T17:31:26.3353604+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'f8977eb8-1f57-486d-b656-1bc2566a0543', N'amiryousuf@gmail.com', N'$2a$11$XaZri2Pgd/r3CwWiu0lEg.DBzszy.DQCoYSssjCzY5hnQ4588fadq', N'$2a$11$XaZri2Pgd/r3CwWiu0lEg.', N'amiryousuf@gmail.com', N'834574545', N'', 0, 1, 1, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T17:35:32.3460586+05:30' AS DateTimeOffset), CAST(N'2023-10-28T17:35:32.3460601+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'3fd2c819-a312-4690-84c0-1f330809f349', N'abdul ahad', N'$2a$11$Rke6RyxqL8cVf7pvF3o/huWQTJ.y/.KgAiZM0Gi.weG3oc0TKIMHK', N'$2a$11$Rke6RyxqL8cVf7pvF3o/hu', N'abud@gmail.com', N'87999887', N'', 1, 2, 3, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T08:45:39.0348916+05:30' AS DateTimeOffset), CAST(N'2023-10-28T08:45:39.0348943+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'785d7d0e-7e34-4a11-8ad3-211856daa0e7', N'sabir', N'$2a$11$F772vSRQVVgkuokbT4LnPe8xwW5pHTDvZE8pp.8hr0qrhuE4wWBd6', N'$2a$11$F772vSRQVVgkuokbT4LnPe', N'sabir@gmail.com', N'9906778899', N'', 1, 2, 3, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-26T11:17:16.2202295+05:30' AS DateTimeOffset), CAST(N'2023-10-26T11:17:16.2202332+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'7dd2be52-a9af-4ded-88cf-6329a2058154', N'abdul ', N'$2a$11$Fd83cpRoSljF4Aq2SmqZs.YfYa.wDwRbFAysfa9jUwMuMOJyWkL2a', N'$2a$11$Fd83cpRoSljF4Aq2SmqZs.', N'abud1@gmail.com', N'87999887', N'', 1, 2, 3, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T08:52:14.0279510+05:30' AS DateTimeOffset), CAST(N'2023-10-28T08:52:14.0279526+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'80c789bf-f7c8-4b8a-b11d-688da6915f73', N'sabir1@gmail.com', N'$2a$11$443npZr3M3YRFgK2ftg5yu6G1vCD91/WXlKZik1fcaQEIgaetRVjq', N'$2a$11$443npZr3M3YRFgK2ftg5yu', N'sabir1@gmail.com', N'afd', N'', 0, 3, 1, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T17:30:58.4730765+05:30' AS DateTimeOffset), CAST(N'2023-10-28T17:30:58.4730776+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'7e3d3917-ac5e-4ad4-8d17-6911d6844d9f', N'studentpointwithu+2@gmail.com', N'$2a$11$qH2SCGDszHH3QLr1LLEpFO4.gblpTww.dYVS3iidspbJOTmb9qRsC', N'$2a$11$qH2SCGDszHH3QLr1LLEpFO', N'sabirbhai@gmail.com', N'9906700000', N'', 1, 3, 1, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-31T14:41:26.2335857+05:30' AS DateTimeOffset), CAST(N'2023-10-31T14:41:26.2335886+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'72e71482-2d79-4ea5-8a13-6efd08d43a47', N'tnLlM.Fujde_ziaRv.5p8DG-QdTZYQR7eNZZViAMqbPnrnAzjePE.KxG4dJsdld-RdFyVrzeBVdrPoe9mT4ecvdsa_rI439p@r9gRUst7FpGE4fAOw1wFodRKgCxjkrbcizCB1UHp.0LoiT1tCH.6Kg5V', N'$2a$11$HMq/VNXeSA.d4h4lmcsaTeqIs8Sp37hxestU60BkmGFdFFrwrQNVO', N'$2a$11$HMq/VNXeSA.d4h4lmcsaTe', N'tnLlM.Fujde_ziaRv.5p8DG-QdTZYQR7eNZZViAMqbPnrnAzjePE.KxG4dJsdld-RdFyVrzeBVdrPoe9mT4ecvdsa_rI439p@r9gRUst7FpGE4fAOw1wFodRKgCxjkrbcizCB1UHp.0LoiT1tCH.6Kg5V', N'string', N'', 0, 1, 1, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T15:41:20.4307010+05:30' AS DateTimeOffset), CAST(N'2023-10-28T15:41:20.4307034+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'0e110ef0-1de8-4d93-9f43-7187d9542182', N'0', N'$2a$11$wreHZdteJQFHMcEQhIJMruryuexT2LsJ0.HhvwYLL8D141qLzxz5i', N'$2a$11$wreHZdteJQFHMcEQhIJMru', N'sdfsdf@gmail.com', N'0', N'', 1, 2, 3, 0, N'5560', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T12:47:06.4817756+05:30' AS DateTimeOffset), CAST(N'2023-10-28T12:47:06.4817783+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'56446665-df2e-4a6e-bd4d-72941e55d827', N'shahid', N'$2a$11$hD/pU55YDUkeih0kZQaqNOan9vqe9dmnqTuA6quoUYz9S8zxQwbi6', N'$2a$11$hD/pU55YDUkeih0kZQaqNO', N'shahid@gmail.com', N'5039458349', N'', 1, 2, 3, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-27T17:14:52.4034996+05:30' AS DateTimeOffset), CAST(N'2023-10-27T17:14:52.4035010+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'0f188ccc-9136-42f6-a27f-80ddd885cf88', N'amir', N'$2a$11$fm3caGlsfm4TJsFN0c7qz.XufxBNXD1IrY0wMkvvD9BgNB0Bk.Pay', N'$2a$11$fm3caGlsfm4TJsFN0c7qz.', N'amir@gmail.com', N'8899774433', N'', 1, 2, 3, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-26T12:58:35.5304005+05:30' AS DateTimeOffset), CAST(N'2023-10-26T12:58:35.5304137+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'ed13c100-55f3-4bb2-ad21-86eb5dcad9c6', N'sabir00@gmail.com', N'$2a$11$s1cWKxwrJQa38fDV3CSjdeWExcohCP50FoEjJkJyhJVsPiN80FPxa', N'$2a$11$s1cWKxwrJQa38fDV3CSjde', N'sabir00@gmail.com', N'9906774455', N'', 0, 1, 1, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-31T14:18:32.3963915+05:30' AS DateTimeOffset), CAST(N'2023-10-31T14:18:32.3963955+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'e5fdee9b-91fc-420e-bcb5-87b2695ae87b', N'amiryousuf1@gmail.com', N'$2a$11$LM3gkl.DIsKYBjWEjyNv7uw4gJ2p7pWJXyJX61KWmDRfqy1KU3bqu', N'$2a$11$LM3gkl.DIsKYBjWEjyNv7u', N'amiryousuf1@gmail.com', N'834574545', N'', 0, 1, 1, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T17:36:00.0820948+05:30' AS DateTimeOffset), CAST(N'2023-10-28T17:36:00.0820958+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'426d6bfc-5ec1-4e00-a5d2-b198a4b2a089', N'amirali@gmail.com', N'$2a$11$JglJ0xJblRxCsTP7YRoZ2OlMqIAcS8.LSzERHMGeDQz.3Gwm/7gjy', N'$2a$11$JglJ0xJblRxCsTP7YRoZ2O', N'amirali@gmail.com', N'5485495', N'', 0, 1, 1, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T17:37:35.3396965+05:30' AS DateTimeOffset), CAST(N'2023-10-28T17:37:35.3396978+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'6732cee3-1f0c-4826-b01d-ba650514554d', N'afdfd', N'$2a$11$STb/wyYuEiO/Rmtg5G1X0uXUE8EbHp6CZ5KtjJxPgRwqgK.wLzrD2', N'$2a$11$STb/wyYuEiO/Rmtg5G1X0u', N'adfdf@gamil.com', N'89343743947', N'', 1, 2, 3, 0, N'4290', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-11-03T12:58:03.9225543+05:30' AS DateTimeOffset), CAST(N'2023-11-03T12:58:03.9225558+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'12b58d7d-436e-416c-8bca-d984a6f81816', N'studentpointwithu+1@gmail.com', N'$2a$11$jmwgjBi4MqeawGqgOqaAAeiQm0bh7SZtF1NThh.a8QSKnMpLtocpa', N'$2a$11$jmwgjBi4MqeawGqgOqaAAe', N'studentpointwithu+1@gmail.com', N'9906778899', N'', 0, 3, 1, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-31T14:22:02.1811317+05:30' AS DateTimeOffset), CAST(N'2023-10-31T14:22:02.1811348+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'381fe3f0-9c04-42f4-b24d-e02138b3223b', N'sabir0078@gmail.com', N'$2a$11$hsYy.o5ThPxgfA99y0fRme5OHXTVCFHiE2t9YUUyRA7KFTnK850Z6', N'$2a$11$hsYy.o5ThPxgfA99y0fRme', N'sabir0078@gmail.com', N'9906774455', N'', 0, 1, 1, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-31T14:18:51.2437157+05:30' AS DateTimeOffset), CAST(N'2023-10-31T14:18:51.2437201+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'0673b4a4-091e-4eca-8e59-e4ec1d2bc3ba', N'string1', N'$2a$11$ryerSjlBTJ5RlbI7bWtO2uzmlrafT3hSq/A9KJOSxTWQ0/ZycZmty', N'$2a$11$ryerSjlBTJ5RlbI7bWtO2u', N'string@gmail.com', N'string', N'', 1, 2, 3, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-26T13:42:18.2634863+05:30' AS DateTimeOffset), CAST(N'2023-10-26T13:42:18.2634900+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'0c761e70-85b8-4409-8208-fba09b7e4314', N'string5', N'$2a$11$VCpgHtRw1gnKE9gGRVZ7VOMSGLRJLsYKoGE2xD8YvPQFoPH3xB7se', N'$2a$11$VCpgHtRw1gnKE9gGRVZ7VO', N'0T86zeXwmOOhIEJXMhHmMtV2FCgU209rZN9ZEp2lJha5sGpu2ya3WgXXmHAOcOWVX8zaAKd4-kQJOsS.8WkdBtW.gi@g6cSwQaDTnjQcL4AF8tW3lRrRFEK2bLZ-0rqUUCh3AelecLIQNxxzwXFsTNl6rY', N'string5', N'', 1, 2, 3, 1, N'', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-26T13:50:27.7377272+05:30' AS DateTimeOffset), CAST(N'2023-10-26T13:50:27.7377319+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [Username], [Password], [Salt], [Email], [ContactNo], [ResetCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [ConfirmationCode], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'25b22a5b-3363-4bfa-9e19-fccc343d5d40', N'dfsd', N'$2a$11$bzZbmRL.zJFm6n6WkPJbGuPqLryqhQWeNAhgdSX7q4m5yomODOhPm', N'$2a$11$bzZbmRL.zJFm6n6WkPJbGu', N'ads@sdfdf.com', N'1', N'', 1, 2, 3, 0, N'2906', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T13:11:31.9448694+05:30' AS DateTimeOffset), CAST(N'2023-10-28T13:11:31.9448709+05:30' AS DateTimeOffset))
GO
INSERT [dbo].[Venues] ([Id], [Name], [TotalSeats], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'85270aa6-9ff6-4bad-9c0e-2063823d4558', N'Kashmir University', 20, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T18:49:06.2325689+05:30' AS DateTimeOffset), CAST(N'2023-10-28T18:49:06.2325745+05:30' AS DateTimeOffset))
INSERT [dbo].[Venues] ([Id], [Name], [TotalSeats], [CreatedBy], [UpdatedBy], [CreatedOn], [UpdatedOn]) VALUES (N'2338789a-0b22-43dc-ad50-91960ff9afe0', N'Islamic University', 454, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2023-10-28T19:58:48.6569970+05:30' AS DateTimeOffset), CAST(N'2023-10-28T19:58:48.6570022+05:30' AS DateTimeOffset))
GO
ALTER TABLE [dbo].[Convocations] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [VenueId]
GO
ALTER TABLE [dbo].[SeatAllocations] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ConvocationId]
GO
ALTER TABLE [dbo].[AppPayments]  WITH CHECK ADD  CONSTRAINT [FK_AppPayments_AppOrders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[AppOrders] ([Id])
GO
ALTER TABLE [dbo].[AppPayments] CHECK CONSTRAINT [FK_AppPayments_AppOrders_OrderId]
GO
ALTER TABLE [dbo].[Convocations]  WITH CHECK ADD  CONSTRAINT [FK_Convocations_Venues_VenueId] FOREIGN KEY([VenueId])
REFERENCES [dbo].[Venues] ([Id])
GO
ALTER TABLE [dbo].[Convocations] CHECK CONSTRAINT [FK_Convocations_Venues_VenueId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments_DepartemntId] FOREIGN KEY([DepartemntId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments_DepartemntId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Users_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Users_Id]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_Convocations_ConvocationId] FOREIGN KEY([ConvocationId])
REFERENCES [dbo].[Convocations] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_Convocations_ConvocationId]
GO
ALTER TABLE [dbo].[Passes]  WITH CHECK ADD  CONSTRAINT [FK_Passes_Convocations_IUSTConvocationId] FOREIGN KEY([IUSTConvocationId])
REFERENCES [dbo].[Convocations] ([Id])
GO
ALTER TABLE [dbo].[Passes] CHECK CONSTRAINT [FK_Passes_Convocations_IUSTConvocationId]
GO
ALTER TABLE [dbo].[Registrations]  WITH CHECK ADD  CONSTRAINT [FK_Registrations_Convocations_ConvocationId] FOREIGN KEY([ConvocationId])
REFERENCES [dbo].[Convocations] ([Id])
GO
ALTER TABLE [dbo].[Registrations] CHECK CONSTRAINT [FK_Registrations_Convocations_ConvocationId]
GO
ALTER TABLE [dbo].[SeatAllocations]  WITH CHECK ADD  CONSTRAINT [FK_SeatAllocations_Convocations_ConvocationId] FOREIGN KEY([ConvocationId])
REFERENCES [dbo].[Convocations] ([Id])
GO
ALTER TABLE [dbo].[SeatAllocations] CHECK CONSTRAINT [FK_SeatAllocations_Convocations_ConvocationId]
GO
ALTER TABLE [dbo].[SeatAllocations]  WITH CHECK ADD  CONSTRAINT [FK_SeatAllocations_Seats_SeatId] FOREIGN KEY([SeatId])
REFERENCES [dbo].[Seats] ([Id])
GO
ALTER TABLE [dbo].[SeatAllocations] CHECK CONSTRAINT [FK_SeatAllocations_Seats_SeatId]
GO
ALTER TABLE [dbo].[Seats]  WITH CHECK ADD  CONSTRAINT [FK_Seats_Venues_VenueId] FOREIGN KEY([VenueId])
REFERENCES [dbo].[Venues] ([Id])
GO
ALTER TABLE [dbo].[Seats] CHECK CONSTRAINT [FK_Seats_Venues_VenueId]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Departments_DepartemntId] FOREIGN KEY([DepartemntId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Departments_DepartemntId]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Users_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Users_Id]
GO
