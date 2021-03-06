create table STOCK_INFO(
    id number generated by default on null as identity,
    ticker VARCHAR2(50),
    price INTEGER,
    board VARCHAR2(50)
);

insert into stock_info(ticker, price, board) values ('PET', 95000, 'HSX');
insert into stock_info(ticker, price, board) values ('PVS', 35000, 'HNX');

select * from stock_info;

drop table STOCK_INFO;