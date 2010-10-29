
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 10/23/2010 21:39:11
-- Generated from EDMX file: D:\codeschudder\MyShoeShoes\MyShoeShoes\Shoe.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MyShoeShoes];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Shoes'
CREATE TABLE [dbo].[Shoes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ShoeType_Hakken] int  NOT NULL,
    [ShoeType_Laarzen] int  NOT NULL,
    [ShoeType_Slippers] int  NOT NULL,
    [ShoeType_Gympies] int  NOT NULL,
    [ShoeDescriptionId] int  NOT NULL
);
GO

-- Creating table 'ShoeDescriptions'
CREATE TABLE [dbo].[ShoeDescriptions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ShoeDetails] nvarchar(max)  NOT NULL,
    [ShoeShort] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Shoes_Shoecolor'
CREATE TABLE [dbo].[Shoes_Shoecolor] (
    [Color] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Shoes'
ALTER TABLE [dbo].[Shoes]
ADD CONSTRAINT [PK_Shoes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ShoeDescriptions'
ALTER TABLE [dbo].[ShoeDescriptions]
ADD CONSTRAINT [PK_ShoeDescriptions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Shoes_Shoecolor'
ALTER TABLE [dbo].[Shoes_Shoecolor]
ADD CONSTRAINT [PK_Shoes_Shoecolor]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ShoeDescriptionId] in table 'Shoes'
ALTER TABLE [dbo].[Shoes]
ADD CONSTRAINT [FK_ShoeDescriptionShoe]
    FOREIGN KEY ([ShoeDescriptionId])
    REFERENCES [dbo].[ShoeDescriptions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ShoeDescriptionShoe'
CREATE INDEX [IX_FK_ShoeDescriptionShoe]
ON [dbo].[Shoes]
    ([ShoeDescriptionId]);
GO

-- Creating foreign key on [Id] in table 'Shoes_Shoecolor'
ALTER TABLE [dbo].[Shoes_Shoecolor]
ADD CONSTRAINT [FK_Shoecolor_inherits_Shoe]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Shoes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------