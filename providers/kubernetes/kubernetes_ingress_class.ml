(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : string prop Tf_core.assoc option; [@option]
  generate_name : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type spec__parameters = {
  api_group : string prop option; [@option]
  kind : string prop;
  name : string prop;
  namespace : string prop option; [@option]
  scope : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__parameters) -> ()

let yojson_of_spec__parameters =
  (function
   | {
       api_group = v_api_group;
       kind = v_kind;
       name = v_name;
       namespace = v_namespace;
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
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
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
         match v_api_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__parameters

[@@@deriving.end]

type spec = {
  controller : string prop option; [@option]
  parameters : spec__parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | { controller = v_controller; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__parameters) v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
       in
       let bnds =
         match v_controller with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "controller", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type kubernetes_ingress_class = {
  id : string prop option; [@option]
  metadata : metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spec : spec list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_ingress_class) -> ()

let yojson_of_kubernetes_ingress_class =
  (function
   | { id = v_id; metadata = v_metadata; spec = v_spec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_spec then bnds
         else
           let arg = (yojson_of_list yojson_of_spec) v_spec in
           let bnd = "spec", arg in
           bnd :: bnds
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
    : kubernetes_ingress_class -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_ingress_class

[@@@deriving.end]

let metadata ?annotations ?generate_name ?labels ?name () : metadata
    =
  { annotations; generate_name; labels; name }

let spec__parameters ?api_group ?namespace ?scope ~kind ~name () :
    spec__parameters =
  { api_group; kind; name; namespace; scope }

let spec ?controller ?(parameters = []) () : spec =
  { controller; parameters }

let kubernetes_ingress_class ?id ~metadata ~spec () :
    kubernetes_ingress_class =
  { id; metadata; spec }

type t = { tf_name : string; id : string prop }

let make ?id ~metadata ~spec __id =
  let __type = "kubernetes_ingress_class" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_ingress_class
        (kubernetes_ingress_class ?id ~metadata ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata ~spec __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata ~spec __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
