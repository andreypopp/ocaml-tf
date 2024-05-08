(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type app_engine = {
  service : string prop option; [@option]
  url_mask : string prop option; [@option]
  version : string prop option; [@option]
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
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_url_mask with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url_mask", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : app_engine -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_app_engine

[@@@deriving.end]

type cloud_function = {
  function_ : string prop option; [@option] [@key "function"]
  url_mask : string prop option; [@option]
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
         match v_url_mask with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url_mask", arg in
             bnd :: bnds
       in
       let bnds =
         match v_function_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "function", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloud_function -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_function

[@@@deriving.end]

type cloud_run = {
  service : string prop option; [@option]
  tag : string prop option; [@option]
  url_mask : string prop option; [@option]
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
         match v_url_mask with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url_mask", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloud_run -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_run

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
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

type google_compute_region_network_endpoint_group = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  network : string prop option; [@option]
  network_endpoint_type : string prop option; [@option]
  project : string prop option; [@option]
  psc_target_service : string prop option; [@option]
  region : string prop;
  subnetwork : string prop option; [@option]
  app_engine : app_engine list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloud_function : cloud_function list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloud_run : cloud_run list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_region_network_endpoint_group) -> ()

let yojson_of_google_compute_region_network_endpoint_group =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       network = v_network;
       network_endpoint_type = v_network_endpoint_type;
       project = v_project;
       psc_target_service = v_psc_target_service;
       region = v_region;
       subnetwork = v_subnetwork;
       app_engine = v_app_engine;
       cloud_function = v_cloud_function;
       cloud_run = v_cloud_run;
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
         if Stdlib.( = ) [] v_cloud_run then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloud_run) v_cloud_run
           in
           let bnd = "cloud_run", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloud_function then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloud_function)
               v_cloud_function
           in
           let bnd = "cloud_function", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_app_engine then bnds
         else
           let arg =
             (yojson_of_list yojson_of_app_engine) v_app_engine
           in
           let bnd = "app_engine", arg in
           bnd :: bnds
       in
       let bnds =
         match v_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         match v_psc_target_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "psc_target_service", arg in
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
         match v_network_endpoint_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_endpoint_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_region_network_endpoint_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_network_endpoint_group

[@@@deriving.end]

let app_engine ?service ?url_mask ?version () : app_engine =
  { service; url_mask; version }

let cloud_function ?function_ ?url_mask () : cloud_function =
  { function_; url_mask }

let cloud_run ?service ?tag ?url_mask () : cloud_run =
  { service; tag; url_mask }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_region_network_endpoint_group ?description ?id
    ?network ?network_endpoint_type ?project ?psc_target_service
    ?subnetwork ?(app_engine = []) ?(cloud_function = [])
    ?(cloud_run = []) ?timeouts ~name ~region () :
    google_compute_region_network_endpoint_group =
  {
    description;
    id;
    name;
    network;
    network_endpoint_type;
    project;
    psc_target_service;
    region;
    subnetwork;
    app_engine;
    cloud_function;
    cloud_run;
    timeouts;
  }

type t = {
  tf_name : string;
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

let make ?description ?id ?network ?network_endpoint_type ?project
    ?psc_target_service ?subnetwork ?(app_engine = [])
    ?(cloud_function = []) ?(cloud_run = []) ?timeouts ~name ~region
    __id =
  let __type = "google_compute_region_network_endpoint_group" in
  let __attrs =
    ({
       tf_name = __id;
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
        (google_compute_region_network_endpoint_group ?description
           ?id ?network ?network_endpoint_type ?project
           ?psc_target_service ?subnetwork ~app_engine
           ~cloud_function ~cloud_run ?timeouts ~name ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?network
    ?network_endpoint_type ?project ?psc_target_service ?subnetwork
    ?(app_engine = []) ?(cloud_function = []) ?(cloud_run = [])
    ?timeouts ~name ~region __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?network ?network_endpoint_type ?project
      ?psc_target_service ?subnetwork ~app_engine ~cloud_function
      ~cloud_run ?timeouts ~name ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
