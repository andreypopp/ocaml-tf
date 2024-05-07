(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type firewall_policy__stateless_rule_group_reference = {
  priority : float prop;  (** priority *)
  resource_arn : string prop;  (** resource_arn *)
}

type firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension = {
  value : string prop;  (** value *)
}

type firewall_policy__stateless_custom_action__action_definition__publish_metric_action = {
  dimension :
    firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension
    list;
      (** dimension *)
}

type firewall_policy__stateless_custom_action__action_definition = {
  publish_metric_action :
    firewall_policy__stateless_custom_action__action_definition__publish_metric_action
    list;
      (** publish_metric_action *)
}

type firewall_policy__stateless_custom_action = {
  action_definition :
    firewall_policy__stateless_custom_action__action_definition list;
      (** action_definition *)
  action_name : string prop;  (** action_name *)
}

type firewall_policy__stateful_rule_group_reference__override = {
  action : string prop;  (** action *)
}

type firewall_policy__stateful_rule_group_reference = {
  override :
    firewall_policy__stateful_rule_group_reference__override list;
      (** override *)
  priority : float prop;  (** priority *)
  resource_arn : string prop;  (** resource_arn *)
}

type firewall_policy__stateful_engine_options = {
  rule_order : string prop;  (** rule_order *)
  stream_exception_policy : string prop;
      (** stream_exception_policy *)
}

type firewall_policy = {
  stateful_default_actions : string prop list;
      (** stateful_default_actions *)
  stateful_engine_options :
    firewall_policy__stateful_engine_options list;
      (** stateful_engine_options *)
  stateful_rule_group_reference :
    firewall_policy__stateful_rule_group_reference list;
      (** stateful_rule_group_reference *)
  stateless_custom_action :
    firewall_policy__stateless_custom_action list;
      (** stateless_custom_action *)
  stateless_default_actions : string prop list;
      (** stateless_default_actions *)
  stateless_fragment_default_actions : string prop list;
      (** stateless_fragment_default_actions *)
  stateless_rule_group_reference :
    firewall_policy__stateless_rule_group_reference list;
      (** stateless_rule_group_reference *)
  tls_inspection_configuration_arn : string prop;
      (** tls_inspection_configuration_arn *)
}

type aws_networkfirewall_firewall_policy

val aws_networkfirewall_firewall_policy :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  aws_networkfirewall_firewall_policy

val yojson_of_aws_networkfirewall_firewall_policy :
  aws_networkfirewall_firewall_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  firewall_policy : firewall_policy list prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  update_token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
