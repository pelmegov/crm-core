Insert into positions
(id, name, percent, use_percent, company_id)
values
  (1, 'Администратор', 0, FALSE, 1),
  (2, 'Владелец', 0, FALSE, 1),
  (3, 'Чайник', 0, FALSE, 1),
  (4, 'Администратор', 0, FALSE, 2),
  (5, 'Владелец', 0, FALSE, 2),
  (6, 'Чайник', 0, FALSE, 2);

insert into roles
(id, name)
values
  (1, 'BOSS'),
  (2, 'MANAGER'),
  (3, 'WORKER');

insert into users_positions
(user_id, position_id)
values
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 1);

insert into users_roles
(user_id, role_id)
values
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 1);

INSERT INTO companies
(id, name)
VALUES
  (1, 'companyA'),
  (2, 'companyB');

INSERT INTO users
(id, first_name, last_name, email, phone, password, shift_salary, salary, bonus, activated, enabled, company_id)
VALUES
  (2, 'Anna', 'Jons', 'manager@mail.ru', '89233456789', '$2a$10$OHs.TsEaLmklqTwStaTHLeW3Y/k8fJO5kXklV0nO3ad2b5QbmeVua', 1500, 0, 0, TRUE, TRUE, 1),
  (1, 'Герман', 'Севостьянов', 'boss@mail.ru', '89123456789', '$2a$10$Rqc3K45Z8GYbklMvy3640uj/XY4supJ2XmWmS4t1zjBlXiVh3h4aC', 2000, 0, 0, TRUE, TRUE, 1),
  (3, 'Ахмад', 'Чай', 'worker@mail.ru', '89111111111', '$2a$10$ffBOimLAaDY5o6jU62oecuKgSgcYAY3FpAS3okZHQw0tHRxV39Oa.', 0, 0, 0, TRUE, TRUE, 1),
  (4, 'Намрег', 'Инверг', 'boss2@mail.ru', '89123456780', '$2a$10$ufhLqzo3wbuWKIuQjPnyrOYplalLZsJ8X2NXufOycc/IT2qZKB4m6', 2000, 0, 0, TRUE, TRUE, 2);


insert into ingredients
(id, amount, dimension, name, price, company_id)
values
  (1, 300, 'граммы', 'Сметана', 0.076, 1),
  (2, 3, 'кг', 'Вишня', 278, 1),
  (3, 5, 'кг', 'Зелень', 120.5, 1),
  (4, 15, 'литры', 'Молоко', 69.2, 1),
  (5, 300, 'граммы', 'Сметана', 0.076, 2),
  (6, 3, 'кг', 'Вишня', 278, 2);

insert into category
(id, dirty_profit, floating_price, name, company_id)
values
  (1, TRUE, FALSE, 'Салаты', 1),
  (2, TRUE, FALSE, 'Напитки', 1),
  (3, TRUE, FALSE, 'Десерты', 1),
  (4, FALSE, TRUE, 'Доставка', 1),
  (5, TRUE, FALSE, 'Салаты', 2),
  (6, TRUE, FALSE, 'Напитки', 2),
  (7, TRUE, FALSE, 'Десерты', 2),
  (8, FALSE, TRUE, 'Доставка', 2);

insert into product
(id, cost, description, name, rating, self_cost, company_id)
values
  (1, 400, 'вкусный', 'Цезарь', 0, 200, 1),
  (2, 100, 'вкусный', 'Легкий', 0, 50, 1),
  (3, 100, 'вкусный', 'Летний', 0, 0, 1),
  (4, 15, 'вкусный', 'Кофе', 0, 0, 1),
  (5, 5, 'вкусный', 'Кока-кола', 0, 0, 1),
  (6, 5, 'вкусный', 'Кофе', 0, 0, 1),
  (7, 400, 'вкусный', 'Фруктовый', 0, 0, 1),
  (8, 400, 'вкусный', 'Тирамису', 0, 0, 1),
  (9, 400, 'вкусный', 'Шоколадный', 0, 0, 1),
  (10, 0, 'деревенская пицца', 'Пицца-роял', 0, 0, 1),
  (11, 0, 'филадельфия', 'Суши шоп', 0, 0, 1),
  (12, 0, 'биг мак', 'Макдак', 0, 0, 1),
  (13, 400, 'вкусный', 'Салат1', 0, 200, 2),
  (14, 5, 'вкусный', 'Кока', 0, 0, 2),
  (15, 400, 'вкусный', 'Чизкейк', 0, 0, 2),
  (16, 0, 'деревенская пицца', 'Пицца-роял', 0, 0, 2);

