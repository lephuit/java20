 CREATE DATABASE db_QLBanSach;

   CREATE TABLE   khachhang  (
   idkhachhang  INT NOT NULL,
   taikhoan  VARCHAR(45) NOT NULL,
   matkhau  VARCHAR(50) NOT NULL,
   hoten  VARCHAR(45) NOT NULL,
   ngaysinh  DATE NULL,
   gioitinh  VARCHAR(10) NULL,
   dienthoai  VARCHAR(15) NULL,
   email  VARCHAR(45) NULL,
   diachi  VARCHAR(255) NULL,
  PRIMARY KEY ( idkhachhang ));
 
CREATE TABLE chude (
  idchude INT NOT NULL,
  tenchude VARCHAR(45) NOT NULL,
  PRIMARY KEY (idchude));
  
  CREATE TABLE nhaxuatban (
   idNSB  INT NOT NULL,
   tenNXB  VARCHAR(255) NOT NULL,
   diachi  VARCHAR(255) NULL,
   SDT  VARCHAR(15) NULL,
  PRIMARY KEY ( idNSB ));
  
  CREATE TABLE   tacgia  (
   idtacgia  INT NOT NULL,
   tentacgia  VARCHAR(45) NOT NULL,
   diachi  VARCHAR(255) NULL,
   SDT  VARCHAR(15) NULL,
   tieusu  LONGTEXT NULL,
  PRIMARY KEY ( idtacgia ));
  
CREATE TABLE  sach  (
   idsach  INT NOT NULL,
   tensach  VARCHAR(255)  NOT NULL,
   giaban  DOUBLE NOT NULL,
   mota  LONGTEXT ,
   anhbia  LONGTEXT  ,
   ngaycapnhat  DATE,
   soluongton  INT,
   idNSB  INT NOT NULL,
   idtacgia  INT NOT NULL,
   idchude  INT NOT NULL,
  PRIMARY KEY ( idsach ),
  CONSTRAINT  idNSB 
    FOREIGN KEY ( idNSB ) REFERENCES   nhaxuatban  ( idNSB )
    ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT  idchude 
    FOREIGN KEY ( idchude ) REFERENCES  chude  ( idchude )
    ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT  idtacgia 
    FOREIGN KEY ( idtacgia )
    REFERENCES  tacgia  ( idtacgia )
    ON DELETE NO ACTION ON UPDATE NO ACTION);
    
CREATE TABLE   donhang  (
   iddonhang  INT NOT NULL,
   idkhachhang  INT NOT NULL,
   idsach  INT NOT NULL,
   dathanhtoan  INT NOT NULL,
   ngaygiao  DATE NOT NULL,
   ngaydat  DATE NOT NULL,
   tinhtrangGH  INT NOT NULL,
  PRIMARY KEY ( iddonhang ),
  CONSTRAINT  idkhachhang 
    FOREIGN KEY ( idkhachhang ) REFERENCES   khachhang  ( idkhachhang )
    ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT  sach 
    FOREIGN KEY ( idsach ) REFERENCES  sach  ( idsach )
    ON DELETE NO ACTION ON UPDATE NO ACTION);
