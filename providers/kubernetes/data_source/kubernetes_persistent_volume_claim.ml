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

type spec__selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__selector__match_expressions) -> ()

let yojson_of_spec__selector__match_expressions =
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
    : spec__selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__selector__match_expressions

[@@@deriving.end]

type spec__selector = {
  match_labels : (string * string prop) list option; [@option]
  match_expressions : spec__selector__match_expressions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__selector) -> ()

let yojson_of_spec__selector =
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
           yojson_of_list yojson_of_spec__selector__match_expressions
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
    : spec__selector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__selector

[@@@deriving.end]

type spec__resources = {
  limits : (string * string prop) list;
  requests : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__resources) -> ()

let yojson_of_spec__resources =
  (function
   | { limits = v_limits; requests = v_requests } ->
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
             v_requests
         in
         ("requests", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_limits
         in
         ("limits", arg) :: bnds
       in
       `Assoc bnds
    : spec__resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__resources

[@@@deriving.end]

type spec = {
  storage_class_name : string prop option; [@option]
  volume_mode : string prop option; [@option]
  volume_name : string prop option; [@option]
  selector : spec__selector list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       storage_class_name = v_storage_class_name;
       volume_mode = v_volume_mode;
       volume_name = v_volume_name;
       selector = v_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__selector v_selector
         in
         ("selector", arg) :: bnds
       in
       let bnds =
         match v_volume_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_volume_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_class_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_class_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type kubernetes_persistent_volume_claim = {
  id : string prop option; [@option]
  metadata : metadata list;
  spec : spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_persistent_volume_claim) -> ()

let yojson_of_kubernetes_persistent_volume_claim =
  (function
   | { id = v_id; metadata = v_metadata; spec = v_spec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec v_spec in
         ("spec", arg) :: bnds
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
    : kubernetes_persistent_volume_claim ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_persistent_volume_claim

[@@@deriving.end]

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__selector__match_expressions ?key ?operator ?values () :
    spec__selector__match_expressions =
  { key; operator; values }

let spec__selector ?match_labels ?(match_expressions = []) () :
    spec__selector =
  { match_labels; match_expressions }

let spec ?storage_class_name ?volume_mode ?volume_name
    ?(selector = []) () : spec =
  { storage_class_name; volume_mode; volume_name; selector }

let kubernetes_persistent_volume_claim ?id ?(spec = []) ~metadata ()
    : kubernetes_persistent_volume_claim =
  { id; metadata; spec }

type t = { tf_name : string; id : string prop }

let make ?id ?(spec = []) ~metadata __id =
  let __type = "kubernetes_persistent_volume_claim" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_persistent_volume_claim
        (kubernetes_persistent_volume_claim ?id ~spec ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(spec = []) ~metadata __id =
  let (r : _ Tf_core.resource) = make ?id ~spec ~metadata __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
