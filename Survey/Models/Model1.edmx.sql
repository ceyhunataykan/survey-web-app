
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/28/2019 15:56:54
-- Generated from EDMX file: C:\Users\ceyhunataykan\Documents\works\survey-web-app-master\Survey\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Anket];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Kullanici_Rol]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Kullanici] DROP CONSTRAINT [FK_Kullanici_Rol];
GO
IF OBJECT_ID(N'[dbo].[FK_Secenek_Soru]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Secenekler] DROP CONSTRAINT [FK_Secenek_Soru];
GO
IF OBJECT_ID(N'[dbo].[FK_Soru_Anket]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sorular] DROP CONSTRAINT [FK_Soru_Anket];
GO
IF OBJECT_ID(N'[dbo].[FK_Yanit_Anket]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Yanitlar] DROP CONSTRAINT [FK_Yanit_Anket];
GO
IF OBJECT_ID(N'[dbo].[FK_Yanit_Secenek]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Yanitlar] DROP CONSTRAINT [FK_Yanit_Secenek];
GO
IF OBJECT_ID(N'[dbo].[FK_Yanit_Soru]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Yanitlar] DROP CONSTRAINT [FK_Yanit_Soru];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Anketler]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Anketler];
GO
IF OBJECT_ID(N'[dbo].[Kullanici]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kullanici];
GO
IF OBJECT_ID(N'[dbo].[Rol]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rol];
GO
IF OBJECT_ID(N'[dbo].[Secenekler]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Secenekler];
GO
IF OBJECT_ID(N'[dbo].[Sorular]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sorular];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Yanitlar]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Yanitlar];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Anketler'
CREATE TABLE [dbo].[Anketler] (
    [Anket_ID] int IDENTITY(1,1) NOT NULL,
    [Anket_Adi] nvarchar(150)  NULL,
    [Anket_Baslangic_Tarih] datetime  NULL,
    [Anket_Bitis_Tarih] datetime  NULL,
    [Anket_Katilim] int  NULL,
    [Anket_Durum] bit  NULL
);
GO

-- Creating table 'Kullanici'
CREATE TABLE [dbo].[Kullanici] (
    [Kullanici_ID] int IDENTITY(1,1) NOT NULL,
    [Kullanici_Adi] nvarchar(50)  NULL,
    [Kullanici_Parola] nvarchar(50)  NULL,
    [Kullanici_Email] nvarchar(50)  NULL,
    [Rol_ID] int  NULL,
    [Kayıt_Tarihi] datetime  NULL,
    [Son_Giris_Tarihi] datetime  NULL,
    [Durum] bit  NULL
);
GO

-- Creating table 'Rol'
CREATE TABLE [dbo].[Rol] (
    [Rol_ID] int IDENTITY(1,1) NOT NULL,
    [Rol_Adi] nvarchar(50)  NULL
);
GO

-- Creating table 'Secenekler'
CREATE TABLE [dbo].[Secenekler] (
    [Secenek_ID] int IDENTITY(1,1) NOT NULL,
    [Secenek_Adi] nvarchar(max)  NULL,
    [Soru_ID] int  NULL
);
GO

-- Creating table 'Sorular'
CREATE TABLE [dbo].[Sorular] (
    [Soru_ID] int IDENTITY(1,1) NOT NULL,
    [Anket_ID] int  NULL,
    [Soru_Baslik] nvarchar(max)  NULL,
    [Soru_Tipi] int  NULL,
    [Soru_Durum] bit  NULL,
    [Soru_Olusturma_Tarih] datetime  NULL,
    [Soru_Guncelle_Tarih] datetime  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Yanitlar'
CREATE TABLE [dbo].[Yanitlar] (
    [Yanit_ID] int IDENTITY(1,1) NOT NULL,
    [Anket_ID] int  NULL,
    [Soru_ID] int  NULL,
    [Secenek_ID] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Anket_ID] in table 'Anketler'
ALTER TABLE [dbo].[Anketler]
ADD CONSTRAINT [PK_Anketler]
    PRIMARY KEY CLUSTERED ([Anket_ID] ASC);
GO

-- Creating primary key on [Kullanici_ID] in table 'Kullanici'
ALTER TABLE [dbo].[Kullanici]
ADD CONSTRAINT [PK_Kullanici]
    PRIMARY KEY CLUSTERED ([Kullanici_ID] ASC);
GO

-- Creating primary key on [Rol_ID] in table 'Rol'
ALTER TABLE [dbo].[Rol]
ADD CONSTRAINT [PK_Rol]
    PRIMARY KEY CLUSTERED ([Rol_ID] ASC);
GO

-- Creating primary key on [Secenek_ID] in table 'Secenekler'
ALTER TABLE [dbo].[Secenekler]
ADD CONSTRAINT [PK_Secenekler]
    PRIMARY KEY CLUSTERED ([Secenek_ID] ASC);
GO

-- Creating primary key on [Soru_ID] in table 'Sorular'
ALTER TABLE [dbo].[Sorular]
ADD CONSTRAINT [PK_Sorular]
    PRIMARY KEY CLUSTERED ([Soru_ID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [Yanit_ID] in table 'Yanitlar'
ALTER TABLE [dbo].[Yanitlar]
ADD CONSTRAINT [PK_Yanitlar]
    PRIMARY KEY CLUSTERED ([Yanit_ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Anket_ID] in table 'Sorular'
ALTER TABLE [dbo].[Sorular]
ADD CONSTRAINT [FK_Soru_Anket]
    FOREIGN KEY ([Anket_ID])
    REFERENCES [dbo].[Anketler]
        ([Anket_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Soru_Anket'
CREATE INDEX [IX_FK_Soru_Anket]
ON [dbo].[Sorular]
    ([Anket_ID]);
GO

-- Creating foreign key on [Anket_ID] in table 'Yanitlar'
ALTER TABLE [dbo].[Yanitlar]
ADD CONSTRAINT [FK_Yanit_Anket]
    FOREIGN KEY ([Anket_ID])
    REFERENCES [dbo].[Anketler]
        ([Anket_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Yanit_Anket'
CREATE INDEX [IX_FK_Yanit_Anket]
ON [dbo].[Yanitlar]
    ([Anket_ID]);
GO

-- Creating foreign key on [Rol_ID] in table 'Kullanici'
ALTER TABLE [dbo].[Kullanici]
ADD CONSTRAINT [FK_Kullanici_Rol]
    FOREIGN KEY ([Rol_ID])
    REFERENCES [dbo].[Rol]
        ([Rol_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Kullanici_Rol'
CREATE INDEX [IX_FK_Kullanici_Rol]
ON [dbo].[Kullanici]
    ([Rol_ID]);
GO

-- Creating foreign key on [Soru_ID] in table 'Secenekler'
ALTER TABLE [dbo].[Secenekler]
ADD CONSTRAINT [FK_Secenek_Soru]
    FOREIGN KEY ([Soru_ID])
    REFERENCES [dbo].[Sorular]
        ([Soru_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Secenek_Soru'
CREATE INDEX [IX_FK_Secenek_Soru]
ON [dbo].[Secenekler]
    ([Soru_ID]);
GO

-- Creating foreign key on [Secenek_ID] in table 'Yanitlar'
ALTER TABLE [dbo].[Yanitlar]
ADD CONSTRAINT [FK_Yanit_Secenek]
    FOREIGN KEY ([Secenek_ID])
    REFERENCES [dbo].[Secenekler]
        ([Secenek_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Yanit_Secenek'
CREATE INDEX [IX_FK_Yanit_Secenek]
ON [dbo].[Yanitlar]
    ([Secenek_ID]);
GO

-- Creating foreign key on [Soru_ID] in table 'Yanitlar'
ALTER TABLE [dbo].[Yanitlar]
ADD CONSTRAINT [FK_Yanit_Soru]
    FOREIGN KEY ([Soru_ID])
    REFERENCES [dbo].[Sorular]
        ([Soru_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Yanit_Soru'
CREATE INDEX [IX_FK_Yanit_Soru]
ON [dbo].[Yanitlar]
    ([Soru_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------