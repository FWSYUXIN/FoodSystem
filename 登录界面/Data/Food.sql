create database Food
go
use Food
--用户信息表
create table Customer
(
	ID varchar(50) primary key, --用户ID
	LoginName varchar(25) not null unique,--用户名
	[Password] varchar(25) not null, --密码
	CustomerName varchar(25),--用户姓名
	Age	int check(Age>0) , --年龄
	Gender char(2) check(Gender='男' or Gender='女')	, --性别
	PhoneNumber char(11) not null,--电话号码
	Emial	varchar(25)	,--电子邮箱
	Birthday	datetime	,--出生日期
	PlaceBirth varchar(25) ,--出生地
	Question varchar(255), --密保问题
	Answer varchar(255),--密保问题答案 
	[State] int default(0) ,--用户状态 0 为可以使用, 1为不可使用
 )
 go
 select count(*) from Customer where State=0  and LoginName ='1072138129' and Password ='jjjjjjj'
 select * from Customer where LoginName ='1072138129'and Password ='123456'
 insert into Customer values('10001','1072138129','123456','语馨',20,'女','13828699542','1072138129@QQ.com','','','我的生日是？','7月01日',0)
 
 --管理员表
 create table [Admin]
 (
	ID  varchar(50) primary key, --ID
	LoginName varchar(20) unique not null, --登入名
	Password varchar(20) not null,      --密码
	[State] int default(0) ,             --状态
 )
 go
 --商家表
 create table Store
 (
	 ID int primary key identity(1,1),
	 Name varchar(55) not null,
 )
 go
 insert into Store values('语馨餐饮')

 select * from Store 
 go

 --食品类型表
 create table FoodType
 (
	ID int primary key identity(1,1), --ID
	TypeName varchar(55) unique not null,  --商品类型
 )
 go
 select * from FoodType

 insert into FoodType
select '小吃'
union all select '饮料'
union all select '中饭'
union all select '烧烤'
union all select '面食'
union all select '面包甜点'
union all select '零食'
union all select '快餐'
insert into FoodType values('招牌菜')
select* from FoodType
go

 --具体食品表
 create  table Food
 (
	ID varchar(55) primary key , --商品ID
	Name varchar(55) unique not null ,  --商品名称
	FDesc varchar(55) not null,--商品简介
	FoodType int references FoodType(ID),--商品类型
	Price money not null check(Price>0),--商品价格
	FImg  varchar(55) ,  --商品图片
	FUnit varchar(10) not null,--商品单位
	Remark varchar(255) ,  --商品备注
	StoreID int references Store(ID),--商家ID
	[State] int default(0) --商品状态
 )
 go
 insert into Food
select '20171127956','可乐','清凉一夏',2,3,'20171221530','瓶','无',1,0
union all select '20171127958','橙汁','酸甜的感觉',2,2.5,'201711221515','盒','无',1,0
union all select '201711281418','干炒河虾','肥美的虾肉',8,15,'201711271518','份','无',1,0
union all select '201711281420','火腿面','好面',5,8,'201711271521','碗','无',1,0
union all select '201711271422','素食套饭','便宜实惠',8,12,'201711271524','份','无',1,0
union all select '201711281424','珍珠粉','口感滑',5,7,'201711271529','份','无',1,0
union all select '201711281426','青椒回锅肉','好吃',8,11,'201711271542','份','无',1,0
union all select '201711281915','雪碧','清凉一下',2,2.5,'201711281503','瓶','无',1,0
union all select '201711281918','椰奶','酸酸的味道',2,5,'201711281506','瓶','无',1,0
union all select '201711281919','大橙汁','大瓶更爽',2,7,'201711281511','瓶','无',1,0
union all select '201711281920','啤酒','啤酒',2,3.5,'201711281515','瓶','无',1,0
union all select '201711281921','七喜','七喜',2,2.5,'201711281519','瓶','无',1,0
union all select '201711281922','美年达','你最美',2,2.5,'201711281523','瓶','无',1,0
union all select '201711281923','芒果汁','芒果汁',2,4,'201711281531','瓶','无',1,0
union all select '201711281924','草莓汁','草莓汁',2,4,'201711281551','瓶','无',1,0
union all select '201711281925','百岁山矿泉水','万物之源',2,3,'201711281600','瓶','无',1,0
union all select '201711281926','果汁','果汁',2,4,'201711281605','瓶','无',1,0
go
select * from Food 


 
 go
 --用户收货地址表
 create table CustomerAddress
 (
	ID int primary key identity(1,1),-- ID  --收货表ID
	CID varchar(50) references Customer(ID), --用户ID
	[Address] varchar(255) not null, --收货地址
	[State] int default(0) not null,
 )
 go
 --用户订单表
 create table COrder
 (	
	OrderNo varchar(55) primary key, --订单编号
	CID varchar(50) references Customer(ID), --用户ID
	OrderDate datetime  default(getdate()) not null, --下单时间	
	PayMoney money not null check(PayMoney>0) , --付款金额
	Phone  char(11) not null, --联系电话
	OrderAddress varchar(255) not null,--收货地址
	CComment varchar(255),  --用户评价
	State int default(0) --状态
)
go
--详细订单表
create table OrderList
(
	ID int primary key identity(1,1), --详细订单表ID   
	OrderID varchar(55) references COrder(OrderNo) not null,-- 订单ID
	FoodID varchar(55) references Food(ID) not null,  --商品ID
	Price money not null , ---商品单价
	Fcount int  not null, --商品数量
	State int default(0) --状态
)
go
--注册表
create table Regist
( 
 ID int primary key identity(1,1) ,--主键
 RegistName varchar(25) unique not null, --注册名字
 Rpwd  varchar(25) not null,--注册密码
 REmail varchar(100) not null,--注册邮箱地址
)
go

--通过条件查询商品信息存储过程
create proc F_SelectFoodeType
as
select * from FoodType where ID=1
go

--查询商品类型存储过程
create proc F_SelectFoodType
as
	 select * from FoodType order by ID 
go
EXEC F_SelectFoodType
go
alter proc P_GetFoodInfo_ByTypeName
as
 select Top(10) F.*,T.TypeName from Food F inner join FoodType T on F.FoodType=T.ID where F.State=0 and T.TypeName='小吃'
 go
 exec P_GetFoodInfo_ByTypeName

select * from Food
 select  F.*,T.TypeName from Food F inner join FoodType T on F.FoodType=T.ID where F.State=0 and T.TypeName='@TypeName'
 go
 --添加新用户存储过程
 create proc P_AddCustomer
  @RegistName varchar(25),@Rpwd varchar(25),@Email varchar(30)
 as
 insert into Regist([RegistName],[Rpwd],[REmail]) values(@RegistName,@Rpwd,@Email)
 go
 --查询用户信息存储过程
 alter proc P_GetCustomerInfo
 as
 select * from Customer where State=0
 go
 --用户修改密码存储过程
 create proc P_CustomerChangePwd
 @ID varchar(50),@pwd varchar(25)
 as
  update Customer set Password=@pwd where ID=@ID
go
--删除用户存储过程
create proc P_CustomerDelete
@ID varchar(50)
as
 update Customer set State=1 where ID=@ID
 go
 select * from Customer