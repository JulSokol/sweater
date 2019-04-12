create table user_subscriptions(
channel_id bigint not null ,
subscriber_id bigint not null,
primary key (channel_id, subscriber_id)
);

alter table user_subscriptions
 add constraint fk_user_subscriptions
foreign key (subscriber_id)
references usr(id);

alter table user_subscriptions
 add constraint fk_user_channel_id
foreign key (channel_id)
references usr(id);