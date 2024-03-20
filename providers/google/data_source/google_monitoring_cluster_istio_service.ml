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

type google_monitoring_cluster_istio_service = {
  cluster_name : string prop;
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  service_name : string prop;
  service_namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_cluster_istio_service) -> ()

let yojson_of_google_monitoring_cluster_istio_service =
  (function
   | {
       cluster_name = v_cluster_name;
       id = v_id;
       location = v_location;
       project = v_project;
       service_name = v_service_name;
       service_namespace = v_service_namespace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_namespace
         in
         ("service_namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : google_monitoring_cluster_istio_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_cluster_istio_service

[@@@deriving.end]

let google_monitoring_cluster_istio_service ?id ?project
    ~cluster_name ~location ~service_name ~service_namespace () :
    google_monitoring_cluster_istio_service =
  {
    cluster_name;
    id;
    location;
    project;
    service_name;
    service_namespace;
  }

type t = {
  cluster_name : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
  service_name : string prop;
  service_namespace : string prop;
  telemetry : telemetry list prop;
  user_labels : (string * string) list prop;
}

let make ?id ?project ~cluster_name ~location ~service_name
    ~service_namespace __id =
  let __type = "google_monitoring_cluster_istio_service" in
  let __attrs =
    ({
       cluster_name = Prop.computed __type __id "cluster_name";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_id = Prop.computed __type __id "service_id";
       service_name = Prop.computed __type __id "service_name";
       service_namespace =
         Prop.computed __type __id "service_namespace";
       telemetry = Prop.computed __type __id "telemetry";
       user_labels = Prop.computed __type __id "user_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_cluster_istio_service
        (google_monitoring_cluster_istio_service ?id ?project
           ~cluster_name ~location ~service_name ~service_namespace
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~cluster_name ~location
    ~service_name ~service_namespace __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~cluster_name ~location ~service_name
      ~service_namespace __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
