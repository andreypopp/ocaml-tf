(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type allowed_topologies__match_label_expressions = {
  key : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : allowed_topologies__match_label_expressions) -> ()

let yojson_of_allowed_topologies__match_label_expressions =
  (function
   | { key = v_key; values = v_values } ->
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
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : allowed_topologies__match_label_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_allowed_topologies__match_label_expressions

[@@@deriving.end]

type allowed_topologies = {
  match_label_expressions :
    allowed_topologies__match_label_expressions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : allowed_topologies) -> ()

let yojson_of_allowed_topologies =
  (function
   | { match_label_expressions = v_match_label_expressions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_allowed_topologies__match_label_expressions
             v_match_label_expressions
         in
         ("match_label_expressions", arg) :: bnds
       in
       `Assoc bnds
    : allowed_topologies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_allowed_topologies

[@@@deriving.end]

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

type kubernetes_storage_class_v1 = {
  allow_volume_expansion : bool prop option; [@option]
  id : string prop option; [@option]
  mount_options : string prop list option; [@option]
  parameters : (string * string prop) list option; [@option]
  reclaim_policy : string prop option; [@option]
  volume_binding_mode : string prop option; [@option]
  allowed_topologies : allowed_topologies list;
  metadata : metadata list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_storage_class_v1) -> ()

let yojson_of_kubernetes_storage_class_v1 =
  (function
   | {
       allow_volume_expansion = v_allow_volume_expansion;
       id = v_id;
       mount_options = v_mount_options;
       parameters = v_parameters;
       reclaim_policy = v_reclaim_policy;
       volume_binding_mode = v_volume_binding_mode;
       allowed_topologies = v_allowed_topologies;
       metadata = v_metadata;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_metadata v_metadata in
         ("metadata", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_allowed_topologies
             v_allowed_topologies
         in
         ("allowed_topologies", arg) :: bnds
       in
       let bnds =
         match v_volume_binding_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_binding_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reclaim_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reclaim_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mount_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "mount_options", arg in
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
         match v_allow_volume_expansion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_volume_expansion", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kubernetes_storage_class_v1 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_storage_class_v1

[@@@deriving.end]

let allowed_topologies__match_label_expressions ?key ?values () :
    allowed_topologies__match_label_expressions =
  { key; values }

let allowed_topologies ~match_label_expressions () :
    allowed_topologies =
  { match_label_expressions }

let metadata ?annotations ?labels ?name () : metadata =
  { annotations; labels; name }

let kubernetes_storage_class_v1 ?allow_volume_expansion ?id
    ?mount_options ?parameters ?reclaim_policy ?volume_binding_mode
    ~allowed_topologies ~metadata () : kubernetes_storage_class_v1 =
  {
    allow_volume_expansion;
    id;
    mount_options;
    parameters;
    reclaim_policy;
    volume_binding_mode;
    allowed_topologies;
    metadata;
  }

type t = {
  allow_volume_expansion : bool prop;
  id : string prop;
  mount_options : string list prop;
  parameters : (string * string) list prop;
  reclaim_policy : string prop;
  storage_provisioner : string prop;
  volume_binding_mode : string prop;
}

let make ?allow_volume_expansion ?id ?mount_options ?parameters
    ?reclaim_policy ?volume_binding_mode ~allowed_topologies
    ~metadata __id =
  let __type = "kubernetes_storage_class_v1" in
  let __attrs =
    ({
       allow_volume_expansion =
         Prop.computed __type __id "allow_volume_expansion";
       id = Prop.computed __type __id "id";
       mount_options = Prop.computed __type __id "mount_options";
       parameters = Prop.computed __type __id "parameters";
       reclaim_policy = Prop.computed __type __id "reclaim_policy";
       storage_provisioner =
         Prop.computed __type __id "storage_provisioner";
       volume_binding_mode =
         Prop.computed __type __id "volume_binding_mode";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_storage_class_v1
        (kubernetes_storage_class_v1 ?allow_volume_expansion ?id
           ?mount_options ?parameters ?reclaim_policy
           ?volume_binding_mode ~allowed_topologies ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_volume_expansion ?id ?mount_options
    ?parameters ?reclaim_policy ?volume_binding_mode
    ~allowed_topologies ~metadata __id =
  let (r : _ Tf_core.resource) =
    make ?allow_volume_expansion ?id ?mount_options ?parameters
      ?reclaim_policy ?volume_binding_mode ~allowed_topologies
      ~metadata __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
