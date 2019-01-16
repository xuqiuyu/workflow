# Config table
### workflow(id, code, name, description, creator, created_at, updated_at)
根据code定义唯一的workflow类型
## wf_node_type(id, code, description, created_at, updated_at)
根据实际场景定义workflow节点类型, 目前有实现: a.人员类型(user) b.角色类型(role)
### wf_node(id, wf_code, code, type, operator, description, hours, created_at, updated_at)
构成workflow的各个节点,通过wf_code关联到唯一类型的workflow，目前节点的主要信息有: a.节点类型  b.节点操作人  c.节点计时器(根据kyc onboarding 业务场景添加字段)
### wf_node_action(id, wf_code, action_name, operation_name, current_node, next_node, created_at, updated_at)
定义每个workflow节点在实际场景中可能发生的流转, 通过wf_code关联唯一类型workflow, current_code标记流转发起节点，next_code 标记流转结束节点。 PS: 目前需要业务开发人员自己分析业务数据并将信息聚合到一个对应的workflow action，然后手动dispatch给workflow来处理节点间的动态流转。 下一步考虑：将固定的action抽象成实际业务场景中可能影响节点间流转的各类影响因子，在业务调用和workflow中间增加一层 rule 规则, 由 rule engine 根据手动配置的影响因子分析聚焦成实际action来引导workflow的流转。

# Business table
### wf_task(id, task_id, wf_code, current_node, creator, timer_start_at, timer_hours, is_completed, created_at, updated_at)
workflow的业务实例, wf_code管理唯一的workflow类型，task_id 关联实际的业务主数据, current_node 记录当前节点, timer_start_at 记录本实例的定时器开启时间，可根据实际场景选择性开启使用(后续的流程转过程中，如果遇到设置了定时器的节点时会更新到流转到该节点的时间), timer_hours 记录定时器有效时长(同timer_start_at, 后续流转遇到节点自带hours时长时会更新成该节点hours)
### wf_task_operation(id, wf_task_id, node_code, node_type, node_operator, created_at, updated_at)
workflow的实例节点，记录每条业务数据流转的各个节点, 参照来源于关联workflow对应的各个workflow节点, 由 node_operator 来记录当前节点操作人
### wf_operation_log(id, wf_task_id, wf_code, wf_node_action, current_node, operator, operate_time)
操作日志表，记录 谁(operator) 在什么时间(operate_time) 在哪条workflow实例(wf_task_id) 的哪个节点(current_node) 上做了什么事情(wf_node_action)

## 分许不足,考虑后续改进的点：
### workflow目前由DEV手动配置，缺少配置模板，不方便灵活配置
### 节点目前只记录了操作人和定时器，没有记录节点上的操作数据。
### workflow流转依赖于预定义好的一系列action, workflow本身配套的缺少分析能力(rule)，以来业务带来驱动流转。



