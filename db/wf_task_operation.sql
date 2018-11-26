create table wf_task_operation (
  id serial not null,
  task_id varchar(255) not null,
  node_id int4 ,
  node_type int4,
  node_operator int4,
  created_at timestamp,
  updated_at timestamp,
  primary key (id)
)