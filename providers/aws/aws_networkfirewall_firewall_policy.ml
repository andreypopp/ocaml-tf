(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_configuration = {
  key_id : string prop option; [@option]  (** key_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** encryption_configuration *)

type firewall_policy__policy_variables__rule_variables__ip_set = {
  definition : string prop list;  (** definition *)
}
[@@deriving yojson_of]
(** firewall_policy__policy_variables__rule_variables__ip_set *)

type firewall_policy__policy_variables__rule_variables = {
  key : string prop;  (** key *)
  ip_set :
    firewall_policy__policy_variables__rule_variables__ip_set list;
}
[@@deriving yojson_of]
(** firewall_policy__policy_variables__rule_variables *)

type firewall_policy__policy_variables = {
  rule_variables :
    firewall_policy__policy_variables__rule_variables list;
}
[@@deriving yojson_of]
(** firewall_policy__policy_variables *)

type firewall_policy__stateful_engine_options = {
  rule_order : string prop option; [@option]  (** rule_order *)
  stream_exception_policy : string prop option; [@option]
      (** stream_exception_policy *)
}
[@@deriving yojson_of]
(** firewall_policy__stateful_engine_options *)

type firewall_policy__stateful_rule_group_reference__override = {
  action : string prop option; [@option]  (** action *)
}
[@@deriving yojson_of]
(** firewall_policy__stateful_rule_group_reference__override *)

type firewall_policy__stateful_rule_group_reference = {
  priority : float prop option; [@option]  (** priority *)
  resource_arn : string prop;  (** resource_arn *)
  override :
    firewall_policy__stateful_rule_group_reference__override list;
}
[@@deriving yojson_of]
(** firewall_policy__stateful_rule_group_reference *)

type firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension *)

type firewall_policy__stateless_custom_action__action_definition__publish_metric_action = {
  dimension :
    firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension
    list;
}
[@@deriving yojson_of]
(** firewall_policy__stateless_custom_action__action_definition__publish_metric_action *)

type firewall_policy__stateless_custom_action__action_definition = {
  publish_metric_action :
    firewall_policy__stateless_custom_action__action_definition__publish_metric_action
    list;
}
[@@deriving yojson_of]
(** firewall_policy__stateless_custom_action__action_definition *)

type firewall_policy__stateless_custom_action = {
  action_name : string prop;  (** action_name *)
  action_definition :
    firewall_policy__stateless_custom_action__action_definition list;
}
[@@deriving yojson_of]
(** firewall_policy__stateless_custom_action *)

type firewall_policy__stateless_rule_group_reference = {
  priority : float prop;  (** priority *)
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** firewall_policy__stateless_rule_group_reference *)

type firewall_policy = {
  stateful_default_actions : string prop list option; [@option]
      (** stateful_default_actions *)
  stateless_default_actions : string prop list;
      (** stateless_default_actions *)
  stateless_fragment_default_actions : string prop list;
      (** stateless_fragment_default_actions *)
  tls_inspection_configuration_arn : string prop option; [@option]
      (** tls_inspection_configuration_arn *)
  policy_variables : firewall_policy__policy_variables list;
  stateful_engine_options :
    firewall_policy__stateful_engine_options list;
  stateful_rule_group_reference :
    firewall_policy__stateful_rule_group_reference list;
  stateless_custom_action :
    firewall_policy__stateless_custom_action list;
  stateless_rule_group_reference :
    firewall_policy__stateless_rule_group_reference list;
}
[@@deriving yojson_of]
(** firewall_policy *)

type aws_networkfirewall_firewall_policy = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  encryption_configuration : encryption_configuration list;
  firewall_policy : firewall_policy list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_firewall_policy *)

let encryption_configuration ?key_id ~type_ () :
    encryption_configuration =
  { key_id; type_ }

let firewall_policy__policy_variables__rule_variables__ip_set
    ~definition () :
    firewall_policy__policy_variables__rule_variables__ip_set =
  { definition }

let firewall_policy__policy_variables__rule_variables ~key ~ip_set ()
    : firewall_policy__policy_variables__rule_variables =
  { key; ip_set }

let firewall_policy__policy_variables ~rule_variables () :
    firewall_policy__policy_variables =
  { rule_variables }

let firewall_policy__stateful_engine_options ?rule_order
    ?stream_exception_policy () :
    firewall_policy__stateful_engine_options =
  { rule_order; stream_exception_policy }

let firewall_policy__stateful_rule_group_reference__override ?action
    () : firewall_policy__stateful_rule_group_reference__override =
  { action }

let firewall_policy__stateful_rule_group_reference ?priority
    ~resource_arn ~override () :
    firewall_policy__stateful_rule_group_reference =
  { priority; resource_arn; override }

let firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension
    ~value () :
    firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension
    =
  { value }

let firewall_policy__stateless_custom_action__action_definition__publish_metric_action
    ~dimension () :
    firewall_policy__stateless_custom_action__action_definition__publish_metric_action
    =
  { dimension }

let firewall_policy__stateless_custom_action__action_definition
    ~publish_metric_action () :
    firewall_policy__stateless_custom_action__action_definition =
  { publish_metric_action }

let firewall_policy__stateless_custom_action ~action_name
    ~action_definition () : firewall_policy__stateless_custom_action
    =
  { action_name; action_definition }

let firewall_policy__stateless_rule_group_reference ~priority
    ~resource_arn () :
    firewall_policy__stateless_rule_group_reference =
  { priority; resource_arn }

let firewall_policy ?stateful_default_actions
    ?tls_inspection_configuration_arn ~stateless_default_actions
    ~stateless_fragment_default_actions ~policy_variables
    ~stateful_engine_options ~stateful_rule_group_reference
    ~stateless_custom_action ~stateless_rule_group_reference () :
    firewall_policy =
  {
    stateful_default_actions;
    stateless_default_actions;
    stateless_fragment_default_actions;
    tls_inspection_configuration_arn;
    policy_variables;
    stateful_engine_options;
    stateful_rule_group_reference;
    stateless_custom_action;
    stateless_rule_group_reference;
  }

let aws_networkfirewall_firewall_policy ?description ?id ?tags
    ?tags_all ~name ~encryption_configuration ~firewall_policy () :
    aws_networkfirewall_firewall_policy =
  {
    description;
    id;
    name;
    tags;
    tags_all;
    encryption_configuration;
    firewall_policy;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_token : string prop;
}

let make ?description ?id ?tags ?tags_all ~name
    ~encryption_configuration ~firewall_policy __id =
  let __type = "aws_networkfirewall_firewall_policy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       update_token = Prop.computed __type __id "update_token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkfirewall_firewall_policy
        (aws_networkfirewall_firewall_policy ?description ?id ?tags
           ?tags_all ~name ~encryption_configuration ~firewall_policy
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~encryption_configuration ~firewall_policy __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name
      ~encryption_configuration ~firewall_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
