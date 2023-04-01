--  creating database linkedin
create database if not exists linkedin;
-- use linkedin
use linkedin;

--  creating table admin table
create table if not exists employees(
    id int,
    name varchar(255),
    created_at timestamp,
    updated_at timestamp,
     primary key(id)
);
-- inserting values into admin table
insert into employees
values(101,"yuvaraj",now(),now()),
      (102,"vignesh",now(),now()),
      (103,"kishore",now(),now()),
      (104,"deepak",now(),now());

-- creating table users
create table if not exists users(
    id int not null auto_increment,
    name varchar(255),
    dob date,
    bio varchar(255),
    password varchar(255),
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,
    
    primary key (id),
    foreign key(created_by_id) REFERENCES employees(id),
    foreign key(updated_by_id) REFERENCES employees(id)
);

-- inserting values into users
insert into users(name,dob,bio,password,created_at,updated_at,created_by_id)
values('kishore','2002-01-05','i am name','pass1',now(),now(),101),
('vignesh','2002-02-06','i am name','pass2',now(),now(),101),
('akash','2002-03-07','i am name','pass3',now(),now(),101),
('deepak','2002-04-08','i am name','pass4',now(),now(),101),
('vinith','2002-05-09','i am name','pass5',now(),now(),101),
('bala','2002-06-10','i am name','pass6',now(),now(),101),
('sanjay','2002-07-11','i am name','pass7',now(),now(),101),
('ganes','2002-08-12','i am name','pass8',now(),now(),101),
('srithar','2002-09-13','i am name','pass9',now(),now(),101),
('parasu','2002-10-14','i am name','pass10',now(),now(),101),
('prakash','2002-11-15','i am name','pass11',now(),now(),101),
('kalai','2002-12-16','i am name','pass12',now(),now(),101),
('amrish','2002-11-17','i am name','pass13',now(),now(),101),
('jeeva','2002-10-16','i am name','pass14',now(),now(),101),
('dinesh','2002-09-15','i am name','pass15',now(),now(),101),
('gokul','2002-08-14','i am name','pass16',now(),now(),101),
('malliga','2002-07-13','i am name','pass17',now(),now(),101),
('arjun','2002-06-12','i am name','pass18',now(),now(),101),
('sandhya','2002-05-11','i am name','pass19',now(),now(),101),
('prasanth','2002-04-10','i am name','pass20',now(),now(),101),
('rahul','2002-03-09','i am name','pass21',now(),now(),101),
('lokesh','2002-02-08','i am name','pass22',now(),now(),101),
('prabha','2002-01-07','i am name','pass23',now(),now(),101),
('sunil','2002-12-06','i am name','pass24',now(),now(),101),
('ajith','2002-11-05','i am name','pass25',now(),now(),101);

-- creating table emails
create table if not exists emails(
    id int not null auto_increment,
    name varchar(255),
    user_id int,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key(id),
    foreign key(user_id)REFERENCES users(id),
    foreign key(created_by_id)REFERENCES employees(id),
    foreign key(updated_by_id)REFERENCES employees(id) 
);

