(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
  generate_name : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       annotations = v_annotations;
       generate_name = v_generate_name;
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
         match v_generate_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "generate_name", arg in
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

type webhook__client_config__service = {
  name : string prop;
  namespace : string prop;
  path : string prop option; [@option]
  port : float prop option; [@option]
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
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
  ca_bundle : string prop option; [@option]
  url : string prop option; [@option]
  service : webhook__client_config__service list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook__client_config) -> ()

let yojson_of_webhook__client_config =
  (function
   | { ca_bundle = v_ca_bundle; url = v_url; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_webhook__client_config__service
             v_service
         in
         ("service", arg) :: bnds
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ca_bundle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ca_bundle", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : webhook__client_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook__client_config

[@@@deriving.end]

type webhook__namespace_selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
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
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : webhook__namespace_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook__namespace_selector__match_expressions

[@@@deriving.end]

type webhook__namespace_selector = {
  match_labels : (string * string prop) list option; [@option]
  match_expressions :
    webhook__namespace_selector__match_expressions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook__namespace_selector) -> ()

let yojson_of_webhook__namespace_selector =
  (function
   | {
       match_labels = v_match_labels;
       match_expressions = v_match_expressions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_webhook__namespace_selector__match_expressions
             v_match_expressions
         in
         ("match_expressions", arg) :: bnds
       in
       let bnds =
         match v_match_labels with
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
             let bnd = "match_labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : webhook__namespace_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook__namespace_selector

[@@@deriving.end]

type webhook__object_selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
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
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : webhook__object_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook__object_selector__match_expressions

[@@@deriving.end]

type webhook__object_selector = {
  match_labels : (string * string prop) list option; [@option]
  match_expressions :
    webhook__object_selector__match_expressions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook__object_selector) -> ()

let yojson_of_webhook__object_selector =
  (function
   | {
       match_labels = v_match_labels;
       match_expressions = v_match_expressions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_webhook__object_selector__match_expressions
             v_match_expressions
         in
         ("match_expressions", arg) :: bnds
       in
       let bnds =
         match v_match_labels with
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
             let bnd = "match_labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : webhook__object_selector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook__object_selector

[@@@deriving.end]

type webhook__rule = {
  api_groups : string prop list;
  api_versions : string prop list;
  operations : string prop list;
  resources : string prop list;
  scope : string prop option; [@option]
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
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_resources
         in
         ("resources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_operations
         in
         ("operations", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_api_versions
         in
         ("api_versions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_api_groups
         in
         ("api_groups", arg) :: bnds
       in
       `Assoc bnds
    : webhook__rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook__rule

[@@@deriving.end]

type webhook = {
  admission_review_versions : string prop list option; [@option]
  failure_policy : string prop option; [@option]
  match_policy : string prop option; [@option]
  name : string prop;
  reinvocation_policy : string prop option; [@option]
  side_effects : string prop option; [@option]
  timeout_seconds : float prop option; [@option]
  client_config : webhook__client_config list;
  namespace_selector : webhook__namespace_selector list;
  object_selector : webhook__object_selector list;
  rule : webhook__rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook) -> ()

let yojson_of_webhook =
  (function
   | {
       admission_review_versions = v_admission_review_versions;
       failure_policy = v_failure_policy;
       match_policy = v_match_policy;
       name = v_name;
       reinvocation_policy = v_reinvocation_policy;
       side_effects = v_side_effects;
       timeout_seconds = v_timeout_seconds;
       client_config = v_client_config;
       namespace_selector = v_namespace_selector;
       object_selector = v_object_selector;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_webhook__rule v_rule in
         ("rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_webhook__object_selector
             v_object_selector
         in
         ("object_selector", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_webhook__namespace_selector
             v_namespace_selector
         in
         ("namespace_selector", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_webhook__client_config
             v_client_config
         in
         ("client_config", arg) :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_side_effects with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "side_effects", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reinvocation_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reinvocation_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_match_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "match_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "failure_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admission_review_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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
  webhook : webhook list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_mutating_webhook_configuration_v1) -> ()

let yojson_of_kubernetes_mutating_webhook_configuration_v1 =
  (function
   | { id = v_id; metadata = v_metadata; webhook = v_webhook } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_webhook v_webhook in
         ("webhook", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_metadata v_metadata in
         ("metadata", arg) :: bnds
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

let metadata ?annotations ?generate_name ?labels ?name () : metadata
    =
  { annotations; generate_name; labels; name }

let webhook__client_config__service ?path ?port ~name ~namespace () :
    webhook__client_config__service =
  { name; namespace; path; port }

let webhook__client_config ?ca_bundle ?url ~service () :
    webhook__client_config =
  { ca_bundle; url; service }

let webhook__namespace_selector__match_expressions ?key ?operator
    ?values () : webhook__namespace_selector__match_expressions =
  { key; operator; values }

let webhook__namespace_selector ?match_labels ~match_expressions () :
    webhook__namespace_selector =
  { match_labels; match_expressions }

let webhook__object_selector__match_expressions ?key ?operator
    ?values () : webhook__object_selector__match_expressions =
  { key; operator; values }

let webhook__object_selector ?match_labels ~match_expressions () :
    webhook__object_selector =
  { match_labels; match_expressions }

let webhook__rule ?scope ~api_groups ~api_versions ~operations
    ~resources () : webhook__rule =
  { api_groups; api_versions; operations; resources; scope }

let webhook ?admission_review_versions ?failure_policy ?match_policy
    ?reinvocation_policy ?side_effects ?timeout_seconds ~name
    ~client_config ~namespace_selector ~object_selector ~rule () :
    webhook =
  {
    admission_review_versions;
    failure_policy;
    match_policy;
    name;
    reinvocation_policy;
    side_effects;
    timeout_seconds;
    client_config;
    namespace_selector;
    object_selector;
    rule;
  }

let kubernetes_mutating_webhook_configuration_v1 ?id ~metadata
    ~webhook () : kubernetes_mutating_webhook_configuration_v1 =
  { id; metadata; webhook }

type t = { id : string prop }

let make ?id ~metadata ~webhook __id =
  let __type = "kubernetes_mutating_webhook_configuration_v1" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_mutating_webhook_configuration_v1
        (kubernetes_mutating_webhook_configuration_v1 ?id ~metadata
           ~webhook ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata ~webhook __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata ~webhook __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
