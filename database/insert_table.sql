use webbuildpc;

insert into nha_cung_cap(name,numberPhone) values('nhacc 1',0123456789);

insert into san_pham(name,categoryid,nha_cung_cap_id) values('Máy tính 1',1,1);
insert into san_pham(name,categoryid,nha_cung_cap_id) values('Máy tính 2',2,1);
insert into san_pham(name,categoryid,nha_cung_cap_id) values('Máy tính 3',3,1);
insert into san_pham(name,categoryid,nha_cung_cap_id) values('Máy tính 4',3,1);
insert into san_pham(name,categoryid,nha_cung_cap_id) values('Máy tính 5',3,1);

insert into vai_tro(name,code) values('Người dùng','user');
insert into vai_tro(name,code) values('Quản trị','admin');

insert into user(username,password,roleId,status) values('username1','pass',1,0);
insert into user(username,password,roleId,status) values('username2','pass',1,1);
insert into user(username,password,roleId,status) values('username3','pass',2,0);
insert into user(username,password,roleId,status) values('username4','pass',2,1);
insert into user(username,password,roleId,status) values('username5','pass',1,0);