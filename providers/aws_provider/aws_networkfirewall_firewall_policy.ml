(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkfirewall_firewall_policy__encryption_configuration = {
  key_id : string option; [@option]  (** key_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy__encryption_configuration *)

type aws_networkfirewall_firewall_policy__firewall_policy__policy_variables__rule_variables__ip_set = {
  definition : string list;  (** definition *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy__firewall_policy__policy_variables__rule_variables__ip_set *)

type aws_networkfirewall_firewall_policy__firewall_policy__policy_variables__rule_variables = {
  key : string;  (** key *)
  ip_set :
    aws_networkfirewall_firewall_policy__firewall_policy__policy_variables__rule_variables__ip_set
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy__firewall_policy__policy_variables__rule_variables *)

type aws_networkfirewall_firewall_policy__firewall_policy__policy_variables = {
  rule_variables :
    aws_networkfirewall_firewall_policy__firewall_policy__policy_variables__rule_variables
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy__firewall_policy__policy_variables *)

type aws_networkfirewall_firewall_policy__firewall_policy__stateful_engine_options = {
  rule_order : string option; [@option]  (** rule_order *)
  stream_exception_policy : string option; [@option]
      (** stream_exception_policy *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy__firewall_policy__stateful_engine_options *)

type aws_networkfirewall_firewall_policy__firewall_policy__stateful_rule_group_reference__override = {
  action : string option; [@option]  (** action *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy__firewall_policy__stateful_rule_group_reference__override *)

type aws_networkfirewall_firewall_policy__firewall_policy__stateful_rule_group_reference = {
  priority : float option; [@option]  (** priority *)
  resource_arn : string;  (** resource_arn *)
  override :
    aws_networkfirewall_firewall_policy__firewall_policy__stateful_rule_group_reference__override
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy__firewall_policy__stateful_rule_group_reference *)

type aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension *)

type aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action__action_definition__publish_metric_action = {
  dimension :
    aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action__action_definition__publish_metric_action *)

type aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action__action_definition = {
  publish_metric_action :
    aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action__action_definition__publish_metric_action
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action__action_definition *)

type aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action = {
  action_name : string;  (** action_name *)
  action_definition :
    aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action__action_definition
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action *)

type aws_networkfirewall_firewall_policy__firewall_policy__stateless_rule_group_reference = {
  priority : float;  (** priority *)
  resource_arn : string;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy__firewall_policy__stateless_rule_group_reference *)

type aws_networkfirewall_firewall_policy__firewall_policy = {
  stateful_default_actions : string list option; [@option]
      (** stateful_default_actions *)
  stateless_default_actions : string list;
      (** stateless_default_actions *)
  stateless_fragment_default_actions : string list;
      (** stateless_fragment_default_actions *)
  tls_inspection_configuration_arn : string option; [@option]
      (** tls_inspection_configuration_arn *)
  policy_variables :
    aws_networkfirewall_firewall_policy__firewall_policy__policy_variables
    list;
  stateful_engine_options :
    aws_networkfirewall_firewall_policy__firewall_policy__stateful_engine_options
    list;
  stateful_rule_group_reference :
    aws_networkfirewall_firewall_policy__firewall_policy__stateful_rule_group_reference
    list;
  stateless_custom_action :
    aws_networkfirewall_firewall_policy__firewall_policy__stateless_custom_action
    list;
  stateless_rule_group_reference :
    aws_networkfirewall_firewall_policy__firewall_policy__stateless_rule_group_reference
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy__firewall_policy *)

type aws_networkfirewall_firewall_policy = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  encryption_configuration :
    aws_networkfirewall_firewall_policy__encryption_configuration
    list;
  firewall_policy :
    aws_networkfirewall_firewall_policy__firewall_policy list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy *)

let aws_networkfirewall_firewall_policy ?description ?tags ~name
    ~encryption_configuration ~firewall_policy __resource_id =
  let __resource_type = "aws_networkfirewall_firewall_policy" in
  let __resource =
    {
      description;
      name;
      tags;
      encryption_configuration;
      firewall_policy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkfirewall_firewall_policy __resource);
  ()