insert into product_and_categories
(product_id, category_id)
values
  (1 , 1),
  (2 , 1),
  (3 , 1),
  (4 , 2),
  (5 , 2),
  (6 , 2),
  (7 , 3),
  (8 , 3),
  (9 , 3),
  (10 , 4),
  (11 , 4),
  (12 , 4),
  (13 , 5),
  (14 , 6),
  (15 , 7),
  (16 , 8);

insert into menu
(id, name, company_id)
values
  (1, 'Обеденное', 1),
  (2, 'Обеденное', 2);

insert into allmenu
(menu_id, category_id)
values
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (2, 5),
  (2, 6),
  (2, 7),
  (2, 8);

insert into board
(id, is_open, name, company_id)
values
  (1, TRUE, 'Белый диван', 1),
  (2, TRUE, 'Xbox бочки', 1),
  (3, TRUE, 'Бар', 1),
  (4, TRUE, 'Пожарка', 1),
  (5, TRUE, 'Постер', 1),
  (6, TRUE, 'Белый Xbox', 1),
  (7, TRUE, 'Черный диван', 2),
  (8, TRUE, 'Xbox точки', 2),
  (9, TRUE, 'НеБар', 2);

insert into cards (id, name, balance, discount, surname, phone_number, email, advertising, company_id) values (1, 'Данила', 5000, 10, 'Питерский', '82222222222', 'cafe.crm.test@gmail.com', true, 1);
insert into cards
(id, name, balance, discount, surname, phone_number, advertising, company_id)
values
  (2, 'Кот', 0, 15, 'Барсик', '881111111111', true, 1),
  (3, 'Пес', 0, 15, 'Барбос', '881111111188', true, 2),
  (4, 'Пес', 0, 15, 'Барсик', '881111111111', true, 2);

insert into cost_category
(id, name, company_id)
values
  (1, 'Продукты питания', 1),
  (2, 'Продукты питания', 2);
-- insert into cost_category
-- (id, name)
-- values
-- (2, 'Спиртные напитки')
-- (3, 'Безалкогольные напитки'),
-- (4, 'Бытовые продукты');
--
-- insert into cost (id, name, price, quantity, cost_category_id, date) values (1, 'Свинина', 300, 10, 1, curdate());
-- (2, 'Сыр', 100, 5, 1, curdate());
-- (3, 'Помидоры', 3, 10, 1, curdate());
-- (4, 'Хлеб', 30, 10, 1, curdate());
-- (5, 'Водка', 400, 1, 1, curdate());
-- (6, 'Пиво', 60, 50, 1, curdate());
-- (7, 'Чай', 100, 3, 1, curdate());
-- (8, 'Кофе', 200, 1, 1, curdate());
-- (9, 'Мыло', 90, 3, 1, curdate());
-- (10, 'Веревка', 300, 11, 1, curdate());

insert into note
(id, enable, name, company_id)
values
  (1, true, 'Заметка 1', 1),
  (2, false, 'Заметка 2', 1),
  (3, true, 'Заметка 1', 2),
  (4, false, 'Заметка 2', 2);

insert into property
(id, enable, name, unit, value, company_id)
values
  (1, false, 'price.firstHour', 'р', 300, 1),
  (2, false, 'price.nextHours', 'р', 200, 1),
  (3, true, 'price.refBonus', 'р', 150, 1),
  (4, false, 'price.firstHour', 'р', 300, 2),
  (5, false, 'price.nextHours', 'р', 200, 2),
  (6, true, 'price.refBonus', 'р', 150, 2);

