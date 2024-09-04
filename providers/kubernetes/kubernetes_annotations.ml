(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | { name = v_name; namespace = v_namespace } ->
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type kubernetes_annotations = {
  annotations : string prop Tf_core.assoc option; [@option]
  api_version : string prop;
  field_manager : string prop option; [@option]
  force : bool prop option; [@option]
  id : string prop option; [@option]
  kind : string prop;
  template_annotations : string prop Tf_core.assoc option; [@option]
  metadata : metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_annotations) -> ()

let yojson_of_kubernetes_annotations =
  (function
   | {
       annotations = v_annotations;
       api_version = v_api_version;
       field_manager = v_field_manager;
       force = v_force;
       id = v_id;
       kind = v_kind;
       template_annotations = v_template_annotations;
       metadata = v_metadata;
     } ->
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
         match v_template_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "template_annotations", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
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
         match v_force with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force", arg in
             bnd :: bnds
       in
       let bnds =
         match v_field_manager with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_manager", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_version in
         ("api_version", arg) :: bnds
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
    : kubernetes_annotations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_annotations

[@@@deriving.end]

let metadata ?namespace ~name () : metadata = { name; namespace }

let kubernetes_annotations ?annotations ?field_manager ?force ?id
    ?template_annotations ~api_version ~kind ~metadata () :
    kubernetes_annotations =
  {
    annotations;
    api_version;
    field_manager;
    force;
    id;
    kind;
    template_annotations;
    metadata;
  }

type t = {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  api_version : string prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
  kind : string prop;
  template_annotations : string Tf_core.assoc prop;
}

let make ?annotations ?field_manager ?force ?id ?template_annotations
    ~api_version ~kind ~metadata __id =
  let __type = "kubernetes_annotations" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       api_version = Prop.computed __type __id "api_version";
       field_manager = Prop.computed __type __id "field_manager";
       force = Prop.computed __type __id "force";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       template_annotations =
         Prop.computed __type __id "template_annotations";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_annotations
        (kubernetes_annotations ?annotations ?field_manager ?force
           ?id ?template_annotations ~api_version ~kind ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?field_manager ?force ?id
    ?template_annotations ~api_version ~kind ~metadata __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?field_manager ?force ?id ?template_annotations
      ~api_version ~kind ~metadata __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
