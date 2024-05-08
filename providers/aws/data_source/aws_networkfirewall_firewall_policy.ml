(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  action_definition :
    firewall_policy__stateless_custom_action__action_definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  action_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall_policy__stateless_custom_action) -> ()

let yojson_of_firewall_policy__stateless_custom_action =
  (function
   | {
       action_definition = v_action_definition;
       action_name = v_action_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action_name in
         ("action_name", arg) :: bnds
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
       `Assoc bnds
    : firewall_policy__stateless_custom_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_policy__stateless_custom_action

[@@@deriving.end]

type firewall_policy__stateful_rule_group_reference__override = {
  action : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : firewall_policy__stateful_rule_group_reference__override ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_firewall_policy__stateful_rule_group_reference__override

[@@@deriving.end]

type firewall_policy__stateful_rule_group_reference = {
  override :
    firewall_policy__stateful_rule_group_reference__override list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  priority : float prop;
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : firewall_policy__stateful_rule_group_reference) -> ()

let yojson_of_firewall_policy__stateful_rule_group_reference =
  (function
   | {
       override = v_override;
       priority = v_priority;
       resource_arn = v_resource_arn;
     } ->
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
       `Assoc bnds
    : firewall_policy__stateful_rule_group_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_policy__stateful_rule_group_reference

[@@@deriving.end]

type firewall_policy__stateful_engine_options = {
  rule_order : string prop;
  stream_exception_policy : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_stream_exception_policy
         in
         ("stream_exception_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_order in
         ("rule_order", arg) :: bnds
       in
       `Assoc bnds
    : firewall_policy__stateful_engine_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_policy__stateful_engine_options

[@@@deriving.end]

type firewall_policy = {
  stateful_default_actions : string prop list;
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
  stateless_default_actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateless_fragment_default_actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateless_rule_group_reference :
    firewall_policy__stateless_rule_group_reference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tls_inspection_configuration_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall_policy) -> ()

let yojson_of_firewall_policy =
  (function
   | {
       stateful_default_actions = v_stateful_default_actions;
       stateful_engine_options = v_stateful_engine_options;
       stateful_rule_group_reference =
         v_stateful_rule_group_reference;
       stateless_custom_action = v_stateless_custom_action;
       stateless_default_actions = v_stateless_default_actions;
       stateless_fragment_default_actions =
         v_stateless_fragment_default_actions;
       stateless_rule_group_reference =
         v_stateless_rule_group_reference;
       tls_inspection_configuration_arn =
         v_tls_inspection_configuration_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_tls_inspection_configuration_arn
         in
         ("tls_inspection_configuration_arn", arg) :: bnds
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
         if Stdlib.( = ) [] v_stateful_default_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_stateful_default_actions
           in
           let bnd = "stateful_default_actions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : firewall_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_policy

[@@@deriving.end]

type aws_networkfirewall_firewall_policy = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkfirewall_firewall_policy) -> ()

let yojson_of_aws_networkfirewall_firewall_policy =
  (function
   | { arn = v_arn; id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_networkfirewall_firewall_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkfirewall_firewall_policy

[@@@deriving.end]

let aws_networkfirewall_firewall_policy ?arn ?id ?name ?tags () :
    aws_networkfirewall_firewall_policy =
  { arn; id; name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  firewall_policy : firewall_policy list prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  update_token : string prop;
}

let make ?arn ?id ?name ?tags __id =
  let __type = "aws_networkfirewall_firewall_policy" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       firewall_policy = Prop.computed __type __id "firewall_policy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       update_token = Prop.computed __type __id "update_token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkfirewall_firewall_policy
        (aws_networkfirewall_firewall_policy ?arn ?id ?name ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?name ?tags __id =
  let (r : _ Tf_core.resource) = make ?arn ?id ?name ?tags __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
