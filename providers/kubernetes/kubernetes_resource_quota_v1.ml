(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
  generate_name : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
  namespace : string prop option; [@option]
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
       namespace = v_namespace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
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

type spec__scope_selector__match_expression = {
  operator : string prop;
  scope_name : string prop;
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__scope_selector__match_expression) -> ()

let yojson_of_spec__scope_selector__match_expression =
  (function
   | {
       operator = v_operator;
       scope_name = v_scope_name;
       values = v_values;
     } ->
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
         let arg = yojson_of_prop yojson_of_string v_scope_name in
         ("scope_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : spec__scope_selector__match_expression ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__scope_selector__match_expression

[@@@deriving.end]

type spec__scope_selector = {
  match_expression : spec__scope_selector__match_expression list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__scope_selector) -> ()

let yojson_of_spec__scope_selector =
  (function
   | { match_expression = v_match_expression } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_match_expression then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__scope_selector__match_expression)
               v_match_expression
           in
           let bnd = "match_expression", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__scope_selector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__scope_selector

[@@@deriving.end]

type spec = {
  hard : (string * string prop) list option; [@option]
  scopes : string prop list option; [@option]
  scope_selector : spec__scope_selector list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       hard = v_hard;
       scopes = v_scopes;
       scope_selector = v_scope_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_scope_selector then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__scope_selector)
               v_scope_selector
           in
           let bnd = "scope_selector", arg in
           bnd :: bnds
       in
       let bnds =
         match v_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hard with
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
             let bnd = "hard", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type kubernetes_resource_quota_v1 = {
  id : string prop option; [@option]
  metadata : metadata list;
      [@default []] [@yojson_drop_default ( = )]
  spec : spec list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_resource_quota_v1) -> ()

let yojson_of_kubernetes_resource_quota_v1 =
  (function
   | {
       id = v_id;
       metadata = v_metadata;
       spec = v_spec;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_spec then bnds
         else
           let arg = (yojson_of_list yojson_of_spec) v_spec in
           let bnd = "spec", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_metadata then bnds
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
    : kubernetes_resource_quota_v1 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_resource_quota_v1

[@@@deriving.end]

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__scope_selector__match_expression ?values ~operator
    ~scope_name () : spec__scope_selector__match_expression =
  { operator; scope_name; values }

let spec__scope_selector ?(match_expression = []) () :
    spec__scope_selector =
  { match_expression }

let spec ?hard ?scopes ?(scope_selector = []) () : spec =
  { hard; scopes; scope_selector }

let timeouts ?create ?update () : timeouts = { create; update }

let kubernetes_resource_quota_v1 ?id ?(spec = []) ?timeouts ~metadata
    () : kubernetes_resource_quota_v1 =
  { id; metadata; spec; timeouts }

type t = { tf_name : string; id : string prop }

let make ?id ?(spec = []) ?timeouts ~metadata __id =
  let __type = "kubernetes_resource_quota_v1" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_resource_quota_v1
        (kubernetes_resource_quota_v1 ?id ~spec ?timeouts ~metadata
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(spec = []) ?timeouts ~metadata __id =
  let (r : _ Tf_core.resource) =
    make ?id ~spec ?timeouts ~metadata __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
