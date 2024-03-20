(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_configuration

val encryption_configuration :
  ?key_id:string prop ->
  type_:string prop ->
  unit ->
  encryption_configuration

type firewall_policy__policy_variables__rule_variables__ip_set

val firewall_policy__policy_variables__rule_variables__ip_set :
  definition:string prop list ->
  unit ->
  firewall_policy__policy_variables__rule_variables__ip_set

type firewall_policy__policy_variables__rule_variables

val firewall_policy__policy_variables__rule_variables :
  key:string prop ->
  ip_set:
    firewall_policy__policy_variables__rule_variables__ip_set list ->
  unit ->
  firewall_policy__policy_variables__rule_variables

type firewall_policy__policy_variables

val firewall_policy__policy_variables :
  rule_variables:
    firewall_policy__policy_variables__rule_variables list ->
  unit ->
  firewall_policy__policy_variables

type firewall_policy__stateful_engine_options

val firewall_policy__stateful_engine_options :
  ?rule_order:string prop ->
  ?stream_exception_policy:string prop ->
  unit ->
  firewall_policy__stateful_engine_options

type firewall_policy__stateful_rule_group_reference__override

val firewall_policy__stateful_rule_group_reference__override :
  ?action:string prop ->
  unit ->
  firewall_policy__stateful_rule_group_reference__override

type firewall_policy__stateful_rule_group_reference

val firewall_policy__stateful_rule_group_reference :
  ?priority:float prop ->
  resource_arn:string prop ->
  override:
    firewall_policy__stateful_rule_group_reference__override list ->
  unit ->
  firewall_policy__stateful_rule_group_reference

type firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension

val firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension :
  value:string prop ->
  unit ->
  firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension

type firewall_policy__stateless_custom_action__action_definition__publish_metric_action

val firewall_policy__stateless_custom_action__action_definition__publish_metric_action :
  dimension:
    firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension
    list ->
  unit ->
  firewall_policy__stateless_custom_action__action_definition__publish_metric_action

type firewall_policy__stateless_custom_action__action_definition

val firewall_policy__stateless_custom_action__action_definition :
  publish_metric_action:
    firewall_policy__stateless_custom_action__action_definition__publish_metric_action
    list ->
  unit ->
  firewall_policy__stateless_custom_action__action_definition

type firewall_policy__stateless_custom_action

val firewall_policy__stateless_custom_action :
  action_name:string prop ->
  action_definition:
    firewall_policy__stateless_custom_action__action_definition list ->
  unit ->
  firewall_policy__stateless_custom_action

type firewall_policy__stateless_rule_group_reference

val firewall_policy__stateless_rule_group_reference :
  priority:float prop ->
  resource_arn:string prop ->
  unit ->
  firewall_policy__stateless_rule_group_reference

type firewall_policy

val firewall_policy :
  ?stateful_default_actions:string prop list ->
  ?tls_inspection_configuration_arn:string prop ->
  stateless_default_actions:string prop list ->
  stateless_fragment_default_actions:string prop list ->
  policy_variables:firewall_policy__policy_variables list ->
  stateful_engine_options:
    firewall_policy__stateful_engine_options list ->
  stateful_rule_group_reference:
    firewall_policy__stateful_rule_group_reference list ->
  stateless_custom_action:
    firewall_policy__stateless_custom_action list ->
  stateless_rule_group_reference:
    firewall_policy__stateless_rule_group_reference list ->
  unit ->
  firewall_policy

type aws_networkfirewall_firewall_policy

val aws_networkfirewall_firewall_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  encryption_configuration:encryption_configuration list ->
  firewall_policy:firewall_policy list ->
  unit ->
  aws_networkfirewall_firewall_policy

val yojson_of_aws_networkfirewall_firewall_policy :
  aws_networkfirewall_firewall_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  encryption_configuration:encryption_configuration list ->
  firewall_policy:firewall_policy list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  encryption_configuration:encryption_configuration list ->
  firewall_policy:firewall_policy list ->
  string ->
  t Tf_core.resource
