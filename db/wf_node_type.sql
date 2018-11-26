create table wf_node_type (
  id serial not null,
  code varchar(255) not null,
  description varchar(255) not null,
  created_at timestamp,
  updated_at timestamp,
  primary key (id)
);

INSERT INTO wf_node_type(code, description) VALUES('WF_NODE_ROLE', 'workflow node typed role')
INSERT INTO wf_node_type(code, description) VALUES('WF_NODE_USER', 'workflow node typed user')