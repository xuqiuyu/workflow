create table wf_node_action (
  id serial not null,
  name varchar(255) not null,
  wf_code varchar(255) not null,
  current_node varchar(255) not null,
  next_node varchar(255),
  created_at timestamp,
  updated_at timestamp,
  primary key (id)
);

INSERT INTO  wf_node_action(wf_code, name, current_node_id, next_node_id) VALUES('CLIENT_ONBOARDING', 'BD_CS_INIT', 1, 2);
INSERT INTO  wf_node_action(wf_code, name, current_node_id, next_node_id) VALUES('CLIENT_ONBOARDING', 'BD_CS_APPROVE', 1, 3);
INSERT INTO  wf_node_action(wf_code, name, current_node_id, next_node_id) VALUES('CLIENT_ONBOARDING', 'KYC_LEADER_ASSIGN', 2, 3);
INSERT INTO  wf_node_action(wf_code, name, current_node_id, next_node_id) VALUES('CLIENT_ONBOARDING', 'KYC_MAKER_APPROVE', 3, 4);
INSERT INTO  wf_node_action(wf_code, name, current_node_id, next_node_id) VALUES('CLIENT_ONBOARDING', 'KYC_MAKER_REJECT', 3, 1);
INSERT INTO  wf_node_action(wf_code, name, current_node_id, next_node_id) VALUES('CLIENT_ONBOARDING', 'KYC_SERNIOR_APPROVE', 3, null);
INSERT INTO  wf_node_action(wf_code, name, current_node_id, next_node_id) VALUES('CLIENT_ONBOARDING', 'KYC_CKECKER_APPROVE', 4, 5);
INSERT INTO  wf_node_action(wf_code, name, current_node_id, next_node_id) VALUES('CLIENT_ONBOARDING', 'KYC_CKECKER_REJECT', 4, 1);
INSERT INTO  wf_node_action(wf_code, name, current_node_id, next_node_id) VALUES('CLIENT_ONBOARDING', 'COMPLIANCE_APPROVE', 5, null);
INSERT INTO  wf_node_action(wf_code, name, current_node_id, next_node_id) VALUES('CLIENT_ONBOARDING', 'COMPLIANCE_REJECT', 5, 3);


