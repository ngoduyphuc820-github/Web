
-- INSERT INTO ROLE.
INSERT INTO ROLE(NAME_ROLE) VALUES ('ADMIN'),('TOUR GUIDE'),('TOURIST');

-- INSERT INTO ACCOUNT.

INSERT INTO ACCOUNT(USERNAME,PASSWORD) 
VALUES ('ngoduyphuc820','12345'),('nguyenngocthach','thach'),('tranthikimoanh','123456789'),
('TranVanKhach','123456789'),('NguyenThiKhach','123456789'),('LeThiKieuKhach','123456789');

-- INSERT INTO USERS.
INSERT INTO USERS(CODE_USER,FIRSTNAME,LASTNAME,SEX,PHONE,ID_ACCOUNT,ID_ROLE,EMAIL,AVATAR) 
VALUES('User001',N'Ngô Duy',N'Phúc','1','0372369820',1,2,'ngoduyphuc820@gmail.com','avatar'),
('User002',N'Nguyễn Ngọc',N'Thạch','1','0984564561',2,1,'ngocthach123@gmail.com','avatar'),
('User003',N'Trần Thị Kim',N'Oanh','0','0384569304',3,3,'tranthikimoanh2997@gmail.com','avatar'),
('User011',N'Trần Văn',N'Khánh','1','0325831235',4,2,'tranvankhach@gmail.com','avatar'),
('User012',N'Nguyễn Thị',N'Hòa','1','0391231238',5,3,'nguyenthihoa@gmail.com','avatar'),
('User013',N'Lê Thị Kiều',N'Linh','1','0353691237',6,2,'lethikieulinh@gmail.com','avatar');


-- INSERT INTO CITY.
INSERT INTO CITY(CITY) VALUES ( 'HANOI'),( 'TP.HCM'),( 'DA NANG');

-- INSERT INTO TOWN.
INSERT INTO TOWN(TOWN,ID_CITY) 
VALUES ( N'QUẬN BA ĐÌNH',1),(N'QUẬN HOÀN KIẾM',1),( N'QUẬN HAI BÀ TRƯNG',1),
( N'QUẬN 1',2),( N'QUẬN 2',2),( N'QUẬN 3',2),( N'QUẬN 4',2),( N'QUẬN 5',2),( N'QUẬN 6',2),
( N'QUẬN 7',2),( N'QUẬN 8',2),( N'QUẬN 9',2),( N'QUẬN 10',2),( N'QUẬN 11',2),( N'QUẬN 12',2),
( N'QUẬN Thủ Đức',2),( N'QUẬN Tân Bình',2),( N'QUẬN Bình Tân',2),( N'QUẬN Tân Phú',2),( N'QUẬN Gò Vấp',2);

-- INSERT INTO TOUR_GUIDE.
INSERT INTO TOUR_GUIDE(ID_TOURGUIDE,DOB,INDENTITY_CARD,ID_TOWN,ADDRESS,PROMOTION,VIDEO_LINK,REPULATION) 
VALUES (1,'27/01/1997','09033663183141',4,N'59/05/16 đường 48 - Quận 1 - TP. HCM',N'Chuyên khu vực quận 1, quận 2',N'video link',0),
(4,'27/07/1997','03723698203141',1,N'59/05/16 đường 48 - Quận Ba Đình - Hà Nội',N'Chuyên dẫn khách thăm quan các quận ở Hà Nội',N'video link',0),
(2,'15/01/1996','09845645613141',6,N'59/05/16 đường 48 - Quận 3 - TP. HCM',N'Chuyên khu vực quận 3, quận 4',N'video link',0)

-- INSERT INTO TOUR_GUIDE.
INSERT INTO TOURIST(ID_TOURIST,PLACE_FROM,NATIONALITY)
 VALUES (3,'CALIFORNIA','AMERIAN'),
(5,'SYDNEY','AUSTRALIA')


-- INSERT INTO PLACE_VISIT.
-- INSERT INTO BOOK_TOUR.
-- INSERT INTO TIMES.
-- INSERT INTO BANK_CARD.
-- INSERT INTO PAYMENT.
-- INSERT INTO FEEDBACK.
