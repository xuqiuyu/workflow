create table wf_node (
  id serial not null,
  wf_code varchar(255) not null,
  node_type_code varchar(255),
  operator_id int4,
  description varchar(255) not null,
  created_at timestamp,
  updated_at timestamp,
  primary key (id)
);

INSERT INTO wf_node(wf_code, node_type_code, description) VALUES('CLIENT_ONBOARDING', 'ROLE', 'BD/CS');
INSERT INTO wf_node(wf_code, node_type_code, description) VALUES('CLIENT_ONBOARDING', 'ROLE', 'KYC Leader');
INSERT INTO wf_node(wf_code, node_type_code, description) VALUES('CLIENT_ONBOARDING', 'USER', 'KYC Maker');
INSERT INTO wf_node(wf_code, node_type_code, description) VALUES('CLIENT_ONBOARDING', 'USER', 'KYC Checker');
INSERT INTO wf_node(wf_code, node_type_code, description) VALUES('CLIENT_ONBOARDING', 'ROLE', 'Compliance');