-- inserting values into emails
insert into emails (name,user_id,created_at,updated_at,created_by_id)
values('kishore@gmail.com',1,now(),now(),101),
('kishore123@gmail.com',1,now(),now(),101),
('vignesh1@gmail.com',2,now(),now(),101),
('vignesh2@gmail.com',2,now(),now(),101),
('akash1@gmail.com',3,now(),now(),101),
('akash2@gmail.com',3,now(),now(),101),
('akash3@gmail.com',3,now(),now(),101),
('deepak1@gmail.com',4,now(),now(),101),
('deepak2@gmail.com',4,now(),now(),101),
('vinith1@gmail.com',5,now(),now(),101),
('bala1@gmail.com',6,now(),now(),101),
('bala@gmail.com',6,now(),now(),101),
('sanjay1@gmail.com',7,now(),now(),101),
('sanjay2@gmail.com',7,now(),now(),101),
('sanjay3@gmail.com',7,now(),now(),101),
('ganesh1@gmail.com',8,now(),now(),101),
('ganesh2@gmail.com',8,now(),now(),101),
('srithar1@gmail.com',9,now(),now(),101),
('srithar2@gmail.com',9,now(),now(),101),
('parasu1@gmail.com',10,now(),now(),101),
('parasu2@gmail.com',10,now(),now(),101),
('praksh1@gmail.com',11,now(),now(),101),
('kalai1@gmail.com',12,now(),now(),101),
('amrish1@gmail.com',13,now(),now(),101),
('jeeva@gmail.com',14,now(),now(),101),
('dinesh1@gmail.com',15,now(),now(),101),
('dinesh2@gmail.com',15,now(),now(),101),
('gokul1@gmail.com',16,now(),now(),101),
('gokul2@gmail.com',16,now(),now(),101),
('malliga1@gmail.com',17,now(),now(),101),
('arjun@gmail.com',18,now(),now(),101),
('sandhya1@gmail.com',19,now(),now(),101),
('sandhya2@gmail.com',19,now(),now(),101),
('prasanth1@gmail.com',20,now(),now(),101),
('prasanth2@gmail.com',20,now(),now(),101),
('prasanth3@gmail.com',20,now(),now(),101),
('rahul1@gmail.com',21,now(),now(),101),
('rahul2@gmail.com',21,now(),now(),101),
('lokesh1@gmail.com',22,now(),now(),101),
('lokesh2@gmail.com',22,now(),now(),101),
('prabha1@gmail.com',23,now(),now(),101),
('prabha2@gmail.com',23,now(),now(),101),
('sunil@gmail.com',24,now(),now(),101),
('ajith@gmail.com',25,now(),now(),101);

-- creating table qualification type table
create table if not exists qualification_type(
    id int not null auto_increment,
    name varchar(255),
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key(id),
    foreign key(created_by_id)REFERENCES employees(id),
    foreign key(updated_by_id)REFERENCES employees(id)
);

-- inserting values into qualification type
insert into qualification_type(name,created_at,updated_at,created_by_id)
values('school',now(),now(),101),
('diploma',now(),now(),101),
('arts&science',now(),now(),101),
('engineerng',now(),now(),101),
('medicine',now(),now(),101),
('law',now(),now(),101);

-- creating table qualification
create table if not exists qualification(
    id int not null auto_increment,
    user_id int,
    qualification_name varchar(255),
    institue_name varchar(255),
    qualification_type int,
    year_of_passing date,  
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,
    
    primary key(id),
    foreign key(user_id) REFERENCES users(id),
    FOREIGN key (qualification_type) REFERENCES qualification_type(id),
    foreign key(created_by_id)REFERENCES employees(id),
    foreign key(updated_by_id)REFERENCES employees(id)
);

-- inserting values into qualification
insert into qualification(user_id,qualification_name,institue_name,qualification_type,year_of_passing,created_at,updated_at,created_by_id)
values(1,'6 to 10','gbhss',1,'2015-06-15',now(),now(),101),
(1,'+1&+2','ghss',1,'2017-06-15',now(),now(),101),
(1,'eee','cpt',2,'2020-06-15',now(),now(),101),
(2,'6 to 10','ghss',1,'2014-05-15',now(),now(),101),
(2,'+1&+2','eci nursary scholl',1,'2016-06-18',now(),now(),101),
(2,'mech','anna university',4,'2020-06-20',now(),now(),101),
(3,'6 to 12','st.pauls',1,'2015-07-08',now(),now(),101),
(3,'ece','murugappa polytecnic college',2,'2020-06-20',now(),now(),101),
(4,'6 to 12','gandhi metric school',1,'2012-05-07',now(),now(),101),
(4,'Bsc maths','madras university',3,'2021-06-01',now(),now(),101),
(5,'10','chennai school',1,'2012-06-20',now(),now(),101),
(5,'+1&+2','vivekanandha scholl',1,'2014-05-05',now(),now(),101),
(5,'mbbs','mmc',5,'2020-02-20',now(),now(),101),
(6,'6 to 12','st.thomas mount school',1,'2014-06-20',now(),now(),101),
(6,'cse','srm',4,'2018-07-01',now(),now(),101),
(7,'6 to 10','mount scholl',5,'2012-02-12',now(),now(),101),
(7,'BA llb','dr.ambedkar law university',6,'2017-05-08',now(),now(),101),
(8,'6 to 12','don bosco',1,'2013-04-12',now(),now(),101),
(8,'Bsc zoology','prisidency',3,'2016-08-12',now(),now(),101),
(9,'6 to 12','holy metric school',1,'2014-11-04',now(),now(),101),
(9,'civil','pmc tech',4,'2018-03-10',now(),now(),101),
(10,'6 to 12','town school',1,'2012-02-22',now(),now(),101),
(10,'b.tech','anna university',4,'2016-01-18',now(),now(),101);

