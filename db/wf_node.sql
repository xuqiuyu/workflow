create table wf_node (
  id serial not null,
  wf_code varchar(255) not null,
  code varchar(255) not null,
  type varchar(255),
  operator varchar(255),
  description varchar(255) not null,
  created_at timestamp,
  updated_at timestamp,
  primary key (id)
);

INSERT INTO wf_node(wf_code, code, type, description) VALUES('CLIENT_ONBOARDING', 'TAG_START', 'TAG_START', 'START');
INSERT INTO wf_node(wf_code, code, type, description) VALUES('CLIENT_ONBOARDING', 'BD_CS', 'ROLE', 'BD/CS');
INSERT INTO wf_node(wf_code, code, type, description) VALUES('CLIENT_ONBOARDING', 'KYC_LEADER', 'ROLE', 'KYC Leader');
INSERT INTO wf_node(wf_code, code, type, description) VALUES('CLIENT_ONBOARDING', 'KYC_MAKER', 'USER', 'KYC Maker');
INSERT INTO wf_node(wf_code, code, type, description) VALUES('CLIENT_ONBOARDING', 'KYC_CHECKER', 'USER', 'KYC Checker');
INSERT INTO wf_node(wf_code, code, type, description) VALUES('CLIENT_ONBOARDING', 'COMPLIANCE', 'ROLE', 'Compliance');


INSERT INTO wf_task_operation(wf_task_id, node_id, node_type, node_operator, created_at, updated_at)  SELECT wf_task_id = 1, id AS node_id, type AS node_type, operator AS node_operator, created_at = current_timestamp, updated_at = current_timestamp  FROM wf_node WHERE wf_code = 'CLIENT_ONBOARDING'