create table if not exists oauth_tokens
(
    id serial not null
        constraint oauth_tokens_pk
            primary key,
    source text not null,
    user_id text not null,
    access_token text not null,
    expires_at timestamp not null,
    refresh_token text not null,
    refresh_token_expires_in integer,
    "created_at " timestamp default now() not null
);


create unique index if not exists oauth_tokens_uindex
    on oauth_tokens (user_id, source);

create table if not exists last_sync_timestamp
(
    id serial not null
        constraint table_name_pk
            primary key,
    user_id text not null,
    ts timestamp not null,
    source text
);


create unique index table_name_user_id_uindex
    on last_sync_timestamp (user_id);

create table if not exists oauth_tokens
(
    id serial not null
        constraint oauth_tokens_pk
            primary key,
    source text not null,
    user_id text not null,
    access_token text not null,
    expires_at timestamp not null,
    refresh_token text not null,
    refresh_token_expires_in integer,
    "created_at " timestamp default now() not null
);



create table accounts
(
    id serial not null
        constraint accounts_pk
            primary key,
    name text,
    subtype text,
    sub_account boolean,
    current_balance numeric,
    created_at timestamp,
    updated_at timestamp,
    qb_id text,
    user_id text not null
);


create unique index accounts_uindex
    on accounts (user_id, qb_id);