-- creating table work experience
create table if not exists work_experience(
    id int not null auto_increment,
    user_id int,
    name varchar(255),
    start_date date,
    end_date date,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key(id),
    FOREIGN key (user_id) REFERENCES users(id),
     foreign key(created_by_id)REFERENCES employees(id),
    foreign key(updated_by_id)REFERENCES employees(id)
);

-- inserting values into work exp table
insert into`work_experience`(`user_id`,`name`,`start_date`,`created_at`,`updated_at`,`created_by_id`) 
values 
(1,"Google","2019/07/12",now(),now(),101),
(2,"DCKAP","2019/07/12",now(),now(),101),
(3,"Adobe","2019/07/12",now(),now(),101),
(4,"DCKAP","2019/07/12",now(),now(),101),
(5,"Google","2019/07/12",now(),now(),101),
(6,"Amazon","2019/07/12",now(),now(),101),
(7,"Adobe","2019/07/12",now(),now(),101),
(8,"Amazon","2019/07/12",now(),now(),101),
(9,"Adobe","2019/07/12",now(),now(),101),
(10,"Amazon","2019/07/12",now(),now(),101),
(11,"Adobe","2019/07/12",now(),now(),101),
(12,"FaceBook","2019/07/12",now(),now(),101),
(13,"Hewlett-Packard (HP)","2019/07/12",now(),now(),101),
(14,"FaceBook","2019/07/12",now(),now(),101),
(15,"Adobe","2019/07/12",now(),now(),101),
(16,"FaceBook","2019/07/12",now(),now(),101),
(17,"Hewlett-Packard (HP)","2019/07/12",now(),now(),101),
(18,"FaceBook","2019/07/12",now(),now(),101),
(19,"Hewlett-Packard (HP)","2019/07/12",now(),now(),101),
(20,"Salesforce","2019/07/12",now(),now(),101),
(21,"Adobe","2019/07/12",now(),now(),101),
(22,"Salesforce","2019/07/12",now(),now(),101),
(23,"Adobe","2019/07/12",now(),now(),101),
(24,"Salesforce","2019/07/12",now(),now(),101),
(25,"Adobe","2019/07/12",now(),now(),101);

-- creating table post type
create table if not exists post_type(
    id int not null auto_increment,
    name varchar(255),
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,
    
    primary key(id),
    foreign key(created_by_id)REFERENCES employees(id),
    foreign key(updated_by_id)REFERENCES employees(id)
);

-- inserting values into post type
insert into post_type(name,created_at,updated_at,created_by_id)
values('text',now(),now(),101),
('photo',now(),now(),101),
('video',now(),now(),101);

-- creating table posts
create table if not exists posts(
    id int not null auto_increment,
    user_id int,
    post_type_id int,
    description varchar(255),
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,
    
   primary key(id),
    FOREIGN key (user_id) REFERENCES users(id),
    foreign key (post_type_id) REFERENCES post_type(id),
    foreign key(created_by_id)REFERENCES employees(id),
    foreign key(updated_by_id)REFERENCES employees(id)
);

