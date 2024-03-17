(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkfirewall_rule_group__encryption_configuration = {
  key_id : string prop option; [@option]  (** key_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__encryption_configuration *)

type aws_networkfirewall_rule_group__rule_group__reference_sets__ip_set_references__ip_set_reference = {
  reference_arn : string prop;  (** reference_arn *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__reference_sets__ip_set_references__ip_set_reference *)

type aws_networkfirewall_rule_group__rule_group__reference_sets__ip_set_references = {
  key : string prop;  (** key *)
  ip_set_reference :
    aws_networkfirewall_rule_group__rule_group__reference_sets__ip_set_references__ip_set_reference
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__reference_sets__ip_set_references *)

type aws_networkfirewall_rule_group__rule_group__reference_sets = {
  ip_set_references :
    aws_networkfirewall_rule_group__rule_group__reference_sets__ip_set_references
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__reference_sets *)

type aws_networkfirewall_rule_group__rule_group__rule_variables__ip_sets__ip_set = {
  definition : string prop list;  (** definition *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rule_variables__ip_sets__ip_set *)

type aws_networkfirewall_rule_group__rule_group__rule_variables__ip_sets = {
  key : string prop;  (** key *)
  ip_set :
    aws_networkfirewall_rule_group__rule_group__rule_variables__ip_sets__ip_set
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rule_variables__ip_sets *)

type aws_networkfirewall_rule_group__rule_group__rule_variables__port_sets__port_set = {
  definition : string prop list;  (** definition *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rule_variables__port_sets__port_set *)

type aws_networkfirewall_rule_group__rule_group__rule_variables__port_sets = {
  key : string prop;  (** key *)
  port_set :
    aws_networkfirewall_rule_group__rule_group__rule_variables__port_sets__port_set
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rule_variables__port_sets *)

type aws_networkfirewall_rule_group__rule_group__rule_variables = {
  ip_sets :
    aws_networkfirewall_rule_group__rule_group__rule_variables__ip_sets
    list;
  port_sets :
    aws_networkfirewall_rule_group__rule_group__rule_variables__port_sets
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rule_variables *)

type aws_networkfirewall_rule_group__rule_group__rules_source__rules_source_list = {
  generated_rules_type : string prop;  (** generated_rules_type *)
  target_types : string prop list;  (** target_types *)
  targets : string prop list;  (** targets *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__rules_source_list *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateful_rule__header = {
  destination : string prop;  (** destination *)
  destination_port : string prop;  (** destination_port *)
  direction : string prop;  (** direction *)
  protocol : string prop;  (** protocol *)
  source : string prop;  (** source *)
  source_port : string prop;  (** source_port *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateful_rule__header *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateful_rule__rule_option = {
  keyword : string prop;  (** keyword *)
  settings : string prop list option; [@option]  (** settings *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateful_rule__rule_option *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateful_rule = {
  action : string prop;  (** action *)
  header :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateful_rule__header
    list;
  rule_option :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateful_rule__rule_option
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateful_rule *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action = {
  dimension :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition = {
  publish_metric_action :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__custom_action = {
  action_name : string prop;  (** action_name *)
  action_definition :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__custom_action *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination = {
  address_definition : string prop;  (** address_definition *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port = {
  from_port : float prop;  (** from_port *)
  to_port : float prop option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source = {
  address_definition : string prop;  (** address_definition *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port = {
  from_port : float prop;  (** from_port *)
  to_port : float prop option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag = {
  flags : string prop list;  (** flags *)
  masks : string prop list option; [@option]  (** masks *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes = {
  protocols : float prop list option; [@option]  (** protocols *)
  destination :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination
    list;
  destination_port :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port
    list;
  source :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source
    list;
  source_port :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port
    list;
  tcp_flag :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition = {
  actions : string prop list;  (** actions *)
  match_attributes :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule = {
  priority : float prop;  (** priority *)
  rule_definition :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule *)

type aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions = {
  custom_action :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__custom_action
    list;
  stateless_rule :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions *)

type aws_networkfirewall_rule_group__rule_group__rules_source = {
  rules_string : string prop option; [@option]  (** rules_string *)
  rules_source_list :
    aws_networkfirewall_rule_group__rule_group__rules_source__rules_source_list
    list;
  stateful_rule :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateful_rule
    list;
  stateless_rules_and_custom_actions :
    aws_networkfirewall_rule_group__rule_group__rules_source__stateless_rules_and_custom_actions
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__rules_source *)

type aws_networkfirewall_rule_group__rule_group__stateful_rule_options = {
  rule_order : string prop;  (** rule_order *)
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group__stateful_rule_options *)

type aws_networkfirewall_rule_group__rule_group = {
  reference_sets :
    aws_networkfirewall_rule_group__rule_group__reference_sets list;
  rule_variables :
    aws_networkfirewall_rule_group__rule_group__rule_variables list;
  rules_source :
    aws_networkfirewall_rule_group__rule_group__rules_source list;
  stateful_rule_options :
    aws_networkfirewall_rule_group__rule_group__stateful_rule_options
    list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group__rule_group *)

type aws_networkfirewall_rule_group = {
  capacity : float prop;  (** capacity *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  rules : string prop option; [@option]  (** rules *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  encryption_configuration :
    aws_networkfirewall_rule_group__encryption_configuration list;
  rule_group : aws_networkfirewall_rule_group__rule_group list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group *)

type t = {
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

let aws_networkfirewall_rule_group ?description ?id ?rules ?tags
    ?tags_all ~capacity ~name ~type_ ~encryption_configuration
    ~rule_group __resource_id =
  let __resource_type = "aws_networkfirewall_rule_group" in
  let __resource =
    ({
       capacity;
       description;
       id;
       name;
       rules;
       tags;
       tags_all;
       type_;
       encryption_configuration;
       rule_group;
     }
      : aws_networkfirewall_rule_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkfirewall_rule_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       capacity =
         Prop.computed __resource_type __resource_id "capacity";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       rules = Prop.computed __resource_type __resource_id "rules";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
       update_token =
         Prop.computed __resource_type __resource_id "update_token";
     }
      : t)
  in
  __resource_attributes
