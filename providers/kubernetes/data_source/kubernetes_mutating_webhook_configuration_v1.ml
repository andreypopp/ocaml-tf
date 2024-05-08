(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       annotations = v_annotations;
       labels = v_labels;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type webhook__rule = {
  api_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  api_versions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  operations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resources : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scope : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook__rule) -> ()

let yojson_of_webhook__rule =
  (function
   | {
       api_groups = v_api_groups;
       api_versions = v_api_versions;
       operations = v_operations;
       resources = v_resources;
       scope = v_scope;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resources then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_resources
           in
           let bnd = "resources", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_operations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_operations
           in
           let bnd = "operations", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_api_versions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_api_versions
           in
           let bnd = "api_versions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_api_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_api_groups
           in
           let bnd = "api_groups", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : webhook__rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook__rule

[@@@deriving.end]

type webhook__object_selector__match_expressions = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook__object_selector__match_expressions) -> ()

let yojson_of_webhook__object_selector__match_expressions =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : webhook__object_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook__object_selector__match_expressions

[@@@deriving.end]

type webhook__object_selector = {
  match_expressions :
    webhook__object_selector__match_expressions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_labels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook__object_selector) -> ()

let yojson_of_webhook__object_selector =
  (function
   | {
       match_expressions = v_match_expressions;
       match_labels = v_match_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_match_labels
         in
         ("match_labels", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_webhook__object_selector__match_expressions)
               v_match_expressions
           in
           let bnd = "match_expressions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : webhook__object_selector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook__object_selector

[@@@deriving.end]

type webhook__namespace_selector__match_expressions = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : webhook__namespace_selector__match_expressions) -> ()

let yojson_of_webhook__namespace_selector__match_expressions =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : webhook__namespace_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook__namespace_selector__match_expressions

[@@@deriving.end]

type webhook__namespace_selector = {
  match_expressions :
    webhook__namespace_selector__match_expressions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_labels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook__namespace_selector) -> ()

let yojson_of_webhook__namespace_selector =
  (function
   | {
       match_expressions = v_match_expressions;
       match_labels = v_match_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_match_labels
         in
         ("match_labels", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_webhook__namespace_selector__match_expressions)
               v_match_expressions
           in
           let bnd = "match_expressions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : webhook__namespace_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook__namespace_selector

[@@@deriving.end]

type webhook__client_config__service = {
  name : string prop;
  namespace : string prop;
  path : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook__client_config__service) -> ()

let yojson_of_webhook__client_config__service =
  (function
   | {
       name = v_name;
       namespace = v_namespace;
       path = v_path;
       port = v_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : webhook__client_config__service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook__client_config__service

[@@@deriving.end]

type webhook__client_config = {
  ca_bundle : string prop;
  service : webhook__client_config__service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook__client_config) -> ()

let yojson_of_webhook__client_config =
  (function
   | { ca_bundle = v_ca_bundle; service = v_service; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_service then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_webhook__client_config__service)
               v_service
           in
           let bnd = "service", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ca_bundle in
         ("ca_bundle", arg) :: bnds
       in
       `Assoc bnds
    : webhook__client_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook__client_config

[@@@deriving.end]

type webhook = {
  admission_review_versions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  client_config : webhook__client_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  failure_policy : string prop;
  match_policy : string prop;
  name : string prop;
  namespace_selector : webhook__namespace_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  object_selector : webhook__object_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  reinvocation_policy : string prop;
  rule : webhook__rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  side_effects : string prop;
  timeout_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook) -> ()

let yojson_of_webhook =
  (function
   | {
       admission_review_versions = v_admission_review_versions;
       client_config = v_client_config;
       failure_policy = v_failure_policy;
       match_policy = v_match_policy;
       name = v_name;
       namespace_selector = v_namespace_selector;
       object_selector = v_object_selector;
       reinvocation_policy = v_reinvocation_policy;
       rule = v_rule;
       side_effects = v_side_effects;
       timeout_seconds = v_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_seconds
         in
         ("timeout_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_side_effects in
         ("side_effects", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_webhook__rule) v_rule
           in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_reinvocation_policy
         in
         ("reinvocation_policy", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_object_selector then bnds
         else
           let arg =
             (yojson_of_list yojson_of_webhook__object_selector)
               v_object_selector
           in
           let bnd = "object_selector", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_namespace_selector then bnds
         else
           let arg =
             (yojson_of_list yojson_of_webhook__namespace_selector)
               v_namespace_selector
           in
           let bnd = "namespace_selector", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_match_policy in
         ("match_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_failure_policy
         in
         ("failure_policy", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_client_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_webhook__client_config)
               v_client_config
           in
           let bnd = "client_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_admission_review_versions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_admission_review_versions
           in
           let bnd = "admission_review_versions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : webhook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook

[@@@deriving.end]

type kubernetes_mutating_webhook_configuration_v1 = {
  id : string prop option; [@option]
  metadata : metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_mutating_webhook_configuration_v1) -> ()

let yojson_of_kubernetes_mutating_webhook_configuration_v1 =
  (function
   | { id = v_id; metadata = v_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metadata) v_metadata
           in
           let bnd = "metadata", arg in
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
       `Assoc bnds
    : kubernetes_mutating_webhook_configuration_v1 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_mutating_webhook_configuration_v1

[@@@deriving.end]

let metadata ?annotations ?labels ?name () : metadata =
  { annotations; labels; name }

let kubernetes_mutating_webhook_configuration_v1 ?id ~metadata () :
    kubernetes_mutating_webhook_configuration_v1 =
  { id; metadata }

type t = {
  tf_name : string;
  id : string prop;
  webhook : webhook list prop;
}

let make ?id ~metadata __id =
  let __type = "kubernetes_mutating_webhook_configuration_v1" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       webhook = Prop.computed __type __id "webhook";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_mutating_webhook_configuration_v1
        (kubernetes_mutating_webhook_configuration_v1 ?id ~metadata
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
