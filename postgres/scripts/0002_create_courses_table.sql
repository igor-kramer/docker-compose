\c mydb;
    create table public.course(
    course_date date,
    currency_source char(3),
    currency_destination char(3),
    course_value float  
);

grant all privileges on table public.course to myuser;