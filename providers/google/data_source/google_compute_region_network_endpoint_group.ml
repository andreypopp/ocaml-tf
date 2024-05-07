(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type app_engine = {
  service : string prop;
  url_mask : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : app_engine) -> ()

let yojson_of_app_engine =
  (function
   | {
       service = v_service;
       url_mask = v_url_mask;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url_mask in
         ("url_mask", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       `Assoc bnds
    : app_engine -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_app_engine

[@@@deriving.end]

type cloud_function = {
  function_ : string prop; [@key "function"]
  url_mask : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloud_function) -> ()

let yojson_of_cloud_function =
  (function
   | { function_ = v_function_; url_mask = v_url_mask } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url_mask in
         ("url_mask", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_ in
         ("function", arg) :: bnds
       in
       `Assoc bnds
    : cloud_function -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_function

[@@@deriving.end]

type cloud_run = {
  service : string prop;
  tag : string prop;
  url_mask : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloud_run) -> ()

let yojson_of_cloud_run =
  (function
   | { service = v_service; tag = v_tag; url_mask = v_url_mask } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url_mask in
         ("url_mask", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag in
         ("tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       `Assoc bnds
    : cloud_run -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_run

[@@@deriving.end]

type google_compute_region_network_endpoint_group = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  self_link : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_region_network_endpoint_group) -> ()

let yojson_of_google_compute_region_network_endpoint_group =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
       self_link = v_self_link;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_self_link with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "self_link", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
    : google_compute_region_network_endpoint_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_network_endpoint_group

[@@@deriving.end]

let google_compute_region_network_endpoint_group ?id ?name ?project
    ?region ?self_link () :
    google_compute_region_network_endpoint_group =
  { id; name; project; region; self_link }

type t = {
  tf_name : string;
  app_engine : app_engine list prop;
  cloud_function : cloud_function list prop;
  cloud_run : cloud_run list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  network_endpoint_type : string prop;
  project : string prop;
  psc_target_service : string prop;
  region : string prop;
  self_link : string prop;
  subnetwork : string prop;
}

let make ?id ?name ?project ?region ?self_link __id =
  let __type = "google_compute_region_network_endpoint_group" in
  let __attrs =
    ({
       tf_name = __id;
       app_engine = Prop.computed __type __id "app_engine";
       cloud_function = Prop.computed __type __id "cloud_function";
       cloud_run = Prop.computed __type __id "cloud_run";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       network_endpoint_type =
         Prop.computed __type __id "network_endpoint_type";
       project = Prop.computed __type __id "project";
       psc_target_service =
         Prop.computed __type __id "psc_target_service";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       subnetwork = Prop.computed __type __id "subnetwork";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_network_endpoint_group
        (google_compute_region_network_endpoint_group ?id ?name
           ?project ?region ?self_link ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?project ?region ?self_link __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?project ?region ?self_link __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
