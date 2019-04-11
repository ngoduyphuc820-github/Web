﻿
USE TOUR;
GO
-- INSERT INTO ROLE.
INSERT INTO ROLE VALUES ('001','ADMIN');
INSERT INTO ROLE VALUES ('002','CUSTOMER');
INSERT INTO ROLE VALUES ('003','MANAGER');

-- INSERT INTO ACCOUNT.

INSERT INTO ACCOUNT VALUES ('001','ngoduyphuc820','12345',0);
INSERT INTO ACCOUNT VALUES ('002','nguyenngocthach','12345',1);
INSERT INTO ACCOUNT VALUES ('003','tranthikimoanh','123456789',0);
INSERT INTO ACCOUNT VALUES ('0011','TranVanKhach','123456789',0);
INSERT INTO ACCOUNT VALUES ('0012','NguyenThiKhach','123456789',0);
INSERT INTO ACCOUNT VALUES ('0013','LeThiKieuKhach','123456789',0);

-- INSERT INTO USERS.
INSERT INTO USERS VALUES('001','User001',N'Ngô Duy',N'Phúc','1','0372369820','001','003','ngoduyphuc820@gmail.com','avatar','1');
INSERT INTO USERS VALUES('002','User002',N'Nguyễn Ngọc',N'Thạch','1','0984564561','002','001','ngocthach123@gmail.com','avatar','2');
INSERT INTO USERS VALUES('003','User003',N'Trần Thị Kim',N'Oanh','0','0384569304','003','003','tranthikimoanh2997@gmail.com','avatar','3');
INSERT INTO USERS VALUES('0011','User011',N'Trần Văn',N'Khánh','1','0325831235','0011','002','tranvankhach@gmail.com','avatar','4');
INSERT INTO USERS VALUES('0012','User012',N'Nguyễn Thị',N'Hòa','1','0391231238','0012','002','nguyenthihoa@gmail.com','avatar','4');
INSERT INTO USERS VALUES('0013','User013',N'Lê Thị Kiều',N'Linh','1','0353691237','0013','002','lethikieulinh@gmail.com','avatar','4');


-- INSERT INTO CITY.
INSERT INTO CITY VALUES ('01', 'HANOI');
INSERT INTO CITY VALUES ('02', 'TP.HCM');
INSERT INTO CITY VALUES ('03', 'DA NANG');

-- INSERT INTO TOWN.
INSERT INTO TOWN VALUES ('01', 'QUẬN BA ĐÌNH','01');
INSERT INTO TOWN VALUES ('02', 'QUẬN HOÀN KIẾM','01');
INSERT INTO TOWN VALUES ('03', 'QUẬN HAI BÀ TRƯNG','01');
INSERT INTO TOWN VALUES ('011', 'QUẬN 1','02');
INSERT INTO TOWN VALUES ('012', 'QUẬN 2','02');
INSERT INTO TOWN VALUES ('013', 'QUẬN 3','02');

-- INSERT INTO TOUR_GUIDE.
INSERT INTO TOUR_GUIDE VALUES ('003','27/01/1997','09033663183141','011',N'59/05/16 đường 48 - Quận 1 - TP. HCM',N'Chuyên khu vực quận 1, quận 2',N'video link','')
INSERT INTO TOUR_GUIDE VALUES ('002','27/07/1997','03723698203141','01',N'59/05/16 đường 48 - Quận Ba Đình - Hà Nội',N'Chuyên dẫn khách thăm quan các quận ở Hà Nội',N'video link','5')
INSERT INTO TOUR_GUIDE VALUES ('001','15/01/1996','09845645613141','013',N'59/05/16 đường 48 - Quận 3 - TP. HCM',N'Chuyên khu vực quận 3, quận 4',N'video link','3')

-- INSERT INTO TOUR_GUIDE.
INSERT INTO TOURIST VALUES ('011',N'Đường 48 - Thủ Đức - TP. HCM',N'Việt Nam');
INSERT INTO TOURIST VALUES ('012',N'Đường 57 - Đống Đa - Hà Nội',N'Việt Nam');
INSERT INTO TOURIST VALUES ('013',N'Đường 35 - Hoàn Kiếm - TP. HCM',N'Việt Nam');

-- INSERT INTO TOUR.
INSERT INTO TOUR VALUES ('001','tour001',N'Du lịch Hà Nội','002','01','5000000');
INSERT INTO TOUR VALUES ('002','tour002',N'Du lịch TP.HCM','001','02','5000000');
INSERT INTO TOUR VALUES ('003','tour003',N'Du lịch TP.HCM','003','02','5000000');

-- INSERT INTO PLACE_VISIT.
-- INSERT INTO BOOK_TOUR.
-- INSERT INTO TIMES.
-- INSERT INTO BANK_CARD.
-- INSERT INTO PAYMENT.
-- INSERT INTO FEEDBACK.