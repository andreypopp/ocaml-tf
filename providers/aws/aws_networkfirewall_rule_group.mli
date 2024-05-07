(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_configuration

val encryption_configuration :
  ?key_id:string prop ->
  type_:string prop ->
  unit ->
  encryption_configuration

type rule_group__reference_sets__ip_set_references__ip_set_reference

val rule_group__reference_sets__ip_set_references__ip_set_reference :
  reference_arn:string prop ->
  unit ->
  rule_group__reference_sets__ip_set_references__ip_set_reference

type rule_group__reference_sets__ip_set_references

val rule_group__reference_sets__ip_set_references :
  key:string prop ->
  ip_set_reference:
    rule_group__reference_sets__ip_set_references__ip_set_reference
    list ->
  unit ->
  rule_group__reference_sets__ip_set_references

type rule_group__reference_sets

val rule_group__reference_sets :
  ip_set_references:
    rule_group__reference_sets__ip_set_references list ->
  unit ->
  rule_group__reference_sets

type rule_group__rule_variables__ip_sets__ip_set

val rule_group__rule_variables__ip_sets__ip_set :
  definition:string prop list ->
  unit ->
  rule_group__rule_variables__ip_sets__ip_set

type rule_group__rule_variables__ip_sets

val rule_group__rule_variables__ip_sets :
  key:string prop ->
  ip_set:rule_group__rule_variables__ip_sets__ip_set list ->
  unit ->
  rule_group__rule_variables__ip_sets

type rule_group__rule_variables__port_sets__port_set

val rule_group__rule_variables__port_sets__port_set :
  definition:string prop list ->
  unit ->
  rule_group__rule_variables__port_sets__port_set

type rule_group__rule_variables__port_sets

val rule_group__rule_variables__port_sets :
  key:string prop ->
  port_set:rule_group__rule_variables__port_sets__port_set list ->
  unit ->
  rule_group__rule_variables__port_sets

type rule_group__rule_variables

val rule_group__rule_variables :
  ip_sets:rule_group__rule_variables__ip_sets list ->
  port_sets:rule_group__rule_variables__port_sets list ->
  unit ->
  rule_group__rule_variables

type rule_group__rules_source__rules_source_list

val rule_group__rules_source__rules_source_list :
  generated_rules_type:string prop ->
  target_types:string prop list ->
  targets:string prop list ->
  unit ->
  rule_group__rules_source__rules_source_list

type rule_group__rules_source__stateful_rule__header

val rule_group__rules_source__stateful_rule__header :
  destination:string prop ->
  destination_port:string prop ->
  direction:string prop ->
  protocol:string prop ->
  source:string prop ->
  source_port:string prop ->
  unit ->
  rule_group__rules_source__stateful_rule__header

type rule_group__rules_source__stateful_rule__rule_option

val rule_group__rules_source__stateful_rule__rule_option :
  ?settings:string prop list ->
  keyword:string prop ->
  unit ->
  rule_group__rules_source__stateful_rule__rule_option

type rule_group__rules_source__stateful_rule

val rule_group__rules_source__stateful_rule :
  action:string prop ->
  header:rule_group__rules_source__stateful_rule__header list ->
  rule_option:
    rule_group__rules_source__stateful_rule__rule_option list ->
  unit ->
  rule_group__rules_source__stateful_rule

type rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension

val rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension :
  value:string prop ->
  unit ->
  rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension

type rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action

val rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action :
  dimension:
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension
    list ->
  unit ->
  rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action

type rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition

val rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition :
  publish_metric_action:
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action
    list ->
  unit ->
  rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition

type rule_group__rules_source__stateless_rules_and_custom_actions__custom_action

val rule_group__rules_source__stateless_rules_and_custom_actions__custom_action :
  action_name:string prop ->
  action_definition:
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition
    list ->
  unit ->
  rule_group__rules_source__stateless_rules_and_custom_actions__custom_action

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination

val rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination :
  address_definition:string prop ->
  unit ->
  rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port

val rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port :
  ?to_port:float prop ->
  from_port:float prop ->
  unit ->
  rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source

val rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source :
  address_definition:string prop ->
  unit ->
  rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port

val rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port :
  ?to_port:float prop ->
  from_port:float prop ->
  unit ->
  rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag

val rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag :
  ?masks:string prop list ->
  flags:string prop list ->
  unit ->
  rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes

val rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes :
  ?protocols:float prop list ->
  destination:
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination
    list ->
  destination_port:
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port
    list ->
  source:
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source
    list ->
  source_port:
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port
    list ->
  tcp_flag:
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag
    list ->
  unit ->
  rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition

val rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition :
  actions:string prop list ->
  match_attributes:
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes
    list ->
  unit ->
  rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule

val rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule :
  priority:float prop ->
  rule_definition:
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition
    list ->
  unit ->
  rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule

type rule_group__rules_source__stateless_rules_and_custom_actions

val rule_group__rules_source__stateless_rules_and_custom_actions :
  custom_action:
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action
    list ->
  stateless_rule:
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule
    list ->
  unit ->
  rule_group__rules_source__stateless_rules_and_custom_actions

type rule_group__rules_source

val rule_group__rules_source :
  ?rules_string:string prop ->
  ?rules_source_list:rule_group__rules_source__rules_source_list list ->
  ?stateful_rule:rule_group__rules_source__stateful_rule list ->
  ?stateless_rules_and_custom_actions:
    rule_group__rules_source__stateless_rules_and_custom_actions list ->
  unit ->
  rule_group__rules_source

type rule_group__stateful_rule_options

val rule_group__stateful_rule_options :
  rule_order:string prop -> unit -> rule_group__stateful_rule_options

type rule_group

val rule_group :
  ?reference_sets:rule_group__reference_sets list ->
  ?rule_variables:rule_group__rule_variables list ->
  ?stateful_rule_options:rule_group__stateful_rule_options list ->
  rules_source:rule_group__rules_source list ->
  unit ->
  rule_group

type aws_networkfirewall_rule_group

val aws_networkfirewall_rule_group :
  ?description:string prop ->
  ?id:string prop ->
  ?rules:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?encryption_configuration:encryption_configuration list ->
  ?rule_group:rule_group list ->
  capacity:float prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  aws_networkfirewall_rule_group

val yojson_of_aws_networkfirewall_rule_group :
  aws_networkfirewall_rule_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  capacity : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  rules : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  update_token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?rules:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?encryption_configuration:encryption_configuration list ->
  ?rule_group:rule_group list ->
  capacity:float prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?rules:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?encryption_configuration:encryption_configuration list ->
  ?rule_group:rule_group list ->
  capacity:float prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
