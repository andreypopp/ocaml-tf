(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type encryption_configuration = {
  key_id : string prop option; [@option]  (** key_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** encryption_configuration *)

type rule_group__reference_sets__ip_set_references__ip_set_reference = {
  reference_arn : string prop;  (** reference_arn *)
}
[@@deriving yojson_of]
(** rule_group__reference_sets__ip_set_references__ip_set_reference *)

type rule_group__reference_sets__ip_set_references = {
  key : string prop;  (** key *)
  ip_set_reference :
    rule_group__reference_sets__ip_set_references__ip_set_reference
    list;
}
[@@deriving yojson_of]
(** rule_group__reference_sets__ip_set_references *)

type rule_group__reference_sets = {
  ip_set_references :
    rule_group__reference_sets__ip_set_references list;
}
[@@deriving yojson_of]
(** rule_group__reference_sets *)

type rule_group__rule_variables__ip_sets__ip_set = {
  definition : string prop list;  (** definition *)
}
[@@deriving yojson_of]
(** rule_group__rule_variables__ip_sets__ip_set *)

type rule_group__rule_variables__ip_sets = {
  key : string prop;  (** key *)
  ip_set : rule_group__rule_variables__ip_sets__ip_set list;
}
[@@deriving yojson_of]
(** rule_group__rule_variables__ip_sets *)

type rule_group__rule_variables__port_sets__port_set = {
  definition : string prop list;  (** definition *)
}
[@@deriving yojson_of]
(** rule_group__rule_variables__port_sets__port_set *)

type rule_group__rule_variables__port_sets = {
  key : string prop;  (** key *)
  port_set : rule_group__rule_variables__port_sets__port_set list;
}
[@@deriving yojson_of]
(** rule_group__rule_variables__port_sets *)

type rule_group__rule_variables = {
  ip_sets : rule_group__rule_variables__ip_sets list;
  port_sets : rule_group__rule_variables__port_sets list;
}
[@@deriving yojson_of]
(** rule_group__rule_variables *)

type rule_group__rules_source__rules_source_list = {
  generated_rules_type : string prop;  (** generated_rules_type *)
  target_types : string prop list;  (** target_types *)
  targets : string prop list;  (** targets *)
}
[@@deriving yojson_of]
(** rule_group__rules_source__rules_source_list *)

type rule_group__rules_source__stateful_rule__header = {
  destination : string prop;  (** destination *)
  destination_port : string prop;  (** destination_port *)
  direction : string prop;  (** direction *)
  protocol : string prop;  (** protocol *)
  source : string prop;  (** source *)
  source_port : string prop;  (** source_port *)
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateful_rule__header *)

type rule_group__rules_source__stateful_rule__rule_option = {
  keyword : string prop;  (** keyword *)
  settings : string prop list option; [@option]  (** settings *)
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateful_rule__rule_option *)

type rule_group__rules_source__stateful_rule = {
  action : string prop;  (** action *)
  header : rule_group__rules_source__stateful_rule__header list;
  rule_option :
    rule_group__rules_source__stateful_rule__rule_option list;
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateful_rule *)

type rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension *)

type rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action = {
  dimension :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension
    list;
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action *)

type rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition = {
  publish_metric_action :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action
    list;
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition *)

type rule_group__rules_source__stateless_rules_and_custom_actions__custom_action = {
  action_name : string prop;  (** action_name *)
  action_definition :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition
    list;
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateless_rules_and_custom_actions__custom_action *)

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination = {
  address_definition : string prop;  (** address_definition *)
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination *)

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port = {
  from_port : float prop;  (** from_port *)
  to_port : float prop option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port *)

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source = {
  address_definition : string prop;  (** address_definition *)
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source *)

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port = {
  from_port : float prop;  (** from_port *)
  to_port : float prop option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port *)

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag = {
  flags : string prop list;  (** flags *)
  masks : string prop list option; [@option]  (** masks *)
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag *)

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes = {
  protocols : float prop list option; [@option]  (** protocols *)
  destination :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination
    list;
  destination_port :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port
    list;
  source :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source
    list;
  source_port :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port
    list;
  tcp_flag :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag
    list;
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes *)

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition = {
  actions : string prop list;  (** actions *)
  match_attributes :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes
    list;
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition *)

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule = {
  priority : float prop;  (** priority *)
  rule_definition :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition
    list;
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule *)

type rule_group__rules_source__stateless_rules_and_custom_actions = {
  custom_action :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action
    list;
  stateless_rule :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule
    list;
}
[@@deriving yojson_of]
(** rule_group__rules_source__stateless_rules_and_custom_actions *)

type rule_group__rules_source = {
  rules_string : string prop option; [@option]  (** rules_string *)
  rules_source_list :
    rule_group__rules_source__rules_source_list list;
  stateful_rule : rule_group__rules_source__stateful_rule list;
  stateless_rules_and_custom_actions :
    rule_group__rules_source__stateless_rules_and_custom_actions list;
}
[@@deriving yojson_of]
(** rule_group__rules_source *)

type rule_group__stateful_rule_options = {
  rule_order : string prop;  (** rule_order *)
}
[@@deriving yojson_of]
(** rule_group__stateful_rule_options *)

type rule_group = {
  reference_sets : rule_group__reference_sets list;
  rule_variables : rule_group__rule_variables list;
  rules_source : rule_group__rules_source list;
  stateful_rule_options : rule_group__stateful_rule_options list;
}
[@@deriving yojson_of]
(** rule_group *)

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
  encryption_configuration : encryption_configuration list;
  rule_group : rule_group list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_rule_group *)

