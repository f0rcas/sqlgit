CREATE TABLE [dbo].[ActivationDate]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Date] [date] NOT NULL,
[Activity_Id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ActivationDate] ADD CONSTRAINT [PK_ActivationDate] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ActivationDate] ADD CONSTRAINT [FK_ActivationDate_Activity] FOREIGN KEY ([Activity_Id]) REFERENCES [dbo].[Activity] ([Id])
GO
