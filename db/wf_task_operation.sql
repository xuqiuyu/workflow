create table wf_task_operation (
  id serial not null,
  wf_task_id int not null,
  node_code varchar(255) not null,
  node_type varchar(255),
  node_operator varchar(255),
  created_at timestamp,
  updated_at timestamp,
  primary key (id)
);


SELECT * FROM wf_task wt LEFT JOIN wf_task_operation wo ON wt.id = wo.wf_task_id WHERE wt.is_completed = false AND wt.wf_code = 'CLIENT_ONBOARDING' AND wo.node_operator = 'breeze'