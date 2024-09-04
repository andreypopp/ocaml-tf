(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_configuration = {
  key_id : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_configuration) -> ()

let yojson_of_encryption_configuration =
  (function
   | { key_id = v_key_id; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_configuration

[@@@deriving.end]

type firewall_policy__policy_variables__rule_variables__ip_set = {
  definition : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : firewall_policy__policy_variables__rule_variables__ip_set) ->
  ()

let yojson_of_firewall_policy__policy_variables__rule_variables__ip_set
    =
  (function
   | { definition = v_definition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_definition then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_definition
           in
           let bnd = "definition", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : firewall_policy__policy_variables__rule_variables__ip_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_firewall_policy__policy_variables__rule_variables__ip_set

[@@@deriving.end]

type firewall_policy__policy_variables__rule_variables = {
  key : string prop;
  ip_set :
    firewall_policy__policy_variables__rule_variables__ip_set list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : firewall_policy__policy_variables__rule_variables) -> ()

let yojson_of_firewall_policy__policy_variables__rule_variables =
  (function
   | { key = v_key; ip_set = v_ip_set } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_set then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_firewall_policy__policy_variables__rule_variables__ip_set)
               v_ip_set
           in
           let bnd = "ip_set", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : firewall_policy__policy_variables__rule_variables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_policy__policy_variables__rule_variables

[@@@deriving.end]

type firewall_policy__policy_variables = {
  rule_variables :
    firewall_policy__policy_variables__rule_variables list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall_policy__policy_variables) -> ()

let yojson_of_firewall_policy__policy_variables =
  (function
   | { rule_variables = v_rule_variables } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule_variables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_firewall_policy__policy_variables__rule_variables)
               v_rule_variables
           in
           let bnd = "rule_variables", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : firewall_policy__policy_variables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_policy__policy_variables

[@@@deriving.end]

type firewall_policy__stateful_engine_options = {
  rule_order : string prop option; [@option]
  stream_exception_policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall_policy__stateful_engine_options) -> ()

let yojson_of_firewall_policy__stateful_engine_options =
  (function
   | {
       rule_order = v_rule_order;
       stream_exception_policy = v_stream_exception_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_stream_exception_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stream_exception_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rule_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule_order", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : firewall_policy__stateful_engine_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_policy__stateful_engine_options

[@@@deriving.end]

type firewall_policy__stateful_rule_group_reference__override = {
  action : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : firewall_policy__stateful_rule_group_reference__override) ->
  ()

let yojson_of_firewall_policy__stateful_rule_group_reference__override
    =
  (function
   | { action = v_action } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : firewall_policy__stateful_rule_group_reference__override ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_firewall_policy__stateful_rule_group_reference__override

[@@@deriving.end]

type firewall_policy__stateful_rule_group_reference = {
  priority : float prop option; [@option]
  resource_arn : string prop;
  override :
    firewall_policy__stateful_rule_group_reference__override list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : firewall_policy__stateful_rule_group_reference) -> ()

let yojson_of_firewall_policy__stateful_rule_group_reference =
  (function
   | {
       priority = v_priority;
       resource_arn = v_resource_arn;
       override = v_override;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_override then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_firewall_policy__stateful_rule_group_reference__override)
               v_override
           in
           let bnd = "override", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : firewall_policy__stateful_rule_group_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_policy__stateful_rule_group_reference

[@@@deriving.end]

type firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension) ->
  ()

let yojson_of_firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension
    =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension

[@@@deriving.end]

type firewall_policy__stateless_custom_action__action_definition__publish_metric_action = {
  dimension :
    firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       firewall_policy__stateless_custom_action__action_definition__publish_metric_action) ->
  ()

let yojson_of_firewall_policy__stateless_custom_action__action_definition__publish_metric_action
    =
  (function
   | { dimension = v_dimension } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_firewall_policy__stateless_custom_action__action_definition__publish_metric_action__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : firewall_policy__stateless_custom_action__action_definition__publish_metric_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_firewall_policy__stateless_custom_action__action_definition__publish_metric_action

[@@@deriving.end]

type firewall_policy__stateless_custom_action__action_definition = {
  publish_metric_action :
    firewall_policy__stateless_custom_action__action_definition__publish_metric_action
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       firewall_policy__stateless_custom_action__action_definition) ->
  ()

let yojson_of_firewall_policy__stateless_custom_action__action_definition
    =
  (function
   | { publish_metric_action = v_publish_metric_action } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_publish_metric_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_firewall_policy__stateless_custom_action__action_definition__publish_metric_action)
               v_publish_metric_action
           in
           let bnd = "publish_metric_action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : firewall_policy__stateless_custom_action__action_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_firewall_policy__stateless_custom_action__action_definition

[@@@deriving.end]

type firewall_policy__stateless_custom_action = {
  action_name : string prop;
  action_definition :
    firewall_policy__stateless_custom_action__action_definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall_policy__stateless_custom_action) -> ()

let yojson_of_firewall_policy__stateless_custom_action =
  (function
   | {
       action_name = v_action_name;
       action_definition = v_action_definition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_action_definition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_firewall_policy__stateless_custom_action__action_definition)
               v_action_definition
           in
           let bnd = "action_definition", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action_name in
         ("action_name", arg) :: bnds
       in
       `Assoc bnds
    : firewall_policy__stateless_custom_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_policy__stateless_custom_action

[@@@deriving.end]

type firewall_policy__stateless_rule_group_reference = {
  priority : float prop;
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : firewall_policy__stateless_rule_group_reference) -> ()

let yojson_of_firewall_policy__stateless_rule_group_reference =
  (function
   | { priority = v_priority; resource_arn = v_resource_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       `Assoc bnds
    : firewall_policy__stateless_rule_group_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_policy__stateless_rule_group_reference

[@@@deriving.end]

type firewall_policy = {
  stateful_default_actions : string prop list option; [@option]
  stateless_default_actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateless_fragment_default_actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tls_inspection_configuration_arn : string prop option; [@option]
  policy_variables : firewall_policy__policy_variables list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateful_engine_options :
    firewall_policy__stateful_engine_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateful_rule_group_reference :
    firewall_policy__stateful_rule_group_reference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateless_custom_action :
    firewall_policy__stateless_custom_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateless_rule_group_reference :
    firewall_policy__stateless_rule_group_reference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall_policy) -> ()

let yojson_of_firewall_policy =
  (function
   | {
       stateful_default_actions = v_stateful_default_actions;
       stateless_default_actions = v_stateless_default_actions;
       stateless_fragment_default_actions =
         v_stateless_fragment_default_actions;
       tls_inspection_configuration_arn =
         v_tls_inspection_configuration_arn;
       policy_variables = v_policy_variables;
       stateful_engine_options = v_stateful_engine_options;
       stateful_rule_group_reference =
         v_stateful_rule_group_reference;
       stateless_custom_action = v_stateless_custom_action;
       stateless_rule_group_reference =
         v_stateless_rule_group_reference;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_stateless_rule_group_reference then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_firewall_policy__stateless_rule_group_reference)
               v_stateless_rule_group_reference
           in
           let bnd = "stateless_rule_group_reference", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stateless_custom_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_firewall_policy__stateless_custom_action)
               v_stateless_custom_action
           in
           let bnd = "stateless_custom_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stateful_rule_group_reference then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_firewall_policy__stateful_rule_group_reference)
               v_stateful_rule_group_reference
           in
           let bnd = "stateful_rule_group_reference", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stateful_engine_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_firewall_policy__stateful_engine_options)
               v_stateful_engine_options
           in
           let bnd = "stateful_engine_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_policy_variables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_firewall_policy__policy_variables)
               v_policy_variables
           in
           let bnd = "policy_variables", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tls_inspection_configuration_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_inspection_configuration_arn", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stateless_fragment_default_actions then
           bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_stateless_fragment_default_actions
           in
           let bnd = "stateless_fragment_default_actions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stateless_default_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_stateless_default_actions
           in
           let bnd = "stateless_default_actions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_stateful_default_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "stateful_default_actions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : firewall_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_policy

[@@@deriving.end]

type aws_networkfirewall_firewall_policy = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  encryption_configuration : encryption_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  firewall_policy : firewall_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkfirewall_firewall_policy) -> ()

let yojson_of_aws_networkfirewall_firewall_policy =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       encryption_configuration = v_encryption_configuration;
       firewall_policy = v_firewall_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_firewall_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_firewall_policy)
               v_firewall_policy
           in
           let bnd = "firewall_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_configuration)
               v_encryption_configuration
           in
           let bnd = "encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_networkfirewall_firewall_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkfirewall_firewall_policy

[@@@deriving.end]

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
    ?(override = []) ~resource_arn () :
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
    ?tls_inspection_configuration_arn ?(policy_variables = [])
    ?(stateful_engine_options = []) ~stateless_default_actions
    ~stateless_fragment_default_actions
    ~stateful_rule_group_reference ~stateless_custom_action
    ~stateless_rule_group_reference () : firewall_policy =
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
    ?tags_all ?(encryption_configuration = []) ~name ~firewall_policy
    () : aws_networkfirewall_firewall_policy =
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
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  update_token : string prop;
}

let make ?description ?id ?tags ?tags_all
    ?(encryption_configuration = []) ~name ~firewall_policy __id =
  let __type = "aws_networkfirewall_firewall_policy" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?tags_all ~encryption_configuration ~name ~firewall_policy
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ?(encryption_configuration = []) ~name ~firewall_policy __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~encryption_configuration
      ~name ~firewall_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
