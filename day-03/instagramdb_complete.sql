create database instagramdb;
use instagramdb;
show databases;
create table users(
	Userid int primary key,
    Username VARCHAR(50) UNIQUE NOT NULL, 
    Fullname VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(20) UNIQUE NOT NULL,
    Bio Text,
    isverified boolean default False,
    createat datetime default current_timestamp);
desc Users;
select * from users;
alter table Users add column PhoneNummber varchar(15);

alter table Users modify column FullName varchar(150);

alter table Users change column Bio Biography text;
alter table UserInfo drop column PhoneNumber;
alter table Users rename to UserInfo;
desc UserInfo;
truncate table UserInfo;
drop table UserInfo;

create table Posts (
	PostId int primary key,
    UserId int not null,
    Caption text,
    ImageURL varchar(255) not null,
    LikesCount int default 0,
    CreatedAt timestamp default current_timestamp,
    foreign key (UserId) references Users(UserId));
    
create table Comments(
	CommentID int primary key,
    PostID int not null,
    UserID int not null,
    CommentText varchar(255) not null,
    CreatedAt datetime default current_timestamp,
    foreign key (PostID) references Posts(PostID),
    foreign key (UserID) references Users(UserID));
drop table comments;