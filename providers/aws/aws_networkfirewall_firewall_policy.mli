(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkfirewall_firewall_policy__encryption_configuration

type aws_networkfirewall_firewall_policy__firewall_policy__policy_variables__rule_variables__ip_set

type aws_networkfirewall_firewall_policy__firewall_policy__policy_variables__rule_variables

type aws_networkfirewall_firewall_policy__firewall_policy__policy_variables

type aws_networkfirewall_firewall_policy__firewall_policy__stateful_engine_options

type aws_networkfirewall_firewall_policy__firewall_policy__stateful_rule_group_reference__override

type aws_networkfirewall_firewall_policy__firewall_policy__stateful_rule_group_reference

type aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension

type aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action__action_definition__publish_metric_action

type aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action__action_definition

type aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action

type aws_networkfirewall_firewall_policy__firewall_policy__stateless_rule_group_reference

type aws_networkfirewall_firewall_policy__firewall_policy
type aws_networkfirewall_firewall_policy

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_token : string prop;
}

val aws_networkfirewall_firewall_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  encryption_configuration:
    aws_networkfirewall_firewall_policy__encryption_configuration
    list ->
  firewall_policy:
    aws_networkfirewall_firewall_policy__firewall_policy list ->
  string ->
  t
