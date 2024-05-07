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

type spec__scale_target_ref = {
  api_version : string prop option; [@option]
  kind : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__scale_target_ref) -> ()

let yojson_of_spec__scale_target_ref =
  (function
   | { api_version = v_api_version; kind = v_kind; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         match v_api_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__scale_target_ref -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__scale_target_ref

[@@@deriving.end]

type spec = {
  max_replicas : float prop;
  min_replicas : float prop option; [@option]
  target_cpu_utilization_percentage : float prop option; [@option]
  scale_target_ref : spec__scale_target_ref list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       max_replicas = v_max_replicas;
       min_replicas = v_min_replicas;
       target_cpu_utilization_percentage =
         v_target_cpu_utilization_percentage;
       scale_target_ref = v_scale_target_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__scale_target_ref
             v_scale_target_ref
         in
         ("scale_target_ref", arg) :: bnds
       in
       let bnds =
         match v_target_cpu_utilization_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_cpu_utilization_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_replicas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_replicas", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_replicas in
         ("max_replicas", arg) :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type kubernetes_horizontal_pod_autoscaler_v1 = {
  id : string prop option; [@option]
  metadata : metadata list;
  spec : spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_horizontal_pod_autoscaler_v1) -> ()

let yojson_of_kubernetes_horizontal_pod_autoscaler_v1 =
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
    : kubernetes_horizontal_pod_autoscaler_v1 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_horizontal_pod_autoscaler_v1

[@@@deriving.end]

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__scale_target_ref ?api_version ~kind ~name () :
    spec__scale_target_ref =
  { api_version; kind; name }

let spec ?min_replicas ?target_cpu_utilization_percentage
    ~max_replicas ~scale_target_ref () : spec =
  {
    max_replicas;
    min_replicas;
    target_cpu_utilization_percentage;
    scale_target_ref;
  }

let kubernetes_horizontal_pod_autoscaler_v1 ?id ~metadata ~spec () :
    kubernetes_horizontal_pod_autoscaler_v1 =
  { id; metadata; spec }

type t = { tf_name : string; id : string prop }

let make ?id ~metadata ~spec __id =
  let __type = "kubernetes_horizontal_pod_autoscaler_v1" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_horizontal_pod_autoscaler_v1
        (kubernetes_horizontal_pod_autoscaler_v1 ?id ~metadata ~spec
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata ~spec __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata ~spec __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
