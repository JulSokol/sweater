insert into usr (id, username, password, active)
values (1, 'admin', '$2a$08$6IutSf1bk4ByLEpIA2ueau/Pgt4XaN0ybhkK7X5Wy0FJdGxjKb0cy', true);

insert into user_role (user_id, roles)
values (1, 'USER'), (1, 'ADMIN');