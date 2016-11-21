--EXEC umbracoNewUsr 'pratiks','pp@bb.com'

-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- This will create new user as administrator with permissions to all the sections in umbraco.
-- This will create new user as administrator with permissions to all the sections in umbraco. 
-- This will create new user as administrator with permissions to all the sections in umbraco.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO


SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
alter PROCEDURE umbracoNewUsr 
	-- Add the parameters for the stored procedure here
	@UserName varchar(50) = null,
	@UserEmail varchar(50) = null
AS
BEGIN
	SET NOCOUNT ON;
	declare @idThis table(id int)
	declare @IdentityValue int
	--	--(
			insert into umbracouser
			output inserted.id into @idThis
			values 
			(
				0,0,1,-1,-1,
				@UserName,
				@UserEmail,
				'WWQRCSb3HLy/5+k2PmXAvr1Vj4s=',
				@UserEmail,
				'en',
				'24e7bbb0-62ff-448b-88af-f3ceaa741078',
				NULL,NULL,'2016-11-21 12:30:26.887','2016-11-21 13:34:07.720'
			);
		set @IdentityValue = (select id from @idThis)
		print @IdentityValue
		--)
		insert into umbracouser2app values (@IdentityValue,'content')
		insert into umbracouser2app values (@IdentityValue,	'developer')
		insert into umbracouser2app values (@IdentityValue,	'forms')
		insert into umbracouser2app values (@IdentityValue,	'media')
		insert into umbracouser2app values (@IdentityValue,	'member')
		insert into umbracouser2app values (@IdentityValue,	'settings')
		insert into umbracouser2app values (@IdentityValue,	'users')
	END
	GO
