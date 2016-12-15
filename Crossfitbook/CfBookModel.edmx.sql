
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/15/2016 17:32:43
-- Generated from EDMX file: D:\repos\VS2013\Projects\Crossfitbook\Crossfitbook\CfBookModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [test];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ClubCity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CitySet] DROP CONSTRAINT [FK_ClubCity];
GO
IF OBJECT_ID(N'[dbo].[FK_ClubSocialNetwork_Club]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClubSocialNetwork] DROP CONSTRAINT [FK_ClubSocialNetwork_Club];
GO
IF OBJECT_ID(N'[dbo].[FK_ClubSocialNetwork_SocialNetwork]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClubSocialNetwork] DROP CONSTRAINT [FK_ClubSocialNetwork_SocialNetwork];
GO
IF OBJECT_ID(N'[dbo].[FK_CountryCity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CitySet] DROP CONSTRAINT [FK_CountryCity];
GO
IF OBJECT_ID(N'[dbo].[FK_CountryManufacturer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ManufacturerSet] DROP CONSTRAINT [FK_CountryManufacturer];
GO
IF OBJECT_ID(N'[dbo].[FK_EquipmentExercise]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExerciseSet] DROP CONSTRAINT [FK_EquipmentExercise];
GO
IF OBJECT_ID(N'[dbo].[FK_ExerciseTypeExercise]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExerciseSet] DROP CONSTRAINT [FK_ExerciseTypeExercise];
GO
IF OBJECT_ID(N'[dbo].[FK_ExerciseImage_Exercise]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExerciseImage] DROP CONSTRAINT [FK_ExerciseImage_Exercise];
GO
IF OBJECT_ID(N'[dbo].[FK_ExerciseImage_Image]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExerciseImage] DROP CONSTRAINT [FK_ExerciseImage_Image];
GO
IF OBJECT_ID(N'[dbo].[FK_ClubNetworkClub]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClubSet] DROP CONSTRAINT [FK_ClubNetworkClub];
GO
IF OBJECT_ID(N'[dbo].[FK_ClubWorkTimeClub]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClubWorkTimeSet] DROP CONSTRAINT [FK_ClubWorkTimeClub];
GO
IF OBJECT_ID(N'[dbo].[FK_LoadTypeWod]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WodSet] DROP CONSTRAINT [FK_LoadTypeWod];
GO
IF OBJECT_ID(N'[dbo].[FK_LoadTypeExercise]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExerciseSet] DROP CONSTRAINT [FK_LoadTypeExercise];
GO
IF OBJECT_ID(N'[dbo].[FK_WodExercise]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExerciseSet] DROP CONSTRAINT [FK_WodExercise];
GO
IF OBJECT_ID(N'[dbo].[FK_WodCategoryWod]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WodSet] DROP CONSTRAINT [FK_WodCategoryWod];
GO
IF OBJECT_ID(N'[dbo].[FK_NewsImage_News]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewsImage] DROP CONSTRAINT [FK_NewsImage_News];
GO
IF OBJECT_ID(N'[dbo].[FK_NewsImage_Image]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewsImage] DROP CONSTRAINT [FK_NewsImage_Image];
GO
IF OBJECT_ID(N'[dbo].[FK_NewsTypeNews]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewsSet] DROP CONSTRAINT [FK_NewsTypeNews];
GO
IF OBJECT_ID(N'[dbo].[FK_ClubEquipment_Club]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClubEquipment] DROP CONSTRAINT [FK_ClubEquipment_Club];
GO
IF OBJECT_ID(N'[dbo].[FK_ClubEquipment_Equipment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClubEquipment] DROP CONSTRAINT [FK_ClubEquipment_Equipment];
GO
IF OBJECT_ID(N'[dbo].[FK_ManufacturerEquipment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EquipmentSet] DROP CONSTRAINT [FK_ManufacturerEquipment];
GO
IF OBJECT_ID(N'[dbo].[FK_ManufacturerNews]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewsSet] DROP CONSTRAINT [FK_ManufacturerNews];
GO
IF OBJECT_ID(N'[dbo].[FK_ClubNews]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewsSet] DROP CONSTRAINT [FK_ClubNews];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ClubSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClubSet];
GO
IF OBJECT_ID(N'[dbo].[ClubWorkTimeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClubWorkTimeSet];
GO
IF OBJECT_ID(N'[dbo].[EquipmentSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EquipmentSet];
GO
IF OBJECT_ID(N'[dbo].[ManufacturerSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ManufacturerSet];
GO
IF OBJECT_ID(N'[dbo].[CountrySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CountrySet];
GO
IF OBJECT_ID(N'[dbo].[CitySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CitySet];
GO
IF OBJECT_ID(N'[dbo].[SocialNetworkSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SocialNetworkSet];
GO
IF OBJECT_ID(N'[dbo].[WodSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WodSet];
GO
IF OBJECT_ID(N'[dbo].[ExerciseSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ExerciseSet];
GO
IF OBJECT_ID(N'[dbo].[ExerciseTypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ExerciseTypeSet];
GO
IF OBJECT_ID(N'[dbo].[ImageSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ImageSet];
GO
IF OBJECT_ID(N'[dbo].[LoadTypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LoadTypeSet];
GO
IF OBJECT_ID(N'[dbo].[ClubNetworkSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClubNetworkSet];
GO
IF OBJECT_ID(N'[dbo].[WodCategorySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WodCategorySet];
GO
IF OBJECT_ID(N'[dbo].[NewsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewsSet];
GO
IF OBJECT_ID(N'[dbo].[NewsTypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewsTypeSet];
GO
IF OBJECT_ID(N'[dbo].[ClubSocialNetwork]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClubSocialNetwork];
GO
IF OBJECT_ID(N'[dbo].[ExerciseImage]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ExerciseImage];
GO
IF OBJECT_ID(N'[dbo].[NewsImage]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewsImage];
GO
IF OBJECT_ID(N'[dbo].[ClubEquipment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClubEquipment];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ClubSet'
CREATE TABLE [dbo].[ClubSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NULL,
    [WebPage] nvarchar(max)  NULL,
    [MaxPeopleCount] int  NOT NULL,
    [IsSwimmingPool] bit  NULL,
    [IsSauna] bit  NOT NULL,
    [CellingHeight] float  NOT NULL,
    [XCoordinate] float  NOT NULL,
    [YCoordinate] float  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [ClubNetwork_Id] int  NOT NULL
);
GO

-- Creating table 'ClubWorkTimeSet'
CREATE TABLE [dbo].[ClubWorkTimeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MondayStart] time  NULL,
    [MondayEnd] time  NULL,
    [TuesdayStart] time  NULL,
    [TuesdayEnd] time  NULL,
    [WednesdayStart] time  NULL,
    [WednesdayEnd] time  NULL,
    [ThursdayStart] time  NULL,
    [ThursdayEnd] time  NULL,
    [FridayStart] time  NULL,
    [FridayEnd] time  NULL,
    [SaturdayStart] time  NULL,
    [SaturdayEnd] time  NULL,
    [SundayStart] time  NULL,
    [SundayEnd] time  NULL,
    [Club_Id] int  NOT NULL
);
GO

-- Creating table 'EquipmentSet'
CREATE TABLE [dbo].[EquipmentSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [PhotoPath] nvarchar(max)  NULL,
    [LogoPath] nvarchar(max)  NULL,
    [Manufacturer_Id] int  NOT NULL
);
GO

-- Creating table 'ManufacturerSet'
CREATE TABLE [dbo].[ManufacturerSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Website] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [Country_Id] int  NOT NULL
);
GO

-- Creating table 'CountrySet'
CREATE TABLE [dbo].[CountrySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [FlagIcon] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CitySet'
CREATE TABLE [dbo].[CitySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Club_Id] int  NOT NULL,
    [Country_Id] int  NOT NULL
);
GO

-- Creating table 'SocialNetworkSet'
CREATE TABLE [dbo].[SocialNetworkSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Href] nvarchar(max)  NOT NULL,
    [IconPath] nvarchar(max)  NULL
);
GO

-- Creating table 'WodSet'
CREATE TABLE [dbo].[WodSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Rounds] int  NOT NULL,
    [Task] nvarchar(max)  NOT NULL,
    [Rating] nvarchar(max)  NOT NULL,
    [LoadType_Id] int  NOT NULL,
    [WodCategory_Id] int  NOT NULL
);
GO

-- Creating table 'ExerciseSet'
CREATE TABLE [dbo].[ExerciseSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Equipment_Id] int  NOT NULL,
    [ExerciseType_Id] int  NOT NULL,
    [LoadType_Id] int  NOT NULL,
    [Wod_Id] int  NOT NULL
);
GO

-- Creating table 'ExerciseTypeSet'
CREATE TABLE [dbo].[ExerciseTypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(max)  NULL
);
GO

-- Creating table 'ImageSet'
CREATE TABLE [dbo].[ImageSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Path] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LoadTypeSet'
CREATE TABLE [dbo].[LoadTypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ClubNetworkSet'
CREATE TABLE [dbo].[ClubNetworkSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'WodCategorySet'
CREATE TABLE [dbo].[WodCategorySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'NewsSet'
CREATE TABLE [dbo].[NewsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Text] nvarchar(max)  NOT NULL,
    [PublicDate] datetime  NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [NewsType_Id] int  NOT NULL,
    [Manufacturer_Id] int  NOT NULL,
    [Club_Id] int  NOT NULL
);
GO

-- Creating table 'NewsTypeSet'
CREATE TABLE [dbo].[NewsTypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ClubSocialNetwork'
CREATE TABLE [dbo].[ClubSocialNetwork] (
    [Club_Id] int  NOT NULL,
    [SocialNetwork_Id] int  NOT NULL
);
GO

-- Creating table 'ExerciseImage'
CREATE TABLE [dbo].[ExerciseImage] (
    [Exercise_Id] int  NOT NULL,
    [Image_Id] int  NOT NULL
);
GO

-- Creating table 'NewsImage'
CREATE TABLE [dbo].[NewsImage] (
    [News_Id] int  NOT NULL,
    [Image_Id] int  NOT NULL
);
GO

-- Creating table 'ClubEquipment'
CREATE TABLE [dbo].[ClubEquipment] (
    [Club_Id] int  NOT NULL,
    [Equipment_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ClubSet'
ALTER TABLE [dbo].[ClubSet]
ADD CONSTRAINT [PK_ClubSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ClubWorkTimeSet'
ALTER TABLE [dbo].[ClubWorkTimeSet]
ADD CONSTRAINT [PK_ClubWorkTimeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EquipmentSet'
ALTER TABLE [dbo].[EquipmentSet]
ADD CONSTRAINT [PK_EquipmentSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ManufacturerSet'
ALTER TABLE [dbo].[ManufacturerSet]
ADD CONSTRAINT [PK_ManufacturerSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CountrySet'
ALTER TABLE [dbo].[CountrySet]
ADD CONSTRAINT [PK_CountrySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CitySet'
ALTER TABLE [dbo].[CitySet]
ADD CONSTRAINT [PK_CitySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SocialNetworkSet'
ALTER TABLE [dbo].[SocialNetworkSet]
ADD CONSTRAINT [PK_SocialNetworkSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'WodSet'
ALTER TABLE [dbo].[WodSet]
ADD CONSTRAINT [PK_WodSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ExerciseSet'
ALTER TABLE [dbo].[ExerciseSet]
ADD CONSTRAINT [PK_ExerciseSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ExerciseTypeSet'
ALTER TABLE [dbo].[ExerciseTypeSet]
ADD CONSTRAINT [PK_ExerciseTypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ImageSet'
ALTER TABLE [dbo].[ImageSet]
ADD CONSTRAINT [PK_ImageSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LoadTypeSet'
ALTER TABLE [dbo].[LoadTypeSet]
ADD CONSTRAINT [PK_LoadTypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ClubNetworkSet'
ALTER TABLE [dbo].[ClubNetworkSet]
ADD CONSTRAINT [PK_ClubNetworkSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'WodCategorySet'
ALTER TABLE [dbo].[WodCategorySet]
ADD CONSTRAINT [PK_WodCategorySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NewsSet'
ALTER TABLE [dbo].[NewsSet]
ADD CONSTRAINT [PK_NewsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NewsTypeSet'
ALTER TABLE [dbo].[NewsTypeSet]
ADD CONSTRAINT [PK_NewsTypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Club_Id], [SocialNetwork_Id] in table 'ClubSocialNetwork'
ALTER TABLE [dbo].[ClubSocialNetwork]
ADD CONSTRAINT [PK_ClubSocialNetwork]
    PRIMARY KEY CLUSTERED ([Club_Id], [SocialNetwork_Id] ASC);
GO

-- Creating primary key on [Exercise_Id], [Image_Id] in table 'ExerciseImage'
ALTER TABLE [dbo].[ExerciseImage]
ADD CONSTRAINT [PK_ExerciseImage]
    PRIMARY KEY CLUSTERED ([Exercise_Id], [Image_Id] ASC);
GO

-- Creating primary key on [News_Id], [Image_Id] in table 'NewsImage'
ALTER TABLE [dbo].[NewsImage]
ADD CONSTRAINT [PK_NewsImage]
    PRIMARY KEY CLUSTERED ([News_Id], [Image_Id] ASC);
GO

-- Creating primary key on [Club_Id], [Equipment_Id] in table 'ClubEquipment'
ALTER TABLE [dbo].[ClubEquipment]
ADD CONSTRAINT [PK_ClubEquipment]
    PRIMARY KEY CLUSTERED ([Club_Id], [Equipment_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Club_Id] in table 'CitySet'
ALTER TABLE [dbo].[CitySet]
ADD CONSTRAINT [FK_ClubCity]
    FOREIGN KEY ([Club_Id])
    REFERENCES [dbo].[ClubSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClubCity'
CREATE INDEX [IX_FK_ClubCity]
ON [dbo].[CitySet]
    ([Club_Id]);
GO

-- Creating foreign key on [Club_Id] in table 'ClubSocialNetwork'
ALTER TABLE [dbo].[ClubSocialNetwork]
ADD CONSTRAINT [FK_ClubSocialNetwork_Club]
    FOREIGN KEY ([Club_Id])
    REFERENCES [dbo].[ClubSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [SocialNetwork_Id] in table 'ClubSocialNetwork'
ALTER TABLE [dbo].[ClubSocialNetwork]
ADD CONSTRAINT [FK_ClubSocialNetwork_SocialNetwork]
    FOREIGN KEY ([SocialNetwork_Id])
    REFERENCES [dbo].[SocialNetworkSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClubSocialNetwork_SocialNetwork'
CREATE INDEX [IX_FK_ClubSocialNetwork_SocialNetwork]
ON [dbo].[ClubSocialNetwork]
    ([SocialNetwork_Id]);
GO

-- Creating foreign key on [Country_Id] in table 'CitySet'
ALTER TABLE [dbo].[CitySet]
ADD CONSTRAINT [FK_CountryCity]
    FOREIGN KEY ([Country_Id])
    REFERENCES [dbo].[CountrySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CountryCity'
CREATE INDEX [IX_FK_CountryCity]
ON [dbo].[CitySet]
    ([Country_Id]);
GO

-- Creating foreign key on [Country_Id] in table 'ManufacturerSet'
ALTER TABLE [dbo].[ManufacturerSet]
ADD CONSTRAINT [FK_CountryManufacturer]
    FOREIGN KEY ([Country_Id])
    REFERENCES [dbo].[CountrySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CountryManufacturer'
CREATE INDEX [IX_FK_CountryManufacturer]
ON [dbo].[ManufacturerSet]
    ([Country_Id]);
GO

-- Creating foreign key on [Equipment_Id] in table 'ExerciseSet'
ALTER TABLE [dbo].[ExerciseSet]
ADD CONSTRAINT [FK_EquipmentExercise]
    FOREIGN KEY ([Equipment_Id])
    REFERENCES [dbo].[EquipmentSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EquipmentExercise'
CREATE INDEX [IX_FK_EquipmentExercise]
ON [dbo].[ExerciseSet]
    ([Equipment_Id]);
GO

-- Creating foreign key on [ExerciseType_Id] in table 'ExerciseSet'
ALTER TABLE [dbo].[ExerciseSet]
ADD CONSTRAINT [FK_ExerciseTypeExercise]
    FOREIGN KEY ([ExerciseType_Id])
    REFERENCES [dbo].[ExerciseTypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ExerciseTypeExercise'
CREATE INDEX [IX_FK_ExerciseTypeExercise]
ON [dbo].[ExerciseSet]
    ([ExerciseType_Id]);
GO

-- Creating foreign key on [Exercise_Id] in table 'ExerciseImage'
ALTER TABLE [dbo].[ExerciseImage]
ADD CONSTRAINT [FK_ExerciseImage_Exercise]
    FOREIGN KEY ([Exercise_Id])
    REFERENCES [dbo].[ExerciseSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Image_Id] in table 'ExerciseImage'
ALTER TABLE [dbo].[ExerciseImage]
ADD CONSTRAINT [FK_ExerciseImage_Image]
    FOREIGN KEY ([Image_Id])
    REFERENCES [dbo].[ImageSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ExerciseImage_Image'
CREATE INDEX [IX_FK_ExerciseImage_Image]
ON [dbo].[ExerciseImage]
    ([Image_Id]);
GO

-- Creating foreign key on [ClubNetwork_Id] in table 'ClubSet'
ALTER TABLE [dbo].[ClubSet]
ADD CONSTRAINT [FK_ClubNetworkClub]
    FOREIGN KEY ([ClubNetwork_Id])
    REFERENCES [dbo].[ClubNetworkSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClubNetworkClub'
CREATE INDEX [IX_FK_ClubNetworkClub]
ON [dbo].[ClubSet]
    ([ClubNetwork_Id]);
GO

-- Creating foreign key on [Club_Id] in table 'ClubWorkTimeSet'
ALTER TABLE [dbo].[ClubWorkTimeSet]
ADD CONSTRAINT [FK_ClubWorkTimeClub]
    FOREIGN KEY ([Club_Id])
    REFERENCES [dbo].[ClubSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClubWorkTimeClub'
CREATE INDEX [IX_FK_ClubWorkTimeClub]
ON [dbo].[ClubWorkTimeSet]
    ([Club_Id]);
GO

-- Creating foreign key on [LoadType_Id] in table 'WodSet'
ALTER TABLE [dbo].[WodSet]
ADD CONSTRAINT [FK_LoadTypeWod]
    FOREIGN KEY ([LoadType_Id])
    REFERENCES [dbo].[LoadTypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LoadTypeWod'
CREATE INDEX [IX_FK_LoadTypeWod]
ON [dbo].[WodSet]
    ([LoadType_Id]);
GO

-- Creating foreign key on [LoadType_Id] in table 'ExerciseSet'
ALTER TABLE [dbo].[ExerciseSet]
ADD CONSTRAINT [FK_LoadTypeExercise]
    FOREIGN KEY ([LoadType_Id])
    REFERENCES [dbo].[LoadTypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LoadTypeExercise'
CREATE INDEX [IX_FK_LoadTypeExercise]
ON [dbo].[ExerciseSet]
    ([LoadType_Id]);
GO

-- Creating foreign key on [Wod_Id] in table 'ExerciseSet'
ALTER TABLE [dbo].[ExerciseSet]
ADD CONSTRAINT [FK_WodExercise]
    FOREIGN KEY ([Wod_Id])
    REFERENCES [dbo].[WodSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WodExercise'
CREATE INDEX [IX_FK_WodExercise]
ON [dbo].[ExerciseSet]
    ([Wod_Id]);
GO

-- Creating foreign key on [WodCategory_Id] in table 'WodSet'
ALTER TABLE [dbo].[WodSet]
ADD CONSTRAINT [FK_WodCategoryWod]
    FOREIGN KEY ([WodCategory_Id])
    REFERENCES [dbo].[WodCategorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WodCategoryWod'
CREATE INDEX [IX_FK_WodCategoryWod]
ON [dbo].[WodSet]
    ([WodCategory_Id]);
GO

-- Creating foreign key on [News_Id] in table 'NewsImage'
ALTER TABLE [dbo].[NewsImage]
ADD CONSTRAINT [FK_NewsImage_News]
    FOREIGN KEY ([News_Id])
    REFERENCES [dbo].[NewsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Image_Id] in table 'NewsImage'
ALTER TABLE [dbo].[NewsImage]
ADD CONSTRAINT [FK_NewsImage_Image]
    FOREIGN KEY ([Image_Id])
    REFERENCES [dbo].[ImageSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NewsImage_Image'
CREATE INDEX [IX_FK_NewsImage_Image]
ON [dbo].[NewsImage]
    ([Image_Id]);
GO

-- Creating foreign key on [NewsType_Id] in table 'NewsSet'
ALTER TABLE [dbo].[NewsSet]
ADD CONSTRAINT [FK_NewsTypeNews]
    FOREIGN KEY ([NewsType_Id])
    REFERENCES [dbo].[NewsTypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NewsTypeNews'
CREATE INDEX [IX_FK_NewsTypeNews]
ON [dbo].[NewsSet]
    ([NewsType_Id]);
GO

-- Creating foreign key on [Club_Id] in table 'ClubEquipment'
ALTER TABLE [dbo].[ClubEquipment]
ADD CONSTRAINT [FK_ClubEquipment_Club]
    FOREIGN KEY ([Club_Id])
    REFERENCES [dbo].[ClubSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Equipment_Id] in table 'ClubEquipment'
ALTER TABLE [dbo].[ClubEquipment]
ADD CONSTRAINT [FK_ClubEquipment_Equipment]
    FOREIGN KEY ([Equipment_Id])
    REFERENCES [dbo].[EquipmentSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClubEquipment_Equipment'
CREATE INDEX [IX_FK_ClubEquipment_Equipment]
ON [dbo].[ClubEquipment]
    ([Equipment_Id]);
GO

-- Creating foreign key on [Manufacturer_Id] in table 'EquipmentSet'
ALTER TABLE [dbo].[EquipmentSet]
ADD CONSTRAINT [FK_ManufacturerEquipment]
    FOREIGN KEY ([Manufacturer_Id])
    REFERENCES [dbo].[ManufacturerSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ManufacturerEquipment'
CREATE INDEX [IX_FK_ManufacturerEquipment]
ON [dbo].[EquipmentSet]
    ([Manufacturer_Id]);
GO

-- Creating foreign key on [Manufacturer_Id] in table 'NewsSet'
ALTER TABLE [dbo].[NewsSet]
ADD CONSTRAINT [FK_ManufacturerNews]
    FOREIGN KEY ([Manufacturer_Id])
    REFERENCES [dbo].[ManufacturerSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ManufacturerNews'
CREATE INDEX [IX_FK_ManufacturerNews]
ON [dbo].[NewsSet]
    ([Manufacturer_Id]);
GO

-- Creating foreign key on [Club_Id] in table 'NewsSet'
ALTER TABLE [dbo].[NewsSet]
ADD CONSTRAINT [FK_ClubNews]
    FOREIGN KEY ([Club_Id])
    REFERENCES [dbo].[ClubSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClubNews'
CREATE INDEX [IX_FK_ClubNews]
ON [dbo].[NewsSet]
    ([Club_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------