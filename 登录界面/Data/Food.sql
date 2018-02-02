create database Food
go
use Food
--�û���Ϣ��
create table Customer
(
	ID varchar(50) primary key, --�û�ID
	LoginName varchar(25) not null unique,--�û���
	[Password] varchar(25) not null, --����
	CustomerName varchar(25),--�û�����
	Age	int check(Age>0) , --����
	Gender char(2) check(Gender='��' or Gender='Ů')	, --�Ա�
	PhoneNumber char(11) not null,--�绰����
	Emial	varchar(25)	,--��������
	Birthday	datetime	,--��������
	PlaceBirth varchar(25) ,--������
	Question varchar(255), --�ܱ�����
	Answer varchar(255),--�ܱ������ 
	[State] int default(0) ,--�û�״̬ 0 Ϊ����ʹ��, 1Ϊ����ʹ��
 )
 go
 select count(*) from Customer where State=0  and LoginName ='1072138129' and Password ='jjjjjjj'
 select * from Customer where LoginName ='1072138129'and Password ='123456'
 insert into Customer values('10001','1072138129','123456','��ܰ',20,'Ů','13828699542','1072138129@QQ.com','','','�ҵ������ǣ�','7��01��',0)
 
 --����Ա��
 create table [Admin]
 (
	ID  varchar(50) primary key, --ID
	LoginName varchar(20) unique not null, --������
	Password varchar(20) not null,      --����
	[State] int default(0) ,             --״̬
 )
 go
 --�̼ұ�
 create table Store
 (
	 ID int primary key identity(1,1),
	 Name varchar(55) not null,
 )
 go
 insert into Store values('��ܰ����')

 select * from Store 
 go

 --ʳƷ���ͱ�
 create table FoodType
 (
	ID int primary key identity(1,1), --ID
	TypeName varchar(55) unique not null,  --��Ʒ����
 )
 go
 select * from FoodType

 insert into FoodType
select 'С��'
union all select '����'
union all select '�з�'
union all select '�տ�'
union all select '��ʳ'
union all select '������'
union all select '��ʳ'
union all select '���'
insert into FoodType values('���Ʋ�')
select* from FoodType
go

 --����ʳƷ��
 create  table Food
 (
	ID varchar(55) primary key , --��ƷID
	Name varchar(55) unique not null ,  --��Ʒ����
	FDesc varchar(55) not null,--��Ʒ���
	FoodType int references FoodType(ID),--��Ʒ����
	Price money not null check(Price>0),--��Ʒ�۸�
	FImg  varchar(55) ,  --��ƷͼƬ
	FUnit varchar(10) not null,--��Ʒ��λ
	Remark varchar(255) ,  --��Ʒ��ע
	StoreID int references Store(ID),--�̼�ID
	[State] int default(0) --��Ʒ״̬
 )
 go
 insert into Food
select '20171127956','����','����һ��',2,3,'20171221530','ƿ','��',1,0
union all select '20171127958','��֭','����ĸо�',2,2.5,'201711221515','��','��',1,0
union all select '201711281418','�ɳ���Ϻ','������Ϻ��',8,15,'201711271518','��','��',1,0
union all select '201711281420','������','����',5,8,'201711271521','��','��',1,0
union all select '201711271422','��ʳ�׷�','����ʵ��',8,12,'201711271524','��','��',1,0
union all select '201711281424','�����','�ڸл�',5,7,'201711271529','��','��',1,0
union all select '201711281426','�ཷ�ع���','�ó�',8,11,'201711271542','��','��',1,0
union all select '201711281915','ѩ��','����һ��',2,2.5,'201711281503','ƿ','��',1,0
union all select '201711281918','Ҭ��','�����ζ��',2,5,'201711281506','ƿ','��',1,0
union all select '201711281919','���֭','��ƿ��ˬ',2,7,'201711281511','ƿ','��',1,0
union all select '201711281920','ơ��','ơ��',2,3.5,'201711281515','ƿ','��',1,0
union all select '201711281921','��ϲ','��ϲ',2,2.5,'201711281519','ƿ','��',1,0
union all select '201711281922','�����','������',2,2.5,'201711281523','ƿ','��',1,0
union all select '201711281923','â��֭','â��֭',2,4,'201711281531','ƿ','��',1,0
union all select '201711281924','��ݮ֭','��ݮ֭',2,4,'201711281551','ƿ','��',1,0
union all select '201711281925','����ɽ��Ȫˮ','����֮Դ',2,3,'201711281600','ƿ','��',1,0
union all select '201711281926','��֭','��֭',2,4,'201711281605','ƿ','��',1,0
go
select * from Food 


 
 go
 --�û��ջ���ַ��
 create table CustomerAddress
 (
	ID int primary key identity(1,1),-- ID  --�ջ���ID
	CID varchar(50) references Customer(ID), --�û�ID
	[Address] varchar(255) not null, --�ջ���ַ
	[State] int default(0) not null,
 )
 go
 --�û�������
 create table COrder
 (	
	OrderNo varchar(55) primary key, --�������
	CID varchar(50) references Customer(ID), --�û�ID
	OrderDate datetime  default(getdate()) not null, --�µ�ʱ��	
	PayMoney money not null check(PayMoney>0) , --������
	Phone  char(11) not null, --��ϵ�绰
	OrderAddress varchar(255) not null,--�ջ���ַ
	CComment varchar(255),  --�û�����
	State int default(0) --״̬
)
go
--��ϸ������
create table OrderList
(
	ID int primary key identity(1,1), --��ϸ������ID   
	OrderID varchar(55) references COrder(OrderNo) not null,-- ����ID
	FoodID varchar(55) references Food(ID) not null,  --��ƷID
	Price money not null , ---��Ʒ����
	Fcount int  not null, --��Ʒ����
	State int default(0) --״̬
)
go
--ע���
create table Regist
( 
 ID int primary key identity(1,1) ,--����
 RegistName varchar(25) unique not null, --ע������
 Rpwd  varchar(25) not null,--ע������
 REmail varchar(100) not null,--ע�������ַ
)
go

--ͨ��������ѯ��Ʒ��Ϣ�洢����
create proc F_SelectFoodeType
as
select * from FoodType where ID=1
go

--��ѯ��Ʒ���ʹ洢����
create proc F_SelectFoodType
as
	 select * from FoodType order by ID 
go
EXEC F_SelectFoodType
go
alter proc P_GetFoodInfo_ByTypeName
as
 select Top(10) F.*,T.TypeName from Food F inner join FoodType T on F.FoodType=T.ID where F.State=0 and T.TypeName='С��'
 go
 exec P_GetFoodInfo_ByTypeName

select * from Food
 select  F.*,T.TypeName from Food F inner join FoodType T on F.FoodType=T.ID where F.State=0 and T.TypeName='@TypeName'
 go
 --������û��洢����
 create proc P_AddCustomer
  @RegistName varchar(25),@Rpwd varchar(25),@Email varchar(30)
 as
 insert into Regist([RegistName],[Rpwd],[REmail]) values(@RegistName,@Rpwd,@Email)
 go
 --��ѯ�û���Ϣ�洢����
 alter proc P_GetCustomerInfo
 as
 select * from Customer where State=0
 go
 --�û��޸�����洢����
 create proc P_CustomerChangePwd
 @ID varchar(50),@pwd varchar(25)
 as
  update Customer set Password=@pwd where ID=@ID
go
--ɾ���û��洢����
create proc P_CustomerDelete
@ID varchar(50)
as
 update Customer set State=1 where ID=@ID
 go
 select * from Customer