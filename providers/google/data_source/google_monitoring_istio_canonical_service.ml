(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type telemetry = { resource_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : telemetry) -> ()

let yojson_of_telemetry =
  (function
   | { resource_name = v_resource_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_name in
         ("resource_name", arg) :: bnds
       in
       `Assoc bnds
    : telemetry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_telemetry

[@@@deriving.end]

type google_monitoring_istio_canonical_service = {
  canonical_service : string prop;
  canonical_service_namespace : string prop;
  id : string prop option; [@option]
  mesh_uid : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_istio_canonical_service) -> ()

let yojson_of_google_monitoring_istio_canonical_service =
  (function
   | {
       canonical_service = v_canonical_service;
       canonical_service_namespace = v_canonical_service_namespace;
       id = v_id;
       mesh_uid = v_mesh_uid;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mesh_uid in
         ("mesh_uid", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_canonical_service_namespace
         in
         ("canonical_service_namespace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_canonical_service
         in
         ("canonical_service", arg) :: bnds
       in
       `Assoc bnds
    : google_monitoring_istio_canonical_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_istio_canonical_service

[@@@deriving.end]

let google_monitoring_istio_canonical_service ?id ?project
    ~canonical_service ~canonical_service_namespace ~mesh_uid () :
    google_monitoring_istio_canonical_service =
  {
    canonical_service;
    canonical_service_namespace;
    id;
    mesh_uid;
    project;
  }

type t = {
  tf_name : string;
  canonical_service : string prop;
  canonical_service_namespace : string prop;
  display_name : string prop;
  id : string prop;
  mesh_uid : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
  telemetry : telemetry list prop;
  user_labels : string Tf_core.assoc prop;
}

let make ?id ?project ~canonical_service ~canonical_service_namespace
    ~mesh_uid __id =
  let __type = "google_monitoring_istio_canonical_service" in
  let __attrs =
    ({
       tf_name = __id;
       canonical_service =
         Prop.computed __type __id "canonical_service";
       canonical_service_namespace =
         Prop.computed __type __id "canonical_service_namespace";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       mesh_uid = Prop.computed __type __id "mesh_uid";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_id = Prop.computed __type __id "service_id";
       telemetry = Prop.computed __type __id "telemetry";
       user_labels = Prop.computed __type __id "user_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_istio_canonical_service
        (google_monitoring_istio_canonical_service ?id ?project
           ~canonical_service ~canonical_service_namespace ~mesh_uid
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~canonical_service
    ~canonical_service_namespace ~mesh_uid __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~canonical_service ~canonical_service_namespace
      ~mesh_uid __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
