----create table [UserRole](
----Id int int primary key identity,
----Name nvarchar(150)
----)

--go
--create table [UserInfo](
--UserInfoId int primary key identity,
--UserSurname nvarchar(50),
--UserName nvarchar(50),
--UserPatronymic nvarchar(50),
--Phone int
--)

--go
--create table[User](
--UserId int primary key identity,
--[Login] nvarchar(50),
--[Password] nvarchar(50),
--UserInfoID int foreign key references [UserInfo](UserInfoID),
--RoleId int foreign key references [UserRole](RoleId)
--)

--go
--create table [StatusOrder](
--Id int primary key identity,
--[Name] nvarchar(150)
--)

--go
--create table [Order](
--Id int primary key identity,
--DataOrder date,
--DataManufacture date,
--UserInfoID int foreign key references [UserInfo](UserInfoID),
--StatusOrderId int foreign key references [StatusOrder](Id)
--)

--go
--create table [NameProduct](
--Id int primary key identity,
--Name nvarchar(100)
--)

--go
--create table [CategoryItem](
--Id int primary key identity,
--Name nvarchar(50)
--)

--go
--create table [Product](
--ArticleNumber int primary key identity,
--NameId int foreign key references [NameProduct](Id),
--CurrentDiscount int,
--CategoryItemId int foreign key references [CategoryItem](Id),
--CountProductStock int,
--Discription nvarchar(250),
--Size nvarchar(20)
--)

--go
--create table [OrderHasProduct](
--Id int primary key identity,
--OrderId int foreign key references [Order](Id),
--ProductArticlNumber int foreign key references [Product](ArticleNumber)
--)