let encryption_configuration ?key_id ~type_ () :
    encryption_configuration =
  { key_id; type_ }

let rule_group__reference_sets__ip_set_references__ip_set_reference
    ~reference_arn () :
    rule_group__reference_sets__ip_set_references__ip_set_reference =
  { reference_arn }

let rule_group__reference_sets__ip_set_references ~key
    ~ip_set_reference () :
    rule_group__reference_sets__ip_set_references =
  { key; ip_set_reference }

let rule_group__reference_sets ~ip_set_references () :
    rule_group__reference_sets =
  { ip_set_references }

let rule_group__rule_variables__ip_sets__ip_set ~definition () :
    rule_group__rule_variables__ip_sets__ip_set =
  { definition }

let rule_group__rule_variables__ip_sets ~key ~ip_set () :
    rule_group__rule_variables__ip_sets =
  { key; ip_set }

let rule_group__rule_variables__port_sets__port_set ~definition () :
    rule_group__rule_variables__port_sets__port_set =
  { definition }

let rule_group__rule_variables__port_sets ~key ~port_set () :
    rule_group__rule_variables__port_sets =
  { key; port_set }

let rule_group__rule_variables ~ip_sets ~port_sets () :
    rule_group__rule_variables =
  { ip_sets; port_sets }

let rule_group__rules_source__rules_source_list ~generated_rules_type
    ~target_types ~targets () :
    rule_group__rules_source__rules_source_list =
  { generated_rules_type; target_types; targets }

let rule_group__rules_source__stateful_rule__header ~destination
    ~destination_port ~direction ~protocol ~source ~source_port () :
    rule_group__rules_source__stateful_rule__header =
  {
    destination;
    destination_port;
    direction;
    protocol;
    source;
    source_port;
  }

let rule_group__rules_source__stateful_rule__rule_option ?settings
    ~keyword () :
    rule_group__rules_source__stateful_rule__rule_option =
  { keyword; settings }

let rule_group__rules_source__stateful_rule ~action ~header
    ~rule_option () : rule_group__rules_source__stateful_rule =
  { action; header; rule_option }

let rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension
    ~value () :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension
    =
  { value }

let rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action
    ~dimension () :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action
    =
  { dimension }

let rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition
    ~publish_metric_action () :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition
    =
  { publish_metric_action }

let rule_group__rules_source__stateless_rules_and_custom_actions__custom_action
    ~action_name ~action_definition () :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action
    =
  { action_name; action_definition }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination
    ~address_definition () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination
    =
  { address_definition }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port
    ?to_port ~from_port () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port
    =
  { from_port; to_port }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source
    ~address_definition () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source
    =
  { address_definition }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port
    ?to_port ~from_port () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port
    =
  { from_port; to_port }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag
    ?masks ~flags () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag
    =
  { flags; masks }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes
    ?protocols ~destination ~destination_port ~source ~source_port
    ~tcp_flag () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes
    =
  {
    protocols;
    destination;
    destination_port;
    source;
    source_port;
    tcp_flag;
  }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition
    ~actions ~match_attributes () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition
    =
  { actions; match_attributes }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule
    ~priority ~rule_definition () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule
    =
  { priority; rule_definition }

let rule_group__rules_source__stateless_rules_and_custom_actions
    ~custom_action ~stateless_rule () :
    rule_group__rules_source__stateless_rules_and_custom_actions =
  { custom_action; stateless_rule }

let rule_group__rules_source ?rules_string ~rules_source_list
    ~stateful_rule ~stateless_rules_and_custom_actions () :
    rule_group__rules_source =
  {
    rules_string;
    rules_source_list;
    stateful_rule;
    stateless_rules_and_custom_actions;
  }

let rule_group__stateful_rule_options ~rule_order () :
    rule_group__stateful_rule_options =
  { rule_order }

let rule_group ~reference_sets ~rule_variables ~rules_source
    ~stateful_rule_options () : rule_group =
  {
    reference_sets;
    rule_variables;
    rules_source;
    stateful_rule_options;
  }

let aws_networkfirewall_rule_group ?description ?id ?rules ?tags
    ?tags_all ~capacity ~name ~type_ ~encryption_configuration
    ~rule_group () : aws_networkfirewall_rule_group =
  {
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

let register ?tf_module ?description ?id ?rules ?tags ?tags_all
    ~capacity ~name ~type_ ~encryption_configuration ~rule_group
    __resource_id =
  let __resource_type = "aws_networkfirewall_rule_group" in
  let __resource =
    aws_networkfirewall_rule_group ?description ?id ?rules ?tags
      ?tags_all ~capacity ~name ~type_ ~encryption_configuration
      ~rule_group ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
