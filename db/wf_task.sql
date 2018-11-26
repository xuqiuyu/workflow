create table wf_task (
  id serial not null,
  task_id varchar(255) not null,
  wf_id int4 not null,
  current_node_id int4 not null,
  next_node_id int4,
  task_data varchar(255),
  created_at timestamp,
  updated_at timestamp,
  primary key (id)
);