INSERT INTO ADMIN_TB (username, password, role, status) VALUES
                                                            ('admin1', 'password1', 'ADMIN', 'ACTIVE'),
                                                            ('admin@readme.com', '1234', 'ADMIN', 'ACTIVE'),
                                                            ('admin2@readme.com', '1234', 'ADMIN', 'DELETE');

insert into PUBLISHER_TB(username, password, role, business_number, business_name, join_time, status) values ('test1@nate.com', '1234', 'PUBLISHER', '123-45-67890','블루베리', '2021-01-01 00:01:01', 'ACTIVE');
insert into PUBLISHER_TB(username, password, role, business_number, business_name, join_time, status) values ('test2@nate.com', '1234', 'PUBLISHER', '234-05-678901','그린피쉬', '2021-01-01 00:02:01', 'ACTIVE');
insert into PUBLISHER_TB(username, password, role, business_number, business_name, join_time, status) values ('test3@nate.com', '1234', 'PUBLISHER', '345-67-89012','골든오리', '2021-01-01 00:03:01', 'WAIT');
insert into PUBLISHER_TB(username, password, role, business_number, business_name, join_time, status) values ('test4@nate.com', '1234', 'PUBLISHER', '456-78-90123','그레이호크', '2021-01-01 00:03:01', 'WAIT');
insert into PUBLISHER_TB(username, password, role, business_number, business_name, join_time, status) values ('test5@nate.com', '1234', 'PUBLISHER', '567-89-01234','오렌지레몬', '2021-01-01 00:03:01', 'WAIT');
insert into PUBLISHER_TB(username, password, role, business_number, business_name, join_time, status) values ('test6@nate.com', '1234', 'PUBLISHER', '678-90-12345','퍼플펭귄', '2021-01-01 00:03:01', 'DELETE');

insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');
insert into FILE_INFO_TB(type) values ('BOOK_EPUB');
insert into FILE_INFO_TB(type) values ('BOOK_COVER');

insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (1, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (2, 'book1.png', 'https://cdn.pixabay.com/photo/2023/04/24/17/48/bird-7948712_640.jpg', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (3, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (4, 'book2.png', 'https://cdn.pixabay.com/photo/2023/04/29/12/44/large-marble-7958534_640.jpg', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (5, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (6, 'book3.png', 'https://cdn.pixabay.com/photo/2023/04/21/19/53/song-sparrow-7942522__340.jpg', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (7, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (8, 'book1.png', 'https://cdn.pixabay.com/photo/2023/04/28/05/43/polar-bear-7955893__340.jpg', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (9, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (10, 'book2.png', 'https://cdn.pixabay.com/photo/2023/04/27/14/00/cat-7954713__340.jpg', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (11, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (12, 'book3.png', 'https://cdn.pixabay.com/photo/2023/04/25/16/56/bike-7950617__340.jpg', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (13, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (14, 'book1.png', 'https://cdn.pixabay.com/photo/2023/04/14/09/03/houses-7924558_640.jpg', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (15, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (16, 'book2.png', 'https://cdn.pixabay.com/photo/2022/08/11/07/29/monstera-7378842__340.jpg', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (17, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (18, 'book3.png', 'https://cdn.pixabay.com/photo/2023/04/25/03/02/butterfly-7949342__340.jpg', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (19, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (20, 'book1.png', 'https://cdn.pixabay.com/photo/2021/02/12/16/35/forget-me-not-6009034__340.png', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (21, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (22, 'book2.png', 'https://cdn.pixabay.com/photo/2023/04/28/14/31/anemone-ranunculoides-7956776__340.jpg', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (23, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (24, 'book3.png', 'https://cdn.pixabay.com/photo/2023/04/26/19/56/pasta-7953208__340.jpg', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (25, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (26, 'book1.png', 'https://cdn.pixabay.com/photo/2023/04/27/11/08/flowers-7954339__340.jpg', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (27, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (28, 'book2.png', 'https://cdn.pixabay.com/photo/2023/04/29/10/26/owl-7958228__340.jpg', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (29, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (30, 'book3.png', 'https://cdn.pixabay.com/photo/2023/04/28/19/52/frog-7957296__340.jpg', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (31, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (32, 'book1.png', 'https://cdn.pixabay.com/photo/2023/04/30/10/05/philodendron-7960228__340.jpg', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (33, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (34, 'book2.png', 'https://cdn.pixabay.com/photo/2023/04/27/19/03/flower-meadow-7955256__340.jpg', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (35, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (36, 'book3.png', 'https://cdn.pixabay.com/photo/2023/04/25/18/14/mountain-7950729__340.jpg', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (37, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (38, 'book1.png', 'https://cdn.pixabay.com/photo/2022/01/25/16/55/iceberg-6966784__340.jpg', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (39, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (40, 'book2.png', 'https://cdn.pixabay.com/photo/2023/04/12/11/32/sparrow-7920064__340.jpg', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (41, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (42, 'book3.png', 'https://cdn.pixabay.com/photo/2023/04/18/20/21/flowers-7935944__340.jpg', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (43, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (44, 'book1.png', 'https://cdn.pixabay.com/photo/2023/04/22/22/58/bird-7944578__340.jpg', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (45, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (46, 'book2.png', 'https://cdn.pixabay.com/photo/2023/04/22/18/15/beach-7944181__340.jpg', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (47, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (48, 'book3.png', 'https://cdn.pixabay.com/photo/2023/04/17/11/36/apple-7932156__340.jpg', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (49, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (50, 'book1.png', 'https://cdn.pixabay.com/photo/2023/04/19/19/47/gosling-7938462__340.jpg', 70057, 'png', 'ACTIVE');

-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (1, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 'ACTIVE');
-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (1, 'book1.png', 'https://cdn.pixabay.com/photo/2023/04/22/02/20/insect-7942861_640.jpg', 'ACTIVE');
-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (2, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 'ACTIVE');
-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (2, 'book2.png', 'https://cdn.pixabay.com/photo/2023/04/22/22/58/bird-7944578__340.jpg', 'ACTIVE');
-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (3, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 'ACTIVE');
-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (3, 'book3.png', 'https://cdn.pixabay.com/photo/2023/04/24/02/51/crimson-rosella-7947000__340.jpg', 'ACTIVE');
-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (4, 'book4.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 'ACTIVE');
-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (4, 'book4.png', 'https://cdn.pixabay.com/photo/2023/04/16/08/10/flower-7929400__340.jpg', 'ACTIVE');
-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (5, 'book5.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 'ACTIVE');
-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (5, 'book5.png', 'https://cdn.pixabay.com/photo/2023/04/11/16/04/berries-7917661__340.jpg', 'ACTIVE');
-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (6, 'book6.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 'ACTIVE');
-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (6, 'book6.png', 'https://cdn.pixabay.com/photo/2022/09/30/12/56/cat-7489398__340.jpg', 'ACTIVE');
-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (7, 'book7.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 'ACTIVE');
-- insert into FILE_TB(file_info_id, file_name, file_url, status) values (7, 'book7.png', 'https://cdn.pixabay.com/photo/2023/04/14/12/38/bird-7924990__340.jpg', 'ACTIVE');

insert into USER_TB(username, password, role, is_membership, is_auto_payment, join_time, file_info_id, status) values ('유저이름1','1234', 'USER', true, true, '2021-01-01 00:01:01', 1, 'ACTIVE');
insert into USER_TB(username, password, role, is_membership, is_auto_payment, join_time, file_info_id, status) values ('유저이름2','1234', 'USER', true, false, '2021-01-01 00:02:01', 2, 'ACTIVE');
insert into USER_TB(username, password, role, is_membership, is_auto_payment, join_time, file_info_id, status) values ('유저이름3','1234', 'USER', false, false, '2021-01-01 00:03:01', 3, 'ACTIVE');
insert into USER_TB(username, password, role, is_membership, is_auto_payment, join_time, file_info_id, status) values ('유저이름4','1234', 'USER', false, false, '2021-01-01 00:03:01', 3, 'ACTIVE');
insert into USER_TB(username, password, role, is_membership, is_auto_payment, join_time, file_info_id, status) values ('유저이름5','1234', 'USER', false, false, '2021-01-01 00:03:01', 3, 'ACTIVE');

insert into BIG_CATEGORY_TB(big_category, status) values ('자기계발', 'ACTIVE');
insert into BIG_CATEGORY_TB(big_category, status) values ('에세이', 'ACTIVE');
insert into BIG_CATEGORY_TB(big_category, status) values ('인문', 'ACTIVE');
insert into BIG_CATEGORY_TB(big_category, status) values ('경영', 'ACTIVE');
insert into BIG_CATEGORY_TB(big_category, status) values ('언어', 'ACTIVE');
insert into BIG_CATEGORY_TB(big_category, status) values ('소설', 'ACTIVE');
insert into BIG_CATEGORY_TB(big_category, status) values ('역사', 'ACTIVE');

insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('성공_처세', 1, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('인간_관계', 1, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('화술_협상', 1, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('시간_관리', 1, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('리더십', 1, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('여행_에세이', 2, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('예술_에세이', 2, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('독서_에세이', 2, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('심리_에세이', 2, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('사랑_연애_에세이', 2, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('일반', 3, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('심리학', 3, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('교육학', 3, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('철학', 3, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('문학이론', 3, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('경영일반', 4, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('경영이론', 4, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('마케팅_광고', 4, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('재테크_금융', 4, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('세계_경제', 4, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('영어', 5, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('일본어', 5, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('중국어', 5, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('프랑스어', 5, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('기타_외국어', 5, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('고전', 6, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('스릴러', 6, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('역사', 6, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('SF', 6, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('로맨스', 6, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('한국사', 7, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('세계사', 7, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('서양사', 7, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('동양사', 7, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('신화',7, 'ACTIVE');

insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values
                                                                                                                                                      (1, '성공의 법칙', '제임스 스미스', 15000, '성공의 원칙과 철학을 전달하는 자기계발서.', 1, 1, '제임스 스미스는 성공한 사업가로서 인생의 원칙을 전달하는 저자이다.', 1, 2, 'ACTIVE'),
                                                                                                                                                      (2, '인간관계의 기술', '토마스 존슨', 18000, '인간관계의 기초를 알려주는 심리학적 접근의 자기계발서.', 1, 2, '토마스 존슨은 인간관계 전문가로 다양한 강연을 진행하고 있다.', 3, 4, 'ACTIVE'),
                                                                                                                                                      (3, '마법의 말하기', '리사 제이', 17000, '마법처럼 사람들을 사로잡는 화술과 협상의 기술을 소개하는 책.', 1, 3, '리사 제이는 전 세계적으로 유명한 화술 전문가이다.', 5, 6, 'ACTIVE'),
                                                                                                                                                      (4, '시간관리의 비결', '마이클 스톤', 20000, '시간관리의 비결을 알려주는 실용적인 자기계발서.', 1, 4, '마이클 스톤은 시간관리 전문가로 베스트셀러 저자이다.', 7, 8, 'ACTIVE'),
                                                                                                                                                      (5, '진정한 리더의 조건', '칼 레이너', 21000, '진정한 리더의 조건과 리더십의 발전을 위한 조언을 담은 책.', 1, 5, '칼 레이너는 리더십에 대한 연구를 통해 다양한 인사이트를 제공한다.', 9, 10, 'ACTIVE'),
                                                                                                                                                      (6, '세계의 아름다운 여행지', '마크 타워', 19000, '세계의 아름다운 여행지를 소개하는 여행 에세이.', 2, 6, '마크 타워는 여행 전문가로 세계의 아름다운 명소를 소개한다.', 11, 12, 'ACTIVE'),
                                                                                                                                                      (1, '예술의 순간들', '에밀리 브룩스', 16000, '예술과 창작의 과정에서 얻는 영감과 통찰을 담은 에세이.', 2, 7, '에밀리 브룩스는 예술 전문 에세이스트로, 작가와 화가 등 다양한 예술가들과의 인터뷰를 진행한다.', 13, 14, 'ACTIVE'),
                                                                                                                                                      (2, '책읽기의 즐거움', '다니엘 파커', 16000, '독서의 즐거움과 그 속에서 얻을 수 있는 인생의 교훈을 이야기하는 에세이.', 2, 8, '다니엘 파커는 독서와 관련된 에세이를 다루는 작가이다.', 15, 16, 'ACTIVE'),
                                                                                                                                                      (3, '마음의 힐링', '조셉 킹', 15000, '심리학적 기법을 통해 마음의 상처를 치유하는 방법을 소개하는 에세이.', 2, 9, '조셉 킹은 심리학자이자 에세이스트로, 마음의 치유를 돕는 저서를 집필한다.', 17, 18, 'ACTIVE'),
                                                                                                                                                      (4, '사랑과 연애의 과학', '사라 워너', 17000, '사랑과 연애의 심리학적 이면을 분석하는 에세이.', 2, 10, '사라 워너는 사랑과 연애에 대한 심리학 연구를 진행하는 작가이다.', 19, 20, 'ACTIVE'),
                                                                                                                                                      (5, '인문학의 즐거움', '토마스 베커', 18000, '인문학의 다양한 영역과 그 속에서 얻을 수 있는 교훈을 소개하는 책.', 3, 11, '토마스 베커는 인문학 전문가로 다양한 분야의 지식을 공유한다.', 21, 22, 'ACTIVE'),
                                                                                                                                                      (6, '심리학 이해하기', '마이클 리', 21000, '심리학의 기본 개념과 이론을 쉽게 이해할 수 있도록 설명하는 책.', 3, 12, '마이클 리는 심리학 전문가로 다양한 심리학 서적을 집필하였다.', 23, 24, 'ACTIVE'),
                                                                                                                                                      (1, '현대 교육학의 기초', '제시카 헌터', 20000, '현대 교육학의 기초 개념과 방법론을 설명하는 교육학 입문서.', 3, 13, '제시카 헌터는 교육학 전문가로 교육학 서적을 집필한다.', 25, 26, 'ACTIVE'),
                                                                                                                                                      (2, '철학의 세계', '프레드 스미스', 23000, '철학의 역사와 주요 사상가들의 이론을 소개하는 철학 입문서.', 3, 14, '프레드 스미스는 철학자이자 작가로 철학 관련 서적을 다수 저술하였다.', 27, 28, 'ACTIVE'),
                                                                                                                                                      (3, '문학이론 탐구', '크리스티나 밀러', 24000, '다양한 문학 이론과 그 발전 과정을 소개하는 문학 이론 서적.', 3, 15, '크리스티나 밀러는 문학 이론 전문가로, 문학과 관련된 다양한 저서를 집필한다.', 29, 30, 'ACTIVE'),
                                                                                                                                                      (4, '경영 전략의 비밀', '스티븐 로버츠', 22000, '경영 전략을 성공적으로 수립하고 실행하는 방법을 소개하는 책.', 4, 16, '스티븐 로버츠는 경영 전문가로 다양한 기업의 경영 컨설팅을 진행한다.', 31, 32, 'ACTIVE'),
                                                                                                                                                      (5, '혁신적인 기업 문화', '브라이언 트레이시', 25000, '혁신적인 기업 문화를 구축하는 방법과 그 효과를 소개하는 책.', 4, 17, '브라이언 트레이시는 기업 문화 전문가로 다양한 기업의 경영 컨설팅을 진행한다.', 33, 34, 'ACTIVE'),
                                                                                                                                                      (6, '마케팅의 신세계', '린다 데이비스', 26000, '현대 마케팅 전략과 소비자 행동에 대한 분석을 담은 책.', 4, 18, '린다 데이비스는 마케팅 전문가로 다양한 마케팅 전략을 연구하고 있다.', 35, 36, 'ACTIVE'),
                                                                                                                                                      (1, '재테크의 기술', '테리 크루즈', 28000, '재테크를 위한 전략과 노하우를 전하는 금융 서적.', 4, 19, '테리 크루즈는 재무 전문가이자 작가로, 재테크 관련 다양한 저서를 집필하였다.', 37, 38, 'ACTIVE'),
                                                                                                                                                      (2, '세계 경제 동향', '카일 맥도날드', 30000, '세계 경제의 동향과 발전 과정을 분석하는 경제학 서적.', 4, 20, '카일 맥도날드는 경제학자이자 작가로, 경제 관련 서적을 다수 저술하였다.', 39, 40, 'ACTIVE'),
                                                                                                                                                      (3, '영어 회화의 기술', '제니퍼 리', 19000, '영어 회화를 자연스럽게 구사하는 방법을 소개하는 언어 학습서.', 5, 21, '제니퍼 리는 영어 교육 전문가로, 영어 학습 관련 다양한 저서를 집필하였다.', 41, 42, 'ACTIVE'),
                                                                                                                                                      (4, '일본어를 쉽게 배우자', '요시다 마사루', 20000, '일본어 학습에 필요한 기초 문법과 회화를 소개하는 책.', 5, 22, '요시다 마사루는 일본어 교육 전문가로 일본어 교육 관련 서적을 집필하였다.', 43, 44, 'ACTIVE'),
                                                                                                                                                      (5, '중국어로 말해보세요', '왕 리', 21000, '중국어 학습에 필요한 기초 문법과 회화를 소개하는 책.', 5, 23, '왕 리는 중국어 교육 전문가로 중국어 교육 관련 다양한 저서를 집필하였다.', 45, 46, 'ACTIVE'),
                                                                                                                                                      (6, '프랑스어의 매력', '앤 마리 르클레르', 23000, '프랑스어 학습에 필요한 기초 문법과 회화를 소개하는 책.', 5, 24, '앤 마리 르클레르는 프랑스어 교육 전문가로 프랑스어 교육 관련 다양한 저서를 집필하였다.', 47, 48, 'ACTIVE'),

                                                                                                                                                      (1, '마음을 바꾸면 세상이 바뀐다', '손익상', 16000, '개인과 조직이 변화할 때 필요한 역량을 알려주는 자기계발서.', 1, 1, '손익상은 세계적인 컨설턴트로 개인과 조직 변화를 위한 다양한 노하우를 제공한다.', 1, 2, 'ACTIVE'),
                                                                                                                                                      (2, '괴짜 경영자', '김성호', 19000, '괴짜 경영자의 행복한 조직 경영 이야기.', 4, 2, '김성호는 혁신적인 경영전략으로 많은 기업들의 성장을 이끌어냈다.', 3, 4, 'ACTIVE'),
                                                                                                                                                      (3, '소통의 기술', '조지 위', 21000, '소통의 기술을 개선하여 업무성과를 높이는 방법을 알려주는 비즈니스 자기계발서.', 4, 1, '조지 위는 비즈니스 컨설턴트로 다양한 기업에서 소통 전략 수립을 돕고 있다.', 5, 6, 'ACTIVE'),
                                                                                                                                                      (4, '성공하는 리더', '안토니 로버츠', 25000, '성공적인 리더십의 핵심을 알려주는 비즈니스 자기계발서.', 4, 5, '안토니 로버츠는 글로벌 CEO로 성공적인 기업 경영전략을 개발하고 있다.', 7, 8, 'ACTIVE'),
                                                                                                                                                      (5, '직장에서 살아남는 법', '김상우', 18000, '직장에서 성공하는 방법과 조직 내에서의 스트레스 관리 방법을 소개하는 비즈니스 자기계발서.', 4, 1, '김상우는 HR 전문가로 다양한 기업에서 인재관리와 직원 복지 제도를 설계하고 있다.', 9, 10, 'ACTIVE'),
                                                                                                                                                      (6, '바쁨의 미학', '김초희',20000, '현대인들의 바쁜 삶을 반성하고 진정한 삶의 가치를 찾아가는 에세이.', 2, 1, '김초희는 문학과 예술을 사랑하는 저자로 다양한 글쓰기를 통해 독자와 소통한다.', 11, 12, 'ACTIVE'),
                                                                                                                                                      (1, '백만장자의 꿈', '강영준', 17000, '돈이 되는 습관과 투자 전략을 소개하는 자기계발 에세이.', 2, 4, '강영준은 성공적인 투자를 통해 백만장자가 된 기업가이다.', 13, 14, 'ACTIVE'),
                                                                                                                                                      (2, '취미의 힘', '한지영', 15000, '취미생활을 통해 삶의 질을 높이는 방법을 알려주는 에세이.', 2, 3, '한지영은 작가로서 다양한 주제로 에세이를 쓰고 있다.', 15, 16, 'ACTIVE'),
                                                                                                                                                      (3, '사랑의 단상', '유은정', 16000, '사랑에 대한 감동적인 이야기를 담은 에세이.', 2, 5, '유은정은 문학작가로서 다양한 장르의 작품을 발표하고 있다.', 17, 18, 'ACTIVE'),
                                                                                                                                                      (4, '인생은 공부다', '김정민', 19000, '공부의 즐거움과 인생의 방향성을 찾아가는 방법을 알려주는 에세이.', 2, 3, '김정민은 대한민국 대표적인 멘탈컨설턴트로 다양한 사람들의 인생을 돕고 있다.', 19, 20, 'ACTIVE'),
                                                                                                                                                      (5, '현대 예술의 이해', '박지원', 22000, '현대 예술의 변화와 발전을 이해하는데 도움을 주는 인문학 책.', 3, 5, '박지원은 미술사 연구자로서 다양한 논문과 강의를 통해 예술에 대한 이해를 깊이 있게 알린다.', 21, 22, 'ACTIVE'),
                                                                                                                                                      (6, '세계사의 비밀', '피터 프랭클', 25000, '세계사에서 잊혀진 사건과 인물들어진 역사를 살펴보는 인문학 책.', 3, 2, '피터 프랭클은 역사학자로서 세계사에 대한 깊이 있는 연구를 진행하고 있다.', 23, 24, 'ACTIVE'),
                                                                                                                                                      (1, '철학의 이해', '김지희', 18000, '철학적 사고를 통해 인생의 의미와 가치를 발견하는 인문학 책.', 3, 4, '김지희는 철학자로서 다양한 철학적 주제에 대한 글을 쓰고 있다.', 25, 26, 'ACTIVE'),
                                                                                                                                                      (2, '문학작품 읽는 법', '이수진', 21000, '문학작품을 즐기고 이해하는 방법을 가르쳐주는 인문학 책.', 3, 1, '이수진은 문학평론가로서 다양한 작품에 대한 비평과 해석을 진행하고 있다.', 27, 28, 'ACTIVE'),
                                                                                                                                                      (3, '한국의 미술사', '최재형', 28000, '한국 미술의 역사와 발전을 알아가는 인문학 책.', 3, 5, '최재형은 미술사 연구자로서 한국 미술에 대한 깊이 있는 연구를 진행하고 있다.', 29, 30, 'ACTIVE'),
                                                                                                                                                      (4, '네이버의 성공전략', '이건희', 26000, '네이버의 성공 요인과 전략을 파헤치는 경영 전략서.', 4, 2, '이건희는 네이버의 창업자이자 현재 네이버 대표이다.', 31, 32, 'ACTIVE'),
                                                                                                                                                      (5, '마케팅 대표작', '알 리스', 23000, '마케팅 분야의 대표적인 작품들을 소개하고 해석하는 경영서.', 4, 3, '알 리스는 마케팅 분야의 저명한 작가이며 다양한 저서를 출간하고 있다.', 33, 34, 'ACTIVE'),
                                                                                                                                                      (6, '금융상식 100', '박성주', 17000, '금융 상식을 쉽고 간결하게 설명하는 경영서.', 4, 4, '박성주는 금융 전문가로서 금융에 대한 폭넓은 경험을 갖고 있다.', 35, 36, 'ACTIVE'),
                                                                                                                                                      (1, '예술경영학', '윤혜영', 25000, '예술 기관과 예술 시장에서 경영 전략과 마케팅 전략을 이해하는 경영서.', 4, 1, '윤혜영은 예술 경영 분야에서 활동하며 예술 기관의 경영과 마케팅 전략을 연구하고 있다.', 37, 38, 'ACTIVE'),
                                                                                                                                                      (2, 'CEO의 기록', '김영준', 30000, '한국 기업의 대표적인 CEO들의 성공 비결과 리더십을 파헤치는 경영서.', 4, 5, '김영준은 한국 경영계의 대표적인 인물 중 한 명으로 다양한 기업의 CEO 경력을 보유하고 있다.', 39, 40, 'ACTIVE'),
                                                                                                                                                      (3, '영어회화 프레임 1000', '최성욱', 18000, '영어 회화에서 사용하는 다양한 프레임을 1000가지 모아 정리한 언어서적.', 5, 1, '최성욱은 언어학자로서 다양한 언어 관련 서적을 출간하고 있다.', 41, 42, 'ACTIVE'),
                                                                                                                                                      (4, '한국어 문법 심화', '김영희', 22000, '한국어 문법의 기초를 확실히 이해한 독자들을 대상으로 한 한국어 문법 심화서적.', 5, 2, '김영희는 언어 교육자로서 다양한 교재와 함께 언어교육에 대한 연구를 진행하고 있다.', 43, 44, 'ACTIVE'),
                                                                                                                                                      (5, '일어회화 초급', '유미', 14000, '일본어 초보자를 위한 일본어 회화서적.', 5, 3, '유미는 일본어 교육자로서 다양한 일본어 교재를 출간하고 있다.', 45, 46, 'ACTIVE'),
                                                                                                                                                      (6, '중국어 핵심 단어 1000', '장윤경', 19000, '중국어 초급 학습자를 위한 중국어 핵심 단어1000개를 선정하여 정리한 언어서적.', 5, 4, '장윤경은 중국어 교육자로서 다양한 중국어 교재를 출간하고 있다.', 47, 48,'ACTIVE'),
                                                                                                                                                      (1, '프랑스어회화 기초', '알랭', 16000, '프랑스어 초보자를 위한 프랑스어 회화서적.', 5, 5, '알랭은 프랑스어 교육자로서 다양한 프랑스어 교재를 출간하고 있다.', 49, 50, 'ACTIVE'),
                                                                                                                                                      (2, '1984', '조지 오웰', 12000, '모든 것이 감시되는 사회에서 한 남자의 저항을 그린 대표적인 고전 소설.', 6, 1, '조지 오웰은 영국의 소설가로 20세기 문학의 거장 중 한 명이다.', 1, 2, 'ACTIVE');

                                                                                                                                                          insert into BOOKMARK_TB(user_id, book_id, page_num, status) values (1, 2, 15, 'ACTIVE');
insert into BOOKMARK_TB(user_id, book_id, page_num, status) values (1, 3, 29, 'ACTIVE');
insert into BOOKMARK_TB(user_id, book_id, page_num, status) values (1, 4, 54, 'ACTIVE');
insert into BOOKMARK_TB(user_id, book_id, page_num, status) values (2, 6, 35, 'ACTIVE');
insert into BOOKMARK_TB(user_id, book_id, page_num, status) values (2, 6, 75, 'ACTIVE');
insert into BOOKMARK_TB(user_id, book_id, page_num, status) values (3, 2, 65, 'ACTIVE');

INSERT INTO HEART_TB (user_id, book_id, status) VALUES
                                                    (1, 1, 'ACTIVE'),
                                                    (1, 2, 'ACTIVE'),
                                                    (1, 4, 'ACTIVE'),
                                                    (1, 5, 'ACTIVE'),
                                                    (1, 6, 'ACTIVE'),
                                                    (1, 7, 'ACTIVE'),
                                                    (1, 8, 'ACTIVE'),
                                                    (1, 9, 'ACTIVE'),
                                                    (1, 10, 'ACTIVE'),
                                                    (1, 11, 'ACTIVE'),
                                                    (1, 12, 'ACTIVE'),
                                                    (1, 13, 'ACTIVE'),
                                                    (1, 14, 'ACTIVE'),
                                                    (1, 15, 'ACTIVE'),
                                                    (1, 16, 'ACTIVE'),
                                                    (1, 17, 'ACTIVE'),
                                                    (1, 18, 'ACTIVE'),
                                                    (1, 19, 'ACTIVE'),
                                                    (1, 20, 'ACTIVE'),
                                                    (1, 21, 'ACTIVE'),
                                                    (1, 22, 'ACTIVE'),
                                                    (1, 23, 'ACTIVE'),
                                                    (1, 24, 'ACTIVE'),
                                                    (1, 25, 'ACTIVE'),
                                                    (1, 26, 'ACTIVE'),
                                                    (1, 27, 'ACTIVE'),
                                                    (1, 28, 'ACTIVE'),
                                                    (1, 29, 'ACTIVE'),
                                                    (1, 31, 'ACTIVE'),
                                                    (1, 32, 'ACTIVE'),
                                                    (2, 14, 'ACTIVE'),
                                                    (2, 15, 'ACTIVE'),
                                                    (2, 16, 'ACTIVE'),
                                                    (2, 17, 'ACTIVE'),
                                                    (2, 18, 'ACTIVE'),
                                                    (2, 19, 'ACTIVE'),
                                                    (2, 20, 'ACTIVE'),
                                                    (2, 21, 'ACTIVE'),
                                                    (2, 22, 'ACTIVE'),
                                                    (2, 23, 'ACTIVE'),
                                                    (2, 24, 'ACTIVE'),
                                                    (2, 25, 'ACTIVE'),
                                                    (2, 26, 'ACTIVE'),
                                                    (2, 27, 'ACTIVE'),
                                                    (2, 28, 'ACTIVE'),
                                                    (2, 29, 'ACTIVE'),
                                                    (2, 31, 'ACTIVE'),
                                                    (2, 32, 'ACTIVE'),
                                                    (2, 1, 'ACTIVE'),
                                                    (2, 2, 'ACTIVE'),
                                                    (3, 1, 'ACTIVE'),
                                                    (3, 4, 'ACTIVE'),
                                                    (4, 1, 'ACTIVE'),
                                                    (5, 2, 'ACTIVE');


insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 1, 1.8, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 1, 1.2, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 1, 1.3, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 2, 2.2, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 2, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 2, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 3, 2.4, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 3, 3.9, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 3, 4.8, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 4, 2.1, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 4, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 4, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 5, 2.8, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 5, 3.6, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 5, 4.8, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 6, 2.3, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 6, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 6, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 7, 2.4, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 7, 3.2, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 7, 4.2, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 8, 2.3, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 8, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 8, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 9, 2.4, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 9, 3.3, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 9, 4.8, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 10, 2.3, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 10, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 10, 4.4, '리뷰내용6', 'WAIT');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 11, 2.4, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 11, 3.2, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 11, 4.3, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 12, 2.3, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 12, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 12, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 13, 2.1, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 13, 3.2, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 13, 4.8, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 14, 2.1, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 14, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 14, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 15, 2.4, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 15, 3.2, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 15, 4.8, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 16, 2.3, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 16, 2.6, '리뷰내용5', 'WAIT');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 16, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 17, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 17, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 17, 4.6, '리뷰내용6', 'WAIT');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 18, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 18, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 18, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 19, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 19, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 19, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 20, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 20, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 20, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 21, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 21, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 21, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 22, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 22, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 22, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 23, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 23, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 23, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 24, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 24, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 24, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 25, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 25, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 25, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 26, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 26, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 26, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 27, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 27, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 27, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 28, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 28, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 28, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 29, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 29, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 29, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 30, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 30, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 30, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 31, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 31, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 31, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 32, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 32, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 32, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 33, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 33, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 33, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 34, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 34, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 34, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 35, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 35, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 35, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 36, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 36, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 36, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 37, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 37, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 37, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 38, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 38, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 38, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 39, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 39, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 39, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 40, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 40, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 40, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 41, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 41, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 41, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 42, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 42, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 42, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 43, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 43, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 43, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 44, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 44, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 44, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 45, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 45, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 45, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 46, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 46, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 46, 4.6, '리뷰내용6', 'ACTIVE');

INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 1, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 1, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 1, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 2, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 2, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 2, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 3, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 3, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 3, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 4, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 4, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 4, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 5, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 5, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 5, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 6, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 6, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 6, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 7, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 7, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 7, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 8, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 8, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 8, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 9, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 9, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 9, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 10, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 10, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 10, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 11, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 11, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 11, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 12, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 12, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 12, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 13, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 13, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 13, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 14, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 14, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 14, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 15, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 15, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 15, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 16, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 16, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 16, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 17, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 17, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 17, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 18, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 18, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 18, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 19, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 19, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 19, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 20, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 20, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 20, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 21, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 21, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 21, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 22, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 22, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 22, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 23, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 23, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 23, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 24, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 24, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 24, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 25, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 25, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 25, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 26, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 26, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 26, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 27, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 27, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 27, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 28, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 28, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 28, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 29, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 29, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 29, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 30, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 30, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 30, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 31, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 31, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 31, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 32, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 32, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 32, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 33, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 33, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 33, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 34, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 34, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 34, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 35, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 35, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 35, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 36, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 36, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 36, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 37, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 37, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 37, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 38, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 38, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 38, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 39, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 39, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 39, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 40, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 40, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 40, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 41, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 41, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 41, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 42, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 42, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 42, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 43, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 43, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 43, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 44, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 44, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 44, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 45, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 45, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 45, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 46, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 46, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 46, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 47, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 47, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 47, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 48, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 48, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 48, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 49, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 49, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 49, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(1, 50, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(2, 50, 15000, '2021-01-01 00:01', 'ACTIVE');
INSERT INTO BOOK_PAYMENT_TB(user_id, book_id, price, payment_time, status) VALUES(3, 50, 15000, '2021-01-01 00:01', 'ACTIVE');

insert into BOOK_UPDATE_LIST_TB(book_id, publisher_id, title, author, price, introduction, epub_url, cover_url, big_category_id, small_category_id, author_info, content, status) values (1,1,'수정할 제목','수정할 저자', 2000, '수정할 책 소개', 'https://test.com/test.epub', 'https://cdn.pixabay.com/photo/2023/04/10/15/12/succulent-7914023__340.jpg', 1,1,'수정할 저자정보','수정하고싶어요', 'ACTIVE');

insert into BOOK_DELETE_LIST_TB(book_id, cover_url, content, status) values (2, 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png', '그냥 삭제하고싶어서', 'ACTIVE');

insert into QUESTION_TB(role, user_id, publisher_id, title, content, write_time, status) values ('PUBLISHER', null, 1, '출판사의 첫번째 문의 입니다', '출판사의 첫번째 문의내용 입니다','2023-05-06 00:02:01', 'ACCEPT');
insert into QUESTION_TB(role, user_id, publisher_id, title, content, write_time, status) values ('PUBLISHER', null, 2, '출판사의 두번째 문의 입니다', '출판사의 두번째 문의내용 입니다','2023-05-06 00:02:01', 'WAIT');
insert into QUESTION_TB(role, user_id, publisher_id, title, content, write_time, status) values ('PUBLISHER', null, 3, '출판사의 세번째 문의 입니다', '출판사의 세번째 문의내용 입니다','2023-05-06 00:02:01', 'WAIT');
insert into QUESTION_TB(role, user_id, publisher_id, title, content, write_time, status) values ('USER', 1, null, '유저의 첫번재 문의 입니다', '유저의 첫번재 문의내용 입니다','2023-05-06 00:02:01', 'WAIT');

insert into ANSWER_TB(question_id, content, write_time,status) values (1, '첫번째 답변내용 입니다', '2023-05-06 00:04:01','ACTIVE');

commit;