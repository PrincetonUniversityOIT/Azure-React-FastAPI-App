IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BOOK]') AND type in (N'U'))
DROP TABLE [dbo].[BOOK]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BORROWS_RETURNS]') AND type in (N'U'))
DROP TABLE [dbo].[BORROWS_RETURNS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BURSAR]') AND type in (N'U'))
DROP TABLE [dbo].[BURSAR]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMPLOYEE_ACCOUNT]') AND type in (N'U'))
DROP TABLE [dbo].[EMPLOYEE_ACCOUNT]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FINING_SYSTEM]') AND type in (N'U'))
DROP TABLE [dbo].[FINING_SYSTEM]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LIBRARIAN]') AND type in (N'U'))
DROP TABLE [dbo].[LIBRARIAN]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LIBRARY_ASSETS]') AND type in (N'U'))
DROP TABLE [dbo].[LIBRARY_ASSETS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STUDENT]') AND type in (N'U'))
DROP TABLE [dbo].[STUDENT]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STUDENT_ACCOUNT]') AND type in (N'U'))
DROP TABLE [dbo].[STUDENT_ACCOUNT]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMPLOYEE]') AND type in (N'U'))
DROP TABLE [dbo].[EMPLOYEE]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACCOUNT]') AND type in (N'U'))
DROP TABLE [dbo].[ACCOUNT]
GO



