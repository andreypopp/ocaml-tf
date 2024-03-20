(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type app_engine_http_target__app_engine_routing = {
  instance : string prop option; [@option]
  service : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : app_engine_http_target__app_engine_routing) -> ()

let yojson_of_app_engine_http_target__app_engine_routing =
  (function
   | {
       instance = v_instance;
       service = v_service;
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
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : app_engine_http_target__app_engine_routing ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_app_engine_http_target__app_engine_routing

[@@@deriving.end]

type app_engine_http_target = {
  body : string prop option; [@option]
  headers : (string * string prop) list option; [@option]
  http_method : string prop option; [@option]
  relative_uri : string prop;
  app_engine_routing :
    app_engine_http_target__app_engine_routing list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : app_engine_http_target) -> ()

let yojson_of_app_engine_http_target =
  (function
   | {
       body = v_body;
       headers = v_headers;
       http_method = v_http_method;
       relative_uri = v_relative_uri;
       app_engine_routing = v_app_engine_routing;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_app_engine_http_target__app_engine_routing
             v_app_engine_routing
         in
         ("app_engine_routing", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_relative_uri in
         ("relative_uri", arg) :: bnds
       in
       let bnds =
         match v_http_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_headers with
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
             let bnd = "headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "body", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : app_engine_http_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_app_engine_http_target

[@@@deriving.end]

type http_target__oauth_token = {
  scope : string prop option; [@option]
  service_account_email : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_target__oauth_token) -> ()

let yojson_of_http_target__oauth_token =
  (function
   | {
       scope = v_scope;
       service_account_email = v_service_account_email;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account_email
         in
         ("service_account_email", arg) :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_target__oauth_token -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_target__oauth_token

[@@@deriving.end]

type http_target__oidc_token = {
  audience : string prop option; [@option]
  service_account_email : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_target__oidc_token) -> ()

let yojson_of_http_target__oidc_token =
  (function
   | {
       audience = v_audience;
       service_account_email = v_service_account_email;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account_email
         in
         ("service_account_email", arg) :: bnds
       in
       let bnds =
         match v_audience with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audience", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_target__oidc_token -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_target__oidc_token

[@@@deriving.end]

type http_target = {
  body : string prop option; [@option]
  headers : (string * string prop) list option; [@option]
  http_method : string prop option; [@option]
  uri : string prop;
  oauth_token : http_target__oauth_token list;
  oidc_token : http_target__oidc_token list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_target) -> ()

let yojson_of_http_target =
  (function
   | {
       body = v_body;
       headers = v_headers;
       http_method = v_http_method;
       uri = v_uri;
       oauth_token = v_oauth_token;
       oidc_token = v_oidc_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_http_target__oidc_token
             v_oidc_token
         in
         ("oidc_token", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_http_target__oauth_token
             v_oauth_token
         in
         ("oauth_token", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_http_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_headers with
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
             let bnd = "headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "body", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_target

[@@@deriving.end]

type pubsub_target = {
  attributes : (string * string prop) list option; [@option]
  data : string prop option; [@option]
  topic_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pubsub_target) -> ()

let yojson_of_pubsub_target =
  (function
   | {
       attributes = v_attributes;
       data = v_data;
       topic_name = v_topic_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic_name in
         ("topic_name", arg) :: bnds
       in
       let bnds =
         match v_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attributes with
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
             let bnd = "attributes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : pubsub_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pubsub_target

[@@@deriving.end]

type retry_config = {
  max_backoff_duration : string prop option; [@option]
  max_doublings : float prop option; [@option]
  max_retry_duration : string prop option; [@option]
  min_backoff_duration : string prop option; [@option]
  retry_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retry_config) -> ()

let yojson_of_retry_config =
  (function
   | {
       max_backoff_duration = v_max_backoff_duration;
       max_doublings = v_max_doublings;
       max_retry_duration = v_max_retry_duration;
       min_backoff_duration = v_min_backoff_duration;
       retry_count = v_retry_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_retry_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_backoff_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_backoff_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_retry_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_retry_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_doublings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_doublings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_backoff_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_backoff_duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : retry_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retry_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_cloud_scheduler_job = {
  attempt_deadline : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  paused : bool prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  schedule : string prop option; [@option]
  time_zone : string prop option; [@option]
  app_engine_http_target : app_engine_http_target list;
  http_target : http_target list;
  pubsub_target : pubsub_target list;
  retry_config : retry_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_scheduler_job) -> ()

let yojson_of_google_cloud_scheduler_job =
  (function
   | {
       attempt_deadline = v_attempt_deadline;
       description = v_description;
       id = v_id;
       name = v_name;
       paused = v_paused;
       project = v_project;
       region = v_region;
       schedule = v_schedule;
       time_zone = v_time_zone;
       app_engine_http_target = v_app_engine_http_target;
       http_target = v_http_target;
       pubsub_target = v_pubsub_target;
       retry_config = v_retry_config;
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
         let arg =
           yojson_of_list yojson_of_retry_config v_retry_config
         in
         ("retry_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_pubsub_target v_pubsub_target
         in
         ("pubsub_target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_http_target v_http_target
         in
         ("http_target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_app_engine_http_target
             v_app_engine_http_target
         in
         ("app_engine_http_target", arg) :: bnds
       in
       let bnds =
         match v_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule", arg in
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
         match v_paused with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "paused", arg in
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
       let bnds =
         match v_attempt_deadline with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "attempt_deadline", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloud_scheduler_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_scheduler_job

[@@@deriving.end]

let app_engine_http_target__app_engine_routing ?instance ?service
    ?version () : app_engine_http_target__app_engine_routing =
  { instance; service; version }

let app_engine_http_target ?body ?headers ?http_method ~relative_uri
    ~app_engine_routing () : app_engine_http_target =
  { body; headers; http_method; relative_uri; app_engine_routing }

let http_target__oauth_token ?scope ~service_account_email () :
    http_target__oauth_token =
  { scope; service_account_email }

let http_target__oidc_token ?audience ~service_account_email () :
    http_target__oidc_token =
  { audience; service_account_email }

let http_target ?body ?headers ?http_method ~uri ~oauth_token
    ~oidc_token () : http_target =
  { body; headers; http_method; uri; oauth_token; oidc_token }

let pubsub_target ?attributes ?data ~topic_name () : pubsub_target =
  { attributes; data; topic_name }

let retry_config ?max_backoff_duration ?max_doublings
    ?max_retry_duration ?min_backoff_duration ?retry_count () :
    retry_config =
  {
    max_backoff_duration;
    max_doublings;
    max_retry_duration;
    min_backoff_duration;
    retry_count;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloud_scheduler_job ?attempt_deadline ?description ?id
    ?paused ?project ?region ?schedule ?time_zone ?timeouts ~name
    ~app_engine_http_target ~http_target ~pubsub_target ~retry_config
    () : google_cloud_scheduler_job =
  {
    attempt_deadline;
    description;
    id;
    name;
    paused;
    project;
    region;
    schedule;
    time_zone;
    app_engine_http_target;
    http_target;
    pubsub_target;
    retry_config;
    timeouts;
  }

type t = {
  attempt_deadline : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  paused : bool prop;
  project : string prop;
  region : string prop;
  schedule : string prop;
  state : string prop;
  time_zone : string prop;
}

let make ?attempt_deadline ?description ?id ?paused ?project ?region
    ?schedule ?time_zone ?timeouts ~name ~app_engine_http_target
    ~http_target ~pubsub_target ~retry_config __id =
  let __type = "google_cloud_scheduler_job" in
  let __attrs =
    ({
       attempt_deadline =
         Prop.computed __type __id "attempt_deadline";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       paused = Prop.computed __type __id "paused";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       schedule = Prop.computed __type __id "schedule";
       state = Prop.computed __type __id "state";
       time_zone = Prop.computed __type __id "time_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_scheduler_job
        (google_cloud_scheduler_job ?attempt_deadline ?description
           ?id ?paused ?project ?region ?schedule ?time_zone
           ?timeouts ~name ~app_engine_http_target ~http_target
           ~pubsub_target ~retry_config ());
    attrs = __attrs;
  }

let register ?tf_module ?attempt_deadline ?description ?id ?paused
    ?project ?region ?schedule ?time_zone ?timeouts ~name
    ~app_engine_http_target ~http_target ~pubsub_target ~retry_config
    __id =
  let (r : _ Tf_core.resource) =
    make ?attempt_deadline ?description ?id ?paused ?project ?region
      ?schedule ?time_zone ?timeouts ~name ~app_engine_http_target
      ~http_target ~pubsub_target ~retry_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
