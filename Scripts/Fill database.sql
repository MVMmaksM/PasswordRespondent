USE PasswordRespondent
GO
INSERT INTO [dbo].[role]([name])
VALUES('������������'),
('�������������')
GO
INSERT INTO [dbo].[sector]([name])
VALUES('��')
GO
INSERT INTO [dbo].[user]([login], [password],[date_create],[sector_id],[role_id])
VALUES('Maks','qwerty1234',GETDATE(),'1','2'),
('Ivan','fdgF$%23',GETDATE(),'1','1'),
('Fedor','@dsaWdwqas',GETDATE(),'1','1'),
('Alex','KJjKi(*76hjk',GETDATE(),'1','1')
GO
INSERT INTO [dbo].[respondent]([okpo],[full_name],[short_name],[okato_fact],[okved2007_base],[okved2_base],[adress],[telephone],[email_contact],[email_asgs],[inn],[ogrn])
VALUES('00232041','����������� �������� "���������� �������������� �����"','�� "����"','37405000000','34.30','29.32.3','641876, ���������� ���, � ��������, �� ���������, � 1','','','opra@shaaz.ru; office@shaaz.ru; post@shaaz.ru; priroda@shaaz.ru','4502000019','1024501203902'),
('01930422','��������������� ��������� ���������� "���������� ��������� ������� ����������� �������� ����� �������� ������"','��� "����� ��. �������� ������"','37401000000','85.11','86.10','640008, ���������� ���, � ������, ��-�� �����������, � 38','','','kdb@zaural.ru; kln@odb45.ru; n_alex08@mail.ru','4501024659','1034500011798'),
('01930592','��������������� ��������� ���������� "����������� �������� � 6"','���  "����������� �������� � 6"','37216501000','85.11','86.10','641430, ���������� ���, ������������ �-�, � ��������, �� ��������, � 21','8905-850-8225','','kurthosp@zaural.ru; kurthosp@mail.ru','4511000946','1024501575108'),
('02513672','��������������� ��������� ���������������� ��������������� ���������� "����������� �������-������������ �������"','����� "����������� �������-������������ �������"','37242501000','80.22','85.21','641100, ���������� ���, ����������� �-�, � ������, �� ������, � 112','8(35245) 2-11-57','','shask@mail.ru','4524001947','1034575000437'),
('02627269','�������� � ������������ ���������������� "�������� ���������"','��� "�������� ���������"','37226501000','41.00.2','36.00.2','641640, ���������� ���, ����������� �-�, � ��������, �� �����������, � 11, ��� 1','','','n.kislitsyna81@yandex.ru; tuhovovodokanal@mail.ru; rpi.23@mail.ru','4516010049','1164501053859'),
('04031919','������������� ������������� ������','������������� ������������� ������','37208501000','75.11.3','84.11.33','641730, ���������� ���, ������������ �-�, � ���������, �� ���������, � 187','8(35252) 3-11-30, 2-30-03','','bvs@dalmatovo.ru; radm@dalmatovo.ru','4506001623','1024501454581'),
('08821564','������������� ��������� ���������� ��������������� ���������� ������ ������� "������� ��� ���������������� ���� � 118 "�������"','����� "������� ��� � 118"','37401000000','80.10.1','85.11','640006, ���������� ���, � ������, �� �����������, � 4�','8(3522) 24-86-98, 8919-566-2295','','mishutka118@mail.ru; k.maria_1974@mail.ru; cbuds3@rambler.ru','4501107062','1044500002800'),
('29698323','������������� ��������� ���������� ��������������� ���������� ������ ������� "������� ��� ���������������� ����  � 4 "������"','����� "������� ��� �4"','37401000000','80.10.1','85.11','640014, ���������� ���, � ������, �� ��������������, � 24�','8(3522) 42-86-54','','ivushka-4kurgan@mail.ru; k.maria_1974@mail.ru; dzhuliae@yandex.ru','4501054090','1024500514521'),
('29712262','��������������� ���������� ��������������� ���������� ��������������� ����������������� ����������� "�������� �������� ����������� � ���������� ����������"','���� ��� �����','37401000000','80.30.2','85.23','640021, ���������� ���, � ������, �� ��������, � 38','8(3522) 65-12-90','',' KIPK@yandex.ru; ipkbuhg@mail.ru','4501021224','1024500530515'),
('36571451','������������� ��������� ���������� ��������������� ����������� "������-��������� ���������� ����� � 1 ����� �.�.��̨����" ������ �������','����� "���� � 1 ��.�.�.��̨����"','37401000000','92.62','85.41.1','640002, ���������� ���, � ������, �� ������, � 103/�','8919-585-9970','','mucbush2@yandex.ru; acro45@mail.ru','4501032850','1024500518107'),
('36576201','������������� ��������� ���������� ��������������� ����������� "������-��������� ���������� ����� �4" ������ �������','����� "���� �4"','37401000000','92.62','85.41.1','640002, ���������� ���, � ������, �� ������, � 112','8(3522) 46-29-43','','sportivnaya.shkola-4@mail.ru; mycbush2@yandex.ru','4501034520','1024500523684'),
('41230031','������������� ��������� ���������� ��������������� ����������� "������� ����� ��������"','��� �� "���"','37240000001','80.42','85.41.2','641960, ���������� ���, ���������� �-�, � �������, �� ���������, � 92','8(35257) 9-16-52, 8919-585-5800','','shkolashatrovo@mail.ru','4523003081','1034545002084'),
('57735840','������������� ��������� ��������������� ���������� ��������������� ����������� "����� "��������" ������ �������','������ "�����"��������"','37401000000','80.42','85.41','640023, ���������� ���, � ������, 1 ����, � 11, ��� 11/1','','','mucbush2@yandex.ru; kurganmostovik@mail.ru; mycbush2@yandex.ru','4501098058','1034500000787'),
('78733152','������������� ��������� ���������� ��������������� ����������� "����������� ������-��������� �����"','����� "����������� ���"','37204000024','80.42','85.41','641360, ���������� ���, ����������� �-�, � ��������, �� �����������, � 20','8(35232) 2-49-31','','beldop@bk.ru','4504005855','1064508006298')
GO
INSERT INTO [dbo].[password]([okpo],[password],[date_create],[create_user_id])
VALUES('00232041','2uDioK4Y','28.01.2023','1'),
('02513672','gyS2n56K','29.01.2023','1'),
('36576201','1tT1V456F','30.01.2023','1'),
('78733152','AO4jc345j','31.01.2023','2'),
('02627269','DrZ2341yv','01.02.2023','2'),
('29712262','vVL567u4J','01.02.2023','2'),
('01930422','YwaC*5aU','01.02.2023','3'),
('01930592','hv9IV3459','01.02.2023','4'),
('57735840','5pbh2345V','01.02.2023','2'),
('04031919','c86k234BK','01.02.2023','2'),
('36571451','uL1c234jF','05.02.2023','4'),
('41230031','a678vV6E','05.02.2023','3'),
('08821564','V20-DRce','09.02.2023','4'),
('29698323','kV24#Ktk9','09.02.2023','1')
GO

