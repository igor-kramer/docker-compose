\c mydb;
    create table public.currency(
    currency_code char(3),
    currency_name char(50)
);

grant all privileges on table public.currency to myuser;