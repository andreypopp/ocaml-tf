(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type feature_settings = { split_health_checks : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : feature_settings) -> ()

let yojson_of_feature_settings =
  (function
   | { split_health_checks = v_split_health_checks } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_split_health_checks
         in
         ("split_health_checks", arg) :: bnds
       in
       `Assoc bnds
    : feature_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_feature_settings

[@@@deriving.end]

type iap = {
  enabled : bool prop option; [@option]
  oauth2_client_id : string prop;
  oauth2_client_secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : iap) -> ()

let yojson_of_iap =
  (function
   | {
       enabled = v_enabled;
       oauth2_client_id = v_oauth2_client_id;
       oauth2_client_secret = v_oauth2_client_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_oauth2_client_secret
         in
         ("oauth2_client_secret", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_oauth2_client_id
         in
         ("oauth2_client_id", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : iap -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_iap

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

type url_dispatch_rule = {
  domain : string prop;
  path : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : url_dispatch_rule) -> ()

let yojson_of_url_dispatch_rule =
  (function
   | { domain = v_domain; path = v_path; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : url_dispatch_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_url_dispatch_rule

[@@@deriving.end]

type google_app_engine_application = {
  auth_domain : string prop option; [@option]
  database_type : string prop option; [@option]
  id : string prop option; [@option]
  location_id : string prop;
  project : string prop option; [@option]
  serving_status : string prop option; [@option]
  feature_settings : feature_settings list;
  iap : iap list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_app_engine_application) -> ()

let yojson_of_google_app_engine_application =
  (function
   | {
       auth_domain = v_auth_domain;
       database_type = v_database_type;
       id = v_id;
       location_id = v_location_id;
       project = v_project;
       serving_status = v_serving_status;
       feature_settings = v_feature_settings;
       iap = v_iap;
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
         let arg = yojson_of_list yojson_of_iap v_iap in
         ("iap", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_feature_settings
             v_feature_settings
         in
         ("feature_settings", arg) :: bnds
       in
       let bnds =
         match v_serving_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "serving_status", arg in
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
         let arg = yojson_of_prop yojson_of_string v_location_id in
         ("location_id", arg) :: bnds
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
         match v_database_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_domain", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_app_engine_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_app_engine_application

[@@@deriving.end]

let feature_settings ~split_health_checks () : feature_settings =
  { split_health_checks }

let iap ?enabled ~oauth2_client_id ~oauth2_client_secret () : iap =
  { enabled; oauth2_client_id; oauth2_client_secret }

let timeouts ?create ?update () : timeouts = { create; update }

let google_app_engine_application ?auth_domain ?database_type ?id
    ?project ?serving_status ?(feature_settings = []) ?(iap = [])
    ?timeouts ~location_id () : google_app_engine_application =
  {
    auth_domain;
    database_type;
    id;
    location_id;
    project;
    serving_status;
    feature_settings;
    iap;
    timeouts;
  }

type t = {
  tf_name : string;
  app_id : string prop;
  auth_domain : string prop;
  code_bucket : string prop;
  database_type : string prop;
  default_bucket : string prop;
  default_hostname : string prop;
  gcr_domain : string prop;
  id : string prop;
  location_id : string prop;
  name : string prop;
  project : string prop;
  serving_status : string prop;
  url_dispatch_rule : url_dispatch_rule list prop;
}

let make ?auth_domain ?database_type ?id ?project ?serving_status
    ?(feature_settings = []) ?(iap = []) ?timeouts ~location_id __id
    =
  let __type = "google_app_engine_application" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       auth_domain = Prop.computed __type __id "auth_domain";
       code_bucket = Prop.computed __type __id "code_bucket";
       database_type = Prop.computed __type __id "database_type";
       default_bucket = Prop.computed __type __id "default_bucket";
       default_hostname =
         Prop.computed __type __id "default_hostname";
       gcr_domain = Prop.computed __type __id "gcr_domain";
       id = Prop.computed __type __id "id";
       location_id = Prop.computed __type __id "location_id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       serving_status = Prop.computed __type __id "serving_status";
       url_dispatch_rule =
         Prop.computed __type __id "url_dispatch_rule";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_app_engine_application
        (google_app_engine_application ?auth_domain ?database_type
           ?id ?project ?serving_status ~feature_settings ~iap
           ?timeouts ~location_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auth_domain ?database_type ?id ?project
    ?serving_status ?(feature_settings = []) ?(iap = []) ?timeouts
    ~location_id __id =
  let (r : _ Tf_core.resource) =
    make ?auth_domain ?database_type ?id ?project ?serving_status
      ~feature_settings ~iap ?timeouts ~location_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
