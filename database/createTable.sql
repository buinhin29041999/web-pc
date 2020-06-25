drop database webbuildpc;
create database webbuildpc;
use webbuildpc;
CREATE TABLE vai_tro (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    code VARCHAR(255) NOT NULL,
    createDate TIMESTAMP NULL,
    modifiedDate TIMESTAMP NULL,
    createdBy VARCHAR(255) NULL,
    modifiedBy VARCHAR(255) NULL
);
CREATE TABLE user (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(255) NOT NULL,
    passWord VARCHAR(255) NOT NULL,
    fullName NVARCHAR(255) NULL,
    status INT NOT NULL,
    avatar VARCHAR(255) NULL,
    email VARCHAR(255) NULL,
    numberPhone INT NULL,
    address TEXT NULL,
    roleId BIGINT NOT NULL,
    createDate TIMESTAMP NULL,
    modifiedDate TIMESTAMP NULL,
    createdBy VARCHAR(255) NULL,
    modifiedBy VARCHAR(255) NULL
);
alter table user add CONSTRAINT fk_user_role FOREIGN KEY (roleid)
        REFERENCES vai_tro (id);
CREATE TABLE san_pham (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name NVARCHAR(255) NOT NULL,
    thumbnail VARCHAR(255) default NULL,
    shortdescription TEXT NULL,
    content TEXT NULL,
    don_gia INT DEFAULT 0,
    so_luong INT,
    categoryid BIGINT NOT NULL,
    nha_cung_cap_id BIGINT NOT NULL,
    createdate TIMESTAMP NULL,
    modifieddate TIMESTAMP NULL,
    createdby VARCHAR(255) NULL,
    modifiedby VARCHAR(255) NULL
);
CREATE TABLE category (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    code VARCHAR(255) NULL,
    createdate TIMESTAMP NULL,
    modifieddate TIMESTAMP NULL,
    createdby VARCHAR(255) NULL,
    modifiedby VARCHAR(255) NULL
);
CREATE TABLE nha_cung_cap (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    thumbnail VARCHAR(255) NULL,
    numberPhone INT NOT NULL,
    createdate TIMESTAMP NULL,
    modifieddate TIMESTAMP NULL,
    createdby VARCHAR(255) NULL,
    modifiedby VARCHAR(255) NULL
);
alter table san_pham add CONSTRAINT fk_sanpham_category FOREIGN KEY (categoryid)
        REFERENCES category (id);
        alter table san_pham add CONSTRAINT fk_sanpham_nhacungcap FOREIGN KEY (nha_cung_cap_id)
        REFERENCES nha_cung_cap(id);
CREATE TABLE comment (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userid BIGINT NOT NULL,
    san_pham_id BIGINT NOT NULL,
    content TEXT NOT NULL,
    createdate TIMESTAMP NULL,
    modifieddate TIMESTAMP NULL,
    createdby VARCHAR(255) NULL,
    modifiedby VARCHAR(255) NULL
);
		alter table comment add CONSTRAINT fk_comment_user FOREIGN KEY (userid)
        REFERENCES user (id);
        alter table comment add CONSTRAINT fk_comment_sanpham FOREIGN KEY (san_pham_id)
        REFERENCES san_pham (id);
CREATE TABLE hoa_don (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    ho_ten NVARCHAR(255) NOT NULL,
    dia_chi NVARCHAR(255) NOT NULL,
    email VARCHAR(255) NULL,
    dien_thoai INT NOT NULL,
    noi_dung TEXT NOT NULL,
    userId BIGINT NOT NULL,
    createdate TIMESTAMP NULL,
    modifieddate TIMESTAMP NULL,
    createdby VARCHAR(255) NULL,
    modifiedby VARCHAR(255) NULL
);
alter table hoa_don add constraint fk_hoadon_user foreign key (userId) references user(id);
CREATE TABLE menu (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name NVARCHAR(255) NOT NULL,
    vi_tri_menu NVARCHAR(255) NOT NULL,
    lien_ket NVARCHAR(255) NOT NULL,
    thuoc_menu NVARCHAR(255) NOT NULL,
    createdate TIMESTAMP NULL,
    modifieddate TIMESTAMP NULL,
    createdby VARCHAR(255) NULL,
    modifiedby VARCHAR(255) NULL
);
CREATE TABLE lien_he (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name NVARCHAR(255) NOT NULL,
    mo_ta NVARCHAR(255) NOT NULL,
    createdate TIMESTAMP NULL,
    modifieddate TIMESTAMP NULL,
    createdby VARCHAR(255) NULL,
    modifiedby VARCHAR(255) NULL
);
CREATE TABLE quang_cao (
    id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    vi_tri NVARCHAR(255) NOT NULL,
    chieu_cao INT NOT NULL,
    chieu_rong INT NOT NULL,
    lien_ket NVARCHAR(255) NOT NULL,
    ten_file NVARCHAR(255) NOT NULL,
    createdate TIMESTAMP NULL,
    modifieddate TIMESTAMP NULL,
    createdby VARCHAR(255) NULL,
    modifiedby VARCHAR(255) NULL
);
insert into category(code,name) values('may_tinh_bang','Máy tính bảng');
insert into category(code,name) values('may_van-phong','Máy văn phòng');
insert into category(code,name) values('may_chơi_game','Máy chơi game');
insert into category(code,name) values('may_server','Máy Server');