insert into trash_property
(id, name, property, company_id)
values
  (1, 'vk', '{"applicationId":"","applicationSecret":"","messageName":"daily-report","chatId":"","accessToken":"","apiVersion":"5.68"}', 1),
  (2, 'vk', '{"applicationId":"","applicationSecret":"","messageName":"daily-report","chatId":"","accessToken":"","apiVersion":"5.68"}', 2);

# insert into template
# (id, content, name, company_id)
# values
#   (1, '0x3C21444F43545950452068746D6C3E0D0A3C68746D6C20786D6C6E733A74683D22687474703A2F2F7777772E7468796D656C6561662E6F726722206C616E673D22656E2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F313939392F68746D6C223E0D0A3C686561643E0D0A202020203C6D65746120636861727365743D225554462D38222F3E0D0A202020203C7469746C653E5469746C653C2F7469746C653E0D0A3C2F686561643E0D0A3C626F64793E0D0A3C703ED0A0D0B5D0BAD0BBD0B0D0BCD0B020D0B1D18BD0BBD0B020D183D181D0BFD0B5D188D0BDD0BE20D0BED182D0BAD0BBD18ED187D0B5D0BDD0B02E3C2F703E0D0A3C703ED09220D181D0BBD183D187D0B0D0B520D0B5D181D0BBD0B820D0B220D0B4D0B0D0BBD18CD0BDD0B5D188D0B5D0BC20D0B7D0B0D185D0BED182D0B8D182D0B520D0BFD0BED0BBD183D187D0B0D182D18C20D180D0B5D0BAD0BBD0B0D0BCD0BDD183D18E20D180D0B0D181D181D18BD0BBD0BAD1832C20D182D0BE20D0BFD0B5D180D0B5D0B4D0B8D182D0B520D0BFD0BE20D18DD182D0BED0B920D181D181D18BD0BBD0BAD0B5203A3C2F703E0D0A3C612074683A687265663D2227687474703A2F2F27202B20247B73697465416464726573737D202B20272F6164766572746973696E672F746F67676C653F6E756D6265723D27202B20247B6E756D6265727D202B202726616D703B746F6B656E3D27202B20247B746F6B656E7D223ED095D181D0BBD0B80D0A20202020D0B1D0BED0BBD18CD188D0B520D0BDD0B520D185D0BED182D0B8D182D0B520D0BFD0BED0BBD183D187D0B0D182D18C20D180D0B5D0BAD0BBD0B0D0BCD1832C20D0BDD0B0D0B6D0BCD0B8D182D0B520D0BDD0B020D18DD182D0BE20D181D0BED0BED0B1D189D0B5D0BDD0B8D0B53C2F613E0D0A3C2F626F64793E0D0A3C2F68746D6C3E', 'disable-advertising', 1),
#   (2, '0x3C21444F43545950452068746D6C3E0D0A3C68746D6C20786D6C6E733A74683D22687474703A2F2F7777772E7468796D656C6561662E6F726722206C616E673D22656E2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F313939392F68746D6C223E0D0A3C686561643E0D0A202020203C6D65746120636861727365743D225554462D38222F3E0D0A202020203C7469746C653E5469746C653C2F7469746C653E0D0A3C2F686561643E0D0A3C626F64793E0D0A3C6469762074683A75746578743D22247B6164766572746973696E67546578747D222074683A72656D6F76653D22746167223E3C2F6469763E0D0A3C62722F3E0D0A3C612074683A687265663D2227687474703A2F2F27202B20247B73697465416464726573737D202B20272F6164766572746973696E672F746F67676C653F6E756D6265723D27202B20247B6E756D6265727D202B202726616D703B746F6B656E3D27202B20247B746F6B656E7D223ED095D181D0BBD0B80D0A20202020D0B1D0BED0BBD18CD188D0B520D0BDD0B520D185D0BED182D0B8D182D0B520D0BFD0BED0BBD183D187D0B0D182D18C20D180D0B5D0BAD0BBD0B0D0BCD1832C20D0BDD0B0D0B6D0BCD0B8D182D0B520D0BDD0B020D18DD182D0BE20D181D0BED0BED0B1D189D0B5D0BDD0B8D0B53C2F613E0D0A3C2F626F64793E0D0A3C2F68746D6C3E', 'text-advertising', 1),
#   (3, '0x3C21444F43545950452068746D6C3E0D0A3C68746D6C20786D6C6E733A74683D22687474703A2F2F7777772E7468796D656C6561662E6F726722206C616E673D22656E2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F313939392F68746D6C223E0D0A3C686561643E0D0A3C2F686561643E0D0A3C626F64793E0D0A3C7461626C6520616C69676E3D2263656E7465722220626F726465723D2230222063656C6C706163696E673D2230222063656C6C70616464696E673D2230222077696474683D2235353022207374796C653D226261636B67726F756E642D636F6C6F723A2023383866666565223E0D0A202020203C74626F64793E0D0A202020203C74723E0D0A20202020202020203C74643E0D0A2020202020202020202020203C7461626C653E0D0A202020202020202020202020202020203C74626F64793E0D0A202020202020202020202020202020203C74723E0D0A20202020202020202020202020202020202020203C74642077696474683D22343530223E0D0A2020202020202020202020202020202020202020202020203C696D67207372633D2268747470733A2F2F70702E757365726170692E636F6D2F633633393232302F763633393232303237392F656232392F62474D56347455347044552E6A70672220616C743D225041434D414E220D0A2020202020202020202020202020202020202020202020202020202020626F726465723D2230220D0A202020202020202020202020202020202020202020202020202020202077696474683D22353022206865696768743D223530222F3E0D0A20202020202020202020202020202020202020203C2F74643E0D0A20202020202020202020202020202020202020203C7464207374796C653D22626F726465722D6C6566743A236537653765372031707820736F6C69643B746578742D616C69676E3A63656E7465723B766572746963616C2D616C69676E3A6D6964646C653B220D0A20202020202020202020202020202020202020202020202076616C69676E3D226D6964646C65223E0D0A2020202020202020202020202020202020202020202020203C6120687265663D2268747470733A2F2F766B2E636F6D2F686F6F6B61687061636D616E2220616C743D22D092D0BAD0BED0BDD182D0B0D0BAD182D0B5223E0D0A202020202020202020202020202020202020202020202020202020203C696D67207372633D2268747470733A2F2F6C68332E676F6F676C6575736572636F6E74656E742E636F6D2F42496947724D6E496B535A586E33613871596D45624B53684E75744868714B3741456357614C4F6C795A3976786D6635515850506F655546707345684834326677773D77333030220D0A202020202020202020202020202020202020202020202020202020202020202020616C743D22564B2220626F726465723D2230222077696474683D22343522206865696768743D223435222F3E0D0A2020202020202020202020202020202020202020202020203C2F613E0D0A20202020202020202020202020202020202020203C2F74643E0D0A20202020202020202020202020202020202020203C7464207374796C653D22626F726465722D6C6566743A236537653765372031707820736F6C69643B746578742D616C69676E3A63656E7465723B766572746963616C2D616C69676E3A6D6964646C653B220D0A20202020202020202020202020202020202020202020202076616C69676E3D226D6964646C65223E0D0A2020202020202020202020202020202020202020202020203C6120687265663D2268747470733A2F2F7777772E696E7374616772616D2E636F6D2F686F6F6B61687061636D616E2F2220616C743D22D098D0BDD181D182D0B0D0B3D180D0B0D0BC223E0D0A202020202020202020202020202020202020202020202020202020203C696D67207372633D2268747470733A2F2F6C68332E676F6F676C6575736572636F6E74656E742E636F6D2F61596264494D31616277795653555A4C444B6F453043445A4752686C6B707361504F6739744E6E426B745551597358666C776B6E6E4F6E3247653159723772496D476B3D77333030220D0A202020202020202020202020202020202020202020202020202020202020202020616C743D22564B2220626F726465723D2230222077696474683D22343022206865696768743D223430222F3E0D0A2020202020202020202020202020202020202020202020203C2F613E0D0A20202020202020202020202020202020202020203C2F74643E0D0A202020202020202020202020202020203C2F74723E0D0A0D0A202020202020202020202020202020203C2F74626F64793E0D0A2020202020202020202020203C2F7461626C653E0D0A20202020202020203C2F74643E0D0A202020203C2F74723E0D0A202020203C74723E0D0A20202020202020203C74643E0D0A2020202020202020202020203C7461626C653E0D0A202020202020202020202020202020203C74626F64793E0D0A202020202020202020202020202020203C74723E0D0A20202020202020202020202020202020202020203C74643E0D0A2020202020202020202020202020202020202020202020203C6120687265663D2268747470733A2F2F766B2E636F6D2F686F6F6B61687061636D616E222074683A687265663D22247B75726C546F4C696E6B7D223E0D0A202020202020202020202020202020202020202020202020202020203C696D67207372633D2268747470733A2F2F656E637279707465642D74626E302E677374617469632E636F6D2F696D616765733F713D74626E3A414E6439476352612D646B79526E6C414A56725963486936716E655541785551504634665F4A6558594174583470546F4D7967506B6278624351220D0A20202020202020202020202020202020202020202020202020202020202020202074683A7372633D22247B6164766572746973696E6755726C7D222077696474683D22353530222F3E0D0A2020202020202020202020202020202020202020202020203C2F613E0D0A20202020202020202020202020202020202020203C2F74643E0D0A202020202020202020202020202020203C2F74723E0D0A202020202020202020202020202020203C2F74626F64793E0D0A2020202020202020202020203C2F7461626C653E0D0A20202020202020203C2F74643E0D0A202020203C2F74723E0D0A202020203C74723E0D0A20202020202020203C74643E0D0A2020202020202020202020203C7461626C653E0D0A202020202020202020202020202020203C74626F64793E0D0A202020202020202020202020202020203C74723E0D0A20202020202020202020202020202020202020203C74643E0D0A2020202020202020202020202020202020202020202020203C612074683A687265663D2227687474703A2F2F27202B20247B73697465416464726573737D202B20272F6164766572746973696E672F746F67676C653F6E756D6265723D27202B20247B6E756D6265727D202B202726616D703B746F6B656E3D27202B20247B746F6B656E7D223ED095D181D0BBD0B80D0A20202020202020202020202020202020202020202020202020202020D0B1D0BED0BBD18CD188D0B520D0BDD0B520D185D0BED182D0B8D182D0B520D0BFD0BED0BBD183D187D0B0D182D18C20D180D0B5D0BAD0BBD0B0D0BCD1832C20D0BDD0B0D0B6D0BCD0B8D182D0B520D0BDD0B020D18DD182D0BE20D181D0BED0BED0B1D189D0B5D0BDD0B8D0B53C2F613E0D0A20202020202020202020202020202020202020203C2F74643E0D0A202020202020202020202020202020203C2F74723E0D0A202020202020202020202020202020203C2F74626F64793E0D0A2020202020202020202020203C2F7461626C653E0D0A20202020202020203C2F74643E0D0A202020203C2F74723E0D0A202020203C2F74626F64793E0D0A0D0A3C2F7461626C653E0D0A3C2F626F64793E0D0A3C2F68746D6C3E', 'image-advertising', 1),
#   (4, '0x3C21444F43545950452068746D6C3E0D0A3C68746D6C20786D6C6E733A74683D22687474703A2F2F7777772E7468796D656C6561662E6F726722206C616E673D22656E2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F313939392F68746D6C223E0D0A3C686561643E0D0A202020203C6D65746120636861727365743D225554462D38222F3E0D0A202020203C7469746C653E5469746C653C2F7469746C653E0D0A3C2F686561643E0D0A3C626F64793E0D0A3C68322074683A746578743D2227D097D0B4D180D0B0D0B2D181D182D0B2D183D0B9D182D0B52C20D18120D0B1D0B0D0BBD0B0D0BDD181D0B020D0B2D0B0D188D0B5D0B920D0BAD0B0D180D182D18B20D0B1D18BD0BBD0BE20D181D0BFD0B8D181D0B0D0BDD0BE203A2027202B20247B646564756374696F6E416D6F756E747D202B202720D180D183D0B12E27223E3C2F68323E0D0A3C68322074683A746578743D2227D0A2D0B5D0BAD183D189D0B8D0B920D0B1D0B0D0BBD0B0D0BDD18120D0BAD0B0D180D182D18B203A2027202B20247B6E657742616C616E63657D202B202720D180D183D0B12E27223E3C2F68323E0D0A3C2F626F64793E0D0A3C2F68746D6C3E', 'balance-info-deduction', 1),
#   (5, '0x3C21444F43545950452068746D6C3E0D0A3C68746D6C20786D6C6E733A74683D22687474703A2F2F7777772E7468796D656C6561662E6F726722206C616E673D22656E2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F313939392F68746D6C223E0D0A3C686561643E0D0A202020203C6D65746120636861727365743D225554462D38222F3E0D0A202020203C7469746C653E5469746C653C2F7469746C653E0D0A3C2F686561643E0D0A3C626F64793E0D0A3C68322074683A746578743D2227D097D0B4D180D0B0D0B2D181D182D0B2D183D0B9D182D0B52C20D0BDD0B020D0B1D0B0D0BBD0B0D0BDD18120D0B2D0B0D188D0B5D0B920D0BAD0B0D180D182D18B20D0B1D18BD0BBD0BE20D0BDD0B0D187D0B8D181D0BBD0B5D0BDD0BE203A2027202B20247B726566696C6C416D6F756E747D202B202720D180D183D0B12E27223E3C2F68323E0D0A3C68322074683A746578743D2227D0A2D0B5D0BAD183D189D0B8D0B920D0B1D0B0D0BBD0B0D0BDD18120D0BAD0B0D180D182D18B203A2027202B20247B6E657742616C616E63657D202B202720D180D183D0B12E27223E3C2F68323E0D0A3C2F626F64793E0D0A3C2F68746D6C3E', 'balance-info-refill', 1),
#   (6, '0x3C21444F43545950452068746D6C3E0D0A3C68746D6C206C616E673D22656E223E0D0A3C686561643E0D0A202020203C6D65746120636861727365743D225554462D38222F3E0D0A202020203C7469746C653E5469746C653C2F7469746C653E0D0A3C2F686561643E0D0A3C626F64793E0D0A3C6469763E0D0A202020203C68313ED0A2D0BED0BAD0B5D0BD20D0B4D0BED181D182D183D0BFD0B020D0BDD0B5D0B4D0B5D0B9D181D182D0B2D0B8D182D0B5D0BBD0B5D0BD213C2F68313E0D0A3C2F6469763E0D0A3C2F626F64793E0D0A3C2F68746D6C3E', 'invalid-token', 1),
#   (7, '0x3C21444F43545950452068746D6C3E0D0A3C68746D6C20786D6C6E733A74683D22687474703A2F2F7777772E7468796D656C6561662E6F726722206C616E673D22656E2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F313939392F68746D6C223E0D0A3C686561643E0D0A202020203C6D65746120636861727365743D225554462D38222F3E0D0A202020203C7469746C653E5469746C653C2F7469746C653E0D0A3C2F686561643E0D0A3C626F64793E0D0A3C6469762074683A656163683D22757365723A247B726563697069656E74737D223E0D0A202020203C68323ED094D0BED0B1D180D18BD0B920D0B4D0B5D0BDD18C203C7370616E2074683A746578743D22247B757365722E66697273744E616D652B2720272B757365722E6C6173744E616D657D223E3C2F7370616E3E0D0A202020203C2F68323E0D0A3C2F6469763E0D0A3C68322074683A746578743D22247B6D6573736167657D223E3C2F68323E0D0A0D0A3C68323ED0A1D0BED182D180D183D0B4D0BDD0B8D0BAD0B820D0BDD0B020D181D0BCD0B5D0BDD0B53A0D0A202020203C62723E3C2F62723E0D0A202020203C6469762074683A656163683D2275736572203A247B75736572734F6E53686966747D223E0D0A20202020202020203C62723E3C2F62723E0D0A20202020202020203C7370616E2074683A746578743D22247B757365722E66697273744E616D652B2720272B757365722E6C6173744E616D652B273A272B272020272B757365722E706F736974696F6E737D223E3C2F7370616E3E0D0A202020203C2F6469763E0D0A3C2F68323E0D0A3C68323ED09AD0BED0BBD0B8D187D0B5D181D182D0B2D0BE20D0BAD0BBD0B8D0B5D0BDD182D0BED0B220D0B7D0B020D181D0BCD0B5D0BDD1833A203C7370616E2074683A746578743D22247B636C69656E74737D223E3C2F7370616E3E3C2F68323E0D0A3C68323ED09AD0BED0BBD0B8D187D0B5D181D182D0B2D0BE20D181D187D0B5D182D0BED0B220D0B7D0B020D181D0BCD0B5D0BDD1833A203C7370616E2074683A746578743D22247B63616C63756C6174657D223E3C2F7370616E3E3C2F68323E0D0A3C68323ED09FD180D0B8D0B1D18BD0BBD18C20D0B7D0B020D181D0BCD0B5D0BDD1833A203C7370616E2074683A746578743D22247B616C6C5072696365202B20272027202B2027D180D183D0B1D0BBD0B5D0B9277D223E3C2F7370616E3E3C2F68323E0D0A3C68323ED09AD0B0D181D181D0B0203A203C7370616E2074683A746578743D22247B63617368426F78202B20272027202B2027D180D183D0B1D0BBD0B5D0B9277D223E3C2F7370616E3E3C2F68323E0D0A3C68323ED09DD0B5D0B4D0BED181D0B4D0B0D187D0B03A203C7370616E2074683A746578743D22247B73686F7274616765202B20272027202B2027D180D183D0B1D0BBD0B5D0B9277D223E3C2F7370616E3E3C2F68323E0D0A3C2F626F64793E0D0A3C2F68746D6C3E', 'closeShiftEmailShortage', 1),
#   (8, '0x7B307D0A7B317D207B327D0AD093D180D18FD0B7D0BDD18BD0BCD0B83A207B337D0A0AD09AD0BED0BBD0B8D187D0B5D181D182D0B2D0BE20D0B3D0BED181D182D0B5D0B93A0A7B347D0AD092D181D0B5D0B3D0BE3A207B357D0A0AD097D0B0D180D0BFD0BBD0B0D182D0B020D0A1D0BED182D180D183D0B4D0BDD0B8D0BAD0BED0B23A0A7B367D0A0AD09FD180D0BED187D0B5D0B520D180D0B0D181D185D0BED0B4D18B3A0A7B377D0A0AD092D181D0B5D0B3D0BE20D180D0B0D181D185D0BED0B4D0BED0B220D0B7D0B020D0B4D0B5D0BDD18C202D207B387D0A0AD09DD0B0D0BBD0B8D187D0BDD18BD0BCD0B8202D207B397D0AD09AD0B0D180D182D0B0202D207B31307D0AD09ED0B1D189D0B0D18F20D0A1D183D0BCD0BCD0B0202D207B31317D0A7B31327D0A0AD097D0B0D0BCD0B5D182D0BAD0B80A7B31337D', 'daily-report', 1);