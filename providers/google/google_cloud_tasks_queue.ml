(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type app_engine_routing_override = {
  instance : string prop option; [@option]
  service : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : app_engine_routing_override) -> ()

let yojson_of_app_engine_routing_override =
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
    : app_engine_routing_override ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_app_engine_routing_override

[@@@deriving.end]

type rate_limits = {
  max_concurrent_dispatches : float prop option; [@option]
  max_dispatches_per_second : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rate_limits) -> ()

let yojson_of_rate_limits =
  (function
   | {
       max_concurrent_dispatches = v_max_concurrent_dispatches;
       max_dispatches_per_second = v_max_dispatches_per_second;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_dispatches_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_dispatches_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_concurrent_dispatches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrent_dispatches", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rate_limits -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rate_limits

[@@@deriving.end]

type retry_config = {
  max_attempts : float prop option; [@option]
  max_backoff : string prop option; [@option]
  max_doublings : float prop option; [@option]
  max_retry_duration : string prop option; [@option]
  min_backoff : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retry_config) -> ()

let yojson_of_retry_config =
  (function
   | {
       max_attempts = v_max_attempts;
       max_backoff = v_max_backoff;
       max_doublings = v_max_doublings;
       max_retry_duration = v_max_retry_duration;
       min_backoff = v_min_backoff;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_backoff with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_backoff", arg in
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
         match v_max_backoff with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_backoff", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_attempts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : retry_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retry_config

[@@@deriving.end]

type stackdriver_logging_config = { sampling_ratio : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : stackdriver_logging_config) -> ()

let yojson_of_stackdriver_logging_config =
  (function
   | { sampling_ratio = v_sampling_ratio } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_sampling_ratio in
         ("sampling_ratio", arg) :: bnds
       in
       `Assoc bnds
    : stackdriver_logging_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stackdriver_logging_config

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

type google_cloud_tasks_queue = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop option; [@option]
  project : string prop option; [@option]
  app_engine_routing_override : app_engine_routing_override list;
      [@default []] [@yojson_drop_default ( = )]
  rate_limits : rate_limits list;
      [@default []] [@yojson_drop_default ( = )]
  retry_config : retry_config list;
      [@default []] [@yojson_drop_default ( = )]
  stackdriver_logging_config : stackdriver_logging_config list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_tasks_queue) -> ()

let yojson_of_google_cloud_tasks_queue =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       app_engine_routing_override = v_app_engine_routing_override;
       rate_limits = v_rate_limits;
       retry_config = v_retry_config;
       stackdriver_logging_config = v_stackdriver_logging_config;
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
         if [] = v_stackdriver_logging_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_stackdriver_logging_config)
               v_stackdriver_logging_config
           in
           let bnd = "stackdriver_logging_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_retry_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_retry_config) v_retry_config
           in
           let bnd = "retry_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_rate_limits then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rate_limits) v_rate_limits
           in
           let bnd = "rate_limits", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_app_engine_routing_override then bnds
         else
           let arg =
             (yojson_of_list yojson_of_app_engine_routing_override)
               v_app_engine_routing_override
           in
           let bnd = "app_engine_routing_override", arg in
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
       `Assoc bnds
    : google_cloud_tasks_queue -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_tasks_queue

[@@@deriving.end]

let app_engine_routing_override ?instance ?service ?version () :
    app_engine_routing_override =
  { instance; service; version }

let rate_limits ?max_concurrent_dispatches ?max_dispatches_per_second
    () : rate_limits =
  { max_concurrent_dispatches; max_dispatches_per_second }

let retry_config ?max_attempts ?max_backoff ?max_doublings
    ?max_retry_duration ?min_backoff () : retry_config =
  {
    max_attempts;
    max_backoff;
    max_doublings;
    max_retry_duration;
    min_backoff;
  }

let stackdriver_logging_config ~sampling_ratio () :
    stackdriver_logging_config =
  { sampling_ratio }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloud_tasks_queue ?id ?name ?project
    ?(app_engine_routing_override = []) ?(rate_limits = [])
    ?(retry_config = []) ?(stackdriver_logging_config = []) ?timeouts
    ~location () : google_cloud_tasks_queue =
  {
    id;
    location;
    name;
    project;
    app_engine_routing_override;
    rate_limits;
    retry_config;
    stackdriver_logging_config;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

let make ?id ?name ?project ?(app_engine_routing_override = [])
    ?(rate_limits = []) ?(retry_config = [])
    ?(stackdriver_logging_config = []) ?timeouts ~location __id =
  let __type = "google_cloud_tasks_queue" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_tasks_queue
        (google_cloud_tasks_queue ?id ?name ?project
           ~app_engine_routing_override ~rate_limits ~retry_config
           ~stackdriver_logging_config ?timeouts ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?project
    ?(app_engine_routing_override = []) ?(rate_limits = [])
    ?(retry_config = []) ?(stackdriver_logging_config = []) ?timeouts
    ~location __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?project ~app_engine_routing_override ~rate_limits
      ~retry_config ~stackdriver_logging_config ?timeouts ~location
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