-- inserting values into posts
insert into posts(user_id,post_type_id,description,created_at,updated_at,created_by_id)
values(1,1,'i am started new position',now(),now(),101),
(2,2,'i am started new position',now(),now(),101),
(3,3,'i am started new position',now(),now(),101),
(4,2,'i am started new position',now(),now(),101),
(5,2,'i am started new position',now(),now(),101),
(6,1,'i am started new position',now(),now(),101),
(7,3,'i am started new position',now(),now(),101),
(8,2,'i am started new position',now(),now(),101),
(9,3,'i am started new position',now(),now(),101),
(10,2,'i am started new position',now(),now(),101),
(11,3,'i am started new position',now(),now(),101),
(12,2,'i am started new position',now(),now(),101),
(13,1,'i am started new position',now(),now(),101),
(14,1,'i am started new position',now(),now(),101),
(15,3,'i am started new position',now(),now(),101),
(16,2,'i am started new position',now(),now(),101),
(17,3,'i am started new position',now(),now(),101),
(18,3,'i am started new position',now(),now(),101),
(19,2,'i am started new position',now(),now(),101),
(20,1,'i am started new position',now(),now(),101),
(21,3,'i am started new position',now(),now(),101),
(22,2,'i am started new position',now(),now(),101),
(23,3,'i am started new position',now(),now(),101),
(24,2,'i am started new position',now(),now(),101),
(25,1,'i am started new position',now(),now(),101);

-- creating table likes
create table if not exists likes(
    id int not null auto_increment,
    post_id int,
    user_id int,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key(id),
    foreign key (post_id) REFERENCES posts(id),
    foreign key (user_id) REFERENCES users(id),
    foreign key(created_by_id) REFERENCES employees(id),
    foreign key(updated_by_id) REFERENCES employees(id)
);

-- inserting values into likes
insert into likes(post_id,user_id,created_at,updated_at,created_by_id)
values(1,1,now(),now(),101),
	  (2,11,now(),now(),101),
      (3,19,now(),now(),101),
      (4,12,now(),now(),101),
      (5,16,now(),now(),101),
      (8,15,now(),now(),101),
      (9,13,now(),now(),101),
      (12,18,now(),now(),101),
      (10,17,now(),now(),101),
      (11,2,now(),now(),101),
      (13,4,now(),now(),101),
      (5,3,now(),now(),101),
      (19,5,now(),now(),101),
      (20,8,now(),now(),101),
      (7,6,now(),now(),101),
      (14,1,now(),now(),101),
      (17,7,now(),now(),101),
      (15,9,now(),now(),101),
      (18,10,now(),now(),101),
      (16,14,now(),now(),101);

-- creating table views
 create table if not exists views(
   id int not null auto_increment,
    post_id int,
    user_id int,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,
    
    primary key(id),
    FOREIGN key (user_id) REFERENCES users(id),
    foreign key (post_id) REFERENCES posts(id),
    foreign key(created_by_id)REFERENCES employees(id),
    foreign key(updated_by_id)REFERENCES employees(id)
);

-- inserting values into views table
INSERT INTO views (post_id,user_id,created_at,updated_at,created_by_id)
values(1,2,now(),now(),101),
(2,3,now(),now(),101),
(3,4,now(),now(),101),
(4,3,now(),now(),101),
(5,4,now(),now(),101),
(6,5,now(),now(),101),
(7,2,now(),now(),101),
(8,5,now(),now(),101),
(9,6,now(),now(),101),
(10,7,now(),now(),101),
(11,8,now(),now(),101),
(12,3,now(),now(),101),
(13,4,now(),now(),101),
(14,6,now(),now(),101),
(15,8,now(),now(),101),
(16,9,now(),now(),101),
(17,6,now(),now(),101),
(18,7,now(),now(),101),
(19,4,now(),now(),101),
(20,2,now(),now(),101),
(21,6,now(),now(),101),
(22,4,now(),now(),101),
(24,2,now(),now(),101),
(25,10,now(),now(),101);

-- creating table comments
create table if not exists comments(
    id int not null auto_increment,
    post_id int,
    user_id int,
    description varchar(255),
    comment_id int,
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    primary key(id),
    FOREIGN key (user_id) REFERENCES users(id),
    foreign key(comment_id)REFERENCES comments(id),
     foreign key(created_by_id)REFERENCES employees(id),
    foreign key(updated_by_id)REFERENCES employees(id)
);

-- inserting values into comments table
 INSERT INTO comments(post_id,user_id,description,comment_id,created_at,updated_at,created_by_id) 
