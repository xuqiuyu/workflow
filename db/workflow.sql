create table workflow (
  id serial not null,
  code varchar(255) not null UNIQUE,
  name varchar(255) not null,
  description varchar(255), 
  creator_email varchar(255),
  created_at timestamp,
  updated_at timestamp,
  primary key (id)
);

INSERT INTO workflow(code, name, created_at, updated_at) VALUES('CLIENT_ONBOARDING', 'client onboarding workflow', current_timestamp, current_timestamp);