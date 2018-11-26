create table wf_node (
  id serial not null,
  wf_code varchar(255) not null
  node_type_code int4 varchar(255) not null
  operator_id int4,
  description varchar(255) not null,
  created_at timestamp,
  updated_at timestamp,
  primary key (id)
);

INSER INTO wf_node(wf_code, node_type_code, description) VALUES('CLIENT_ONBOARDING', 'WF_NODE_ROLE', 'BD/CS')
INSER INTO wf_node(wf_code, node_type_code, description) VALUES('CLIENT_ONBOARDING', 'WF_NODE_ROLE', 'KYC Leader')
INSER INTO wf_node(wf_code, node_type_code, description) VALUES('CLIENT_ONBOARDING', 'WF_NODE_USER', 'KYC Maker')
INSER INTO wf_node(wf_code, node_type_code, description) VALUES('CLIENT_ONBOARDING', 'WF_NODE_USER', 'KYC Checker')
INSER INTO wf_node(wf_code, node_type_code, description) VALUES('CLIENT_ONBOARDING', 'WF_NODE_ROLE', 'Compliance')