VALUES 
(1,2,"wow",null,now(),now(),101),
(1,3,"awesome",1,now(),now(),101),
(1,1,"thank you",2,now(),now(),101),
(1,4,"fantastic",2,now(),now(),101),
(2,4,"i like it",NULL,now(),now(),101),
(2,2,"i dont",3,now(),now(),101),
(3,4,"marvelous",null,now(),now(),101),
(3,6,"new one",NULL,now(),now(),101),
(3,7,":D",7,now(),now(),101),
(4,5,"not well",null,now(),now(),101),
(4,8,"who said?",10,now(),now(),101),
(5,3,"nice one",null,now(),now(),101),
(5,2,"keep it up",12,now(),now(),101),
(6,7,"kit",null,now(),now(),101),
(6,9,"love it",14,now(),now(),101),
(7,10,"burst",NULL,now(),now(),101),
(7,1,"wat?",16,now(),now(),101),
(8,2,"are u serious",null,now(),now(),101),
(8,8,"so wat",18,now(),now(),101),
(8,9,"yep!!",18,now(),now(),101),
(9,1,"kudos",null,now(),now(),101),
(9,4,"adios",21,now(),now(),101),
(10,5,"adu",NULL,now(),now(),101),
(10,8,"translate?",23,now(),now(),101),
(11,4,"cucumbA",null,now(),now(),101),
(11,7,"translate?",25,now(),now(),101),
(11,5,"jolly",26,now(),now(),101);

-- creating table packeges
 CREATE TABLE if not exists packages (
    id int NOT null AUTO_INCREMENT,
    name varchar(255),
    created_at timestamp,
    updated_at timestamp,
    created_by_id int,
    updated_by_id int,

    PRIMARY key (id),
    foreign key(created_by_id)REFERENCES employees(id),
    foreign key(updated_by_id)REFERENCES employees(id)
    );
    
-- INSERT values for packages
INSERT INTO packages(name,created_at,updated_at,created_by_id)
VALUES
("3-months",now(),now(),101),
("6-months",now(),now(),101),
("12-months",now(),now(),101);

-- creating table subscription
CREATE TABLE if not exists  subscription(
     id int not null AUTO_INCREMENT,
     user_id int,
     package_id int,
     expiry_date date,
     is_active int,
     created_at timestamp,
     updated_at timestamp,
     created_by_id int,
     updated_by_id int,

     primary key (id),
     foreign key (user_id) REFERENCES users(id),
     foreign key(package_id) REFERENCES packages(id),
    foreign key(created_by_id)REFERENCES employees(id),
    foreign key(updated_by_id)REFERENCES employees(id)
     
 );

-- inserting values into subscription
INSERT into subscription (user_id,package_id,expiry_date,is_active,created_at,updated_at,created_by_id)
 values
 (1,1,"2022-11-11",0,now(),now(),101),
 (2,2,"2022-12-11",0,now(),now(),101),
 (3,3,"2022-12-25",0,now(),now(),101),
 (4,1,"2022-12-31",1,now(),now(),101),
 (5,2,"2023-11-11",1,now(),now(),101),
 (6,3,"2023-10-11",1,now(),now(),101),
 (7,2,"2023-07-11",1,now(),now(),101),
 (8,1,"2023-03-11",1,now(),now(),101),
 (9,3,"2023-05-11",1,now(),now(),101),
 (10,3,"2023-01-11",1,now(),now(),101),
 (11,1,"2022-11-11",0,now(),now(),101),
 (12,2,"2022-12-11",0,now(),now(),101),
 (13,3,"2022-12-25",0,now(),now(),101),
 (14,1,"2022-12-31",1,now(),now(),101),
 (15,2,"2023-11-11",1,now(),now(),101),
 (16,3,"2023-10-11",1,now(),now(),101),
 (17,2,"2023-07-11",1,now(),now(),101),
 (18,1,"2023-03-11",1,now(),now(),101),
 (19,3,"2023-05-11",1,now(),now(),101),
 (20,3,"2023-01-11",1,now(),now(),101),
 (21,3,"2023-01-11",1,now(),now(),101),
 (22,1,"2022-11-11",0,now(),now(),101),
 (23,2,"2022-12-11",0,now(),now(),101),
 (24,3,"2022-12-25",0,now(),now(),101),
 (25,1,"2022-11-11",0,now(),now(),101);


