create table wf_task (
  id serial not null,
  task_id varchar(255) not null,
  wf_code varchar(255) not null,
  current_node_id int4,
  is_completed boolean not null,
  creator varchar(255),
  created_at timestamp,
  updated_at timestamp,
  primary key (id)
);