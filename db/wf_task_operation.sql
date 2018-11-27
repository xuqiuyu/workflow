create table wf_task_operation (
  id serial not null,
  task_id varchar(255) not null,
  node_id int4 not null,
  node_type varchar(255),
  node_operator int4,
  created_at timestamp,
  updated_at timestamp,
  primary key (id)
)
