INSERT INTO ADMIN_TB (username, password, role, status) VALUES
                                                            ('admin1', 'password1', 'ADMIN', 'ACTIVE'),
                                                            ('admin@readme.com', '1234', 'ADMIN', 'ACTIVE'),
                                                            ('admin2@readme.com', '1234', 'ADMIN', 'DELETE');

insert into PUBLISHER_TB(username, password, role, business_number, business_name, join_time, status) values ('test1@nate.com', '1234', 'PUBLISHER', '123','사업자이름1', '2021-01-01 00:01', 'ACTIVE');
insert into PUBLISHER_TB(username, password, role, business_number, business_name, join_time, status) values ('test2@nate.com', '1234', 'PUBLISHER', '456','사업자이름2', '2021-01-01 00:02', 'ACTIVE');
insert into PUBLISHER_TB(username, password, role, business_number, business_name, join_time, status) values ('test3@nate.com', '1234', 'PUBLISHER', '789','사업자이름3', '2021-01-01 00:03', 'WAIT');
insert into PUBLISHER_TB(username, password, role, business_number, business_name, join_time, status) values ('test4@nate.com', '1234', 'PUBLISHER', '11-22-33','사업자이름4', '2021-01-01 00:03', 'WAIT');
insert into PUBLISHER_TB(username, password, role, business_number, business_name, join_time, status) values ('test5@nate.com', '1234', 'PUBLISHER', '11-22-33','사업자이름5', '2021-01-01 00:03', 'WAIT');
insert into PUBLISHER_TB(username, password, role, business_number, business_name, join_time, status) values ('test6@nate.com', '1234', 'PUBLISHER', '11-22-33','사업자이름6', '2021-01-01 00:03', 'DELETE');

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
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (2, 'book1.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (3, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (4, 'book2.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (5, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (6, 'book3.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/7aedba39-c496-4b34-866c-942493a292ac-book3.png', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (7, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (8, 'book1.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (9, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (10, 'book2.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (11, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (12, 'book3.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/7aedba39-c496-4b34-866c-942493a292ac-book3.png', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (13, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (14, 'book1.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (15, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (16, 'book2.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (17, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (18, 'book3.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/7aedba39-c496-4b34-866c-942493a292ac-book3.png', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (19, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (20, 'book1.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (21, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (22, 'book2.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (23, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (24, 'book3.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/7aedba39-c496-4b34-866c-942493a292ac-book3.png', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (25, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (26, 'book1.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (27, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (28, 'book2.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (29, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (30, 'book3.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/7aedba39-c496-4b34-866c-942493a292ac-book3.png', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (31, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (32, 'book1.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (33, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (34, 'book2.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (35, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (36, 'book3.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/7aedba39-c496-4b34-866c-942493a292ac-book3.png', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (37, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (38, 'book1.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (39, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (40, 'book2.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (41, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (42, 'book3.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/7aedba39-c496-4b34-866c-942493a292ac-book3.png', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (43, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (44, 'book1.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png', 70057, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (45, 'book2.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub', 606063, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (46, 'book2.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png', 65452, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (47, 'book3.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub', 1728611, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (48, 'book3.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/7aedba39-c496-4b34-866c-942493a292ac-book3.png', 30563, 'png', 'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (49, 'book1.epub', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub', 3529201, 'epub',  'ACTIVE');
insert into FILE_TB(file_info_id, file_name, file_url, file_size, extension, status) values (50, 'book1.png', 'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png', 70057, 'png', 'ACTIVE');




insert into USER_TB(username, password, role, is_membership, is_auto_payment, join_time, file_info_id, status) values ('유저이름1','1234', 'USER', true, true, '2021-01-01 00:01', 1, 'ACTIVE');
insert into USER_TB(username, password, role, is_membership, is_auto_payment, join_time, file_info_id, status) values ('유저이름2','1234', 'USER', true, false, '2021-01-01 00:02', 2, 'ACTIVE');
insert into USER_TB(username, password, role, is_membership, is_auto_payment, join_time, file_info_id, status) values ('유저이름3','1234', 'USER', false, false, '2021-01-01 00:03', 3, 'ACTIVE');
insert into USER_TB(username, password, role, is_membership, is_auto_payment, join_time, file_info_id, status) values ('유저이름4','1234', 'USER', false, false, '2021-01-01 00:03', 3, 'ACTIVE');
insert into USER_TB(username, password, role, is_membership, is_auto_payment, join_time, file_info_id, status) values ('유저이름5','1234', 'USER', false, false, '2021-01-01 00:03', 3, 'ACTIVE');

insert into BIG_CATEGORY_TB(big_category, status) values ('경영', 'ACTIVE');
insert into BIG_CATEGORY_TB(big_category, status) values ('자기계발', 'ACTIVE');
insert into BIG_CATEGORY_TB(big_category, status) values ('에세이', 'ACTIVE');
insert into BIG_CATEGORY_TB(big_category, status) values ('인문', 'ACTIVE');
insert into BIG_CATEGORY_TB(big_category, status) values ('언어', 'ACTIVE');
insert into BIG_CATEGORY_TB(big_category, status) values ('소설', 'ACTIVE');
insert into BIG_CATEGORY_TB(big_category, status) values ('역사', 'ACTIVE');

insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('경영일반', 1, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('경영이론', 1, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('마케팅_광고', 1, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('재테크_금융', 1, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('세계_경제', 1, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('성공_처세', 2, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('인간_관계', 2, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('화술_협상', 2, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('시간_관리', 2, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('리더십', 2, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('여행_에세이', 3, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('예술_에세이', 3, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('독서_에세이', 3, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('심리_에세이', 3, 'ACTIVE');
insert into SMALL_CATEGORY_TB(small_category, big_category_id, status) values ('사랑_연애_에세이', 3, 'ACTIVE');

insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 2, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목2', '저자2', 1000,'책소개2', 2, 2, '저자정보2', 3, 4, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목3', '저자3', 1000,'책소개3', 3, 3, '저자정보3', 5, 6, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (2, '책제목4', '저자4', 1000,'책소개4', 4, 4, '저자정보4', 7, 8, 'WAIT');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (2, '책제목5', '저자5', 1000,'책소개5', 5, 5, '저자정보5', 9, 10, 'DELETE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (3, '책제목6', '저자6', 1000,'책소개6', 5, 5, '저자정보6', 1, 6, 'DELETE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (3, '책제목7', '저자7', 1000,'책소개7', 5, 5, '저자정보7', 1, 7, 'DELETE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (2, '책제목5', '저자5', 1000,'책소개5', 5, 5, '저자정보5', 1, 5, 'DELETE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (3, '책제목6', '저자6', 1000,'책소개6', 5, 5, '저자정보6', 1, 6, 'DELETE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (3, '책제목7', '저자7', 1000,'책소개7', 5, 5, '저자정보7', 1, 7, 'DELETE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (2, '책제목5', '저자5', 1000,'책소개5', 5, 5, '저자정보5', 1, 5, 'DELETE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (3, '책제목6', '저자6', 1000,'책소개6', 5, 5, '저자정보6', 1, 6, 'DELETE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (3, '책제목7', '저자7', 1000,'책소개7', 5, 5, '저자정보7', 1, 7, 'DELETE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 1, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목2', '저자2', 1000,'책소개2', 2, 2, '저자정보2', 1, 2, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목3', '저자3', 1000,'책소개3', 3, 3, '저자정보3', 1, 3, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 1, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목2', '저자2', 1000,'책소개2', 2, 2, '저자정보2', 1, 2, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목3', '저자3', 1000,'책소개3', 3, 3, '저자정보3', 1, 3, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 1, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목2', '저자2', 1000,'책소개2', 2, 2, '저자정보2', 1, 2, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목3', '저자3', 1000,'책소개3', 3, 3, '저자정보3', 1, 3, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 1, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목2', '저자2', 1000,'책소개2', 2, 2, '저자정보2', 1, 2, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목3', '저자3', 1000,'책소개3', 3, 3, '저자정보3', 1, 3, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 1, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목2', '저자2', 1000,'책소개2', 2, 2, '저자정보2', 1, 2, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목3', '저자3', 1000,'책소개3', 3, 3, '저자정보3', 1, 3, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 1, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목2', '저자2', 1000,'책소개2', 2, 2, '저자정보2', 1, 2, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목3', '저자3', 1000,'책소개3', 3, 3, '저자정보3', 1, 3, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 1, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목2', '저자2', 1000,'책소개2', 2, 2, '저자정보2', 1, 2, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목3', '저자3', 1000,'책소개3', 3, 3, '저자정보3', 1, 3, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 1, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목2', '저자2', 1000,'책소개2', 2, 2, '저자정보2', 1, 2, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목3', '저자3', 1000,'책소개3', 3, 3, '저자정보3', 1, 3, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 1, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목2', '저자2', 1000,'책소개2', 2, 2, '저자정보2', 1, 2, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목3', '저자3', 1000,'책소개3', 3, 3, '저자정보3', 1, 3, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 1, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목2', '저자2', 1000,'책소개2', 2, 2, '저자정보2', 1, 2, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목3', '저자3', 1000,'책소개3', 3, 3, '저자정보3', 1, 3, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 1, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목2', '저자2', 1000,'책소개2', 2, 2, '저자정보2', 1, 2, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목3', '저자3', 1000,'책소개3', 3, 3, '저자정보3', 1, 3, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 1, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목2', '저자2', 1000,'책소개2', 2, 2, '저자정보2', 1, 2, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목3', '저자3', 1000,'책소개3', 3, 3, '저자정보3', 1, 3, 'ACTIVE');
insert into BOOK_TB(publisher_id, title, author, price, introduction, big_category_id, small_category_id, author_info, epub_id, cover_id, status) values (1, '책제목1', '저자1', 1000,'책소개1', 1, 1, '저자정보1', 1, 1, 'ACTIVE');

insert into BOOKMARK_TB(user_id, book_id, page_num, status) values (1, 2, 15, 'ACTIVE');
insert into BOOKMARK_TB(user_id, book_id, page_num, status) values (1, 3, 29, 'ACTIVE');
insert into BOOKMARK_TB(user_id, book_id, page_num, status) values (1, 4, 54, 'ACTIVE');
insert into BOOKMARK_TB(user_id, book_id, page_num, status) values (2, 2, 35, 'ACTIVE');
insert into BOOKMARK_TB(user_id, book_id, page_num, status) values (2, 2, 75, 'ACTIVE');
insert into BOOKMARK_TB(user_id, book_id, page_num, status) values (3, 2, 25, 'ACTIVE');

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
                                                    (2, 1, 'ACTIVE'),
                                                    (2, 24, 'ACTIVE'),
                                                    (2, 25, 'ACTIVE'),
                                                    (2, 13, 'ACTIVE'),
                                                    (2, 27, 'ACTIVE'),
                                                    (2, 14, 'ACTIVE'),
                                                    (2, 29, 'ACTIVE'),
                                                    (2, 31, 'ACTIVE'),
                                                    (2, 15, 'ACTIVE'),
                                                    (2, 4, 'ACTIVE'),
                                                    (2, 24, 'ACTIVE'),
                                                    (2, 16, 'ACTIVE'),
                                                    (2, 26, 'ACTIVE'),
                                                    (2, 27, 'ACTIVE'),
                                                    (2, 28, 'ACTIVE'),
                                                    (2, 29, 'ACTIVE'),
                                                    (2, 31, 'ACTIVE'),
                                                    (2, 2, 'ACTIVE'),
                                                    (2, 23, 'ACTIVE'),
                                                    (2, 24, 'ACTIVE'),
                                                    (2, 25, 'ACTIVE'),
                                                    (2, 26, 'ACTIVE'),
                                                    (2, 27, 'ACTIVE'),
                                                    (2, 28, 'ACTIVE'),
                                                    (2, 3, 'ACTIVE'),
                                                    (2, 31, 'ACTIVE'),
                                                    (2, 32, 'ACTIVE');

insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 1, 2.4, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 1, 3.2, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 1, 4.8, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 2, 2.3, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 2, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 2, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 3, 2.4, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 3, 3.2, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 3, 4.8, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 4, 2.3, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 4, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 4, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 5, 2.4, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 5, 3.2, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 5, 4.8, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 6, 2.3, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 6, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 6, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 7, 2.4, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 7, 3.2, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 7, 4.8, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 8, 2.3, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 8, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 8, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 9, 2.4, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 9, 3.2, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 9, 4.8, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 10, 2.3, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 10, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 10, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 11, 2.4, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 11, 3.2, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 11, 4.8, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 12, 2.3, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 12, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 12, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 13, 2.4, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 13, 3.2, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 13, 4.8, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 14, 2.3, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 14, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 14, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 15, 2.4, '리뷰내용1', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 15, 3.2, '리뷰내용2', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 15, 4.8, '리뷰내용3', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 16, 2.3, '리뷰내용4', 'DELETE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 16, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 16, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 17, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 17, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 17, 4.6, '리뷰내용6', 'ACTIVE');
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
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 47, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 47, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 47, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 48, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 48, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 48, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 49, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 49, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 49, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (3, 50, 2.6, '리뷰내용5', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (1, 50, 4.6, '리뷰내용6', 'ACTIVE');
insert into REVIEW_TB(user_id, book_id, stars, content,  status) values (2, 50, 4.6, '리뷰내용6', 'ACTIVE');

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


commit;