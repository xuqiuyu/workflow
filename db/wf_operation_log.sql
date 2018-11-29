create table wf_operation_log (
  id serial not null,
  wf_task_id int not null,
  wf_code varchar(255) not null,
  wf_node_action varchar(255) not null,
  operator varchar(255) not null,
  operate_time timestamp not null,
  primary key (id)
);

