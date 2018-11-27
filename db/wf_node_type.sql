create table wf_node_type (
  id serial not null,
  code varchar(255) not null UNIQUE,
  description varchar(255) not null,
  created_at timestamp,
  updated_at timestamp,
  primary key (id)
);

INSERT INTO wf_node_type(code, description) VALUES('ROLE', 'workflow node typed role');
INSERT INTO wf_node_type(code, description) VALUES('USER', 'workflow node typed user');