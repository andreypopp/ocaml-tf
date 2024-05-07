(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type build_config__source__storage_source = {
  bucket : string prop;
  generation : float prop;
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build_config__source__storage_source) -> ()

let yojson_of_build_config__source__storage_source =
  (function
   | {
       bucket = v_bucket;
       generation = v_generation;
       object_ = v_object_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_generation in
         ("generation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : build_config__source__storage_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_config__source__storage_source

[@@@deriving.end]

type build_config__source__repo_source = {
  branch_name : string prop;
  commit_sha : string prop;
  dir : string prop;
  invert_regex : bool prop;
  project_id : string prop;
  repo_name : string prop;
  tag_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build_config__source__repo_source) -> ()

let yojson_of_build_config__source__repo_source =
  (function
   | {
       branch_name = v_branch_name;
       commit_sha = v_commit_sha;
       dir = v_dir;
       invert_regex = v_invert_regex;
       project_id = v_project_id;
       repo_name = v_repo_name;
       tag_name = v_tag_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag_name in
         ("tag_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo_name in
         ("repo_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_invert_regex in
         ("invert_regex", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dir in
         ("dir", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_commit_sha in
         ("commit_sha", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch_name in
         ("branch_name", arg) :: bnds
       in
       `Assoc bnds
    : build_config__source__repo_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_config__source__repo_source

[@@@deriving.end]

type build_config__source = {
  repo_source : build_config__source__repo_source list;
  storage_source : build_config__source__storage_source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build_config__source) -> ()

let yojson_of_build_config__source =
  (function
   | {
       repo_source = v_repo_source;
       storage_source = v_storage_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_build_config__source__storage_source
             v_storage_source
         in
         ("storage_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build_config__source__repo_source
             v_repo_source
         in
         ("repo_source", arg) :: bnds
       in
       `Assoc bnds
    : build_config__source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_config__source

[@@@deriving.end]

type build_config = {
  build : string prop;
  docker_repository : string prop;
  entry_point : string prop;
  environment_variables : (string * string prop) list;
  runtime : string prop;
  source : build_config__source list;
  worker_pool : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build_config) -> ()

let yojson_of_build_config =
  (function
   | {
       build = v_build;
       docker_repository = v_docker_repository;
       entry_point = v_entry_point;
       environment_variables = v_environment_variables;
       runtime = v_runtime;
       source = v_source;
       worker_pool = v_worker_pool;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_worker_pool in
         ("worker_pool", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build_config__source v_source
         in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_runtime in
         ("runtime", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_environment_variables
         in
         ("environment_variables", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entry_point in
         ("entry_point", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_docker_repository
         in
         ("docker_repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_build in
         ("build", arg) :: bnds
       in
       `Assoc bnds
    : build_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_config

[@@@deriving.end]

type event_trigger__event_filters = {
  attribute : string prop;
  operator : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_trigger__event_filters) -> ()

let yojson_of_event_trigger__event_filters =
  (function
   | {
       attribute = v_attribute;
       operator = v_operator;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_attribute in
         ("attribute", arg) :: bnds
       in
       `Assoc bnds
    : event_trigger__event_filters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_trigger__event_filters

[@@@deriving.end]

type event_trigger = {
  event_filters : event_trigger__event_filters list;
  event_type : string prop;
  pubsub_topic : string prop;
  retry_policy : string prop;
  service_account_email : string prop;
  trigger : string prop;
  trigger_region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_trigger) -> ()

let yojson_of_event_trigger =
  (function
   | {
       event_filters = v_event_filters;
       event_type = v_event_type;
       pubsub_topic = v_pubsub_topic;
       retry_policy = v_retry_policy;
       service_account_email = v_service_account_email;
       trigger = v_trigger;
       trigger_region = v_trigger_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trigger_region
         in
         ("trigger_region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_trigger in
         ("trigger", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account_email
         in
         ("service_account_email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_retry_policy in
         ("retry_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pubsub_topic in
         ("pubsub_topic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_type in
         ("event_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_event_trigger__event_filters
             v_event_filters
         in
         ("event_filters", arg) :: bnds
       in
       `Assoc bnds
    : event_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_trigger

[@@@deriving.end]

type service_config__secret_volumes__versions = {
  path : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_config__secret_volumes__versions) -> ()

let yojson_of_service_config__secret_volumes__versions =
  (function
   | { path = v_path; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : service_config__secret_volumes__versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_config__secret_volumes__versions

[@@@deriving.end]

type service_config__secret_volumes = {
  mount_path : string prop;
  project_id : string prop;
  secret : string prop;
  versions : service_config__secret_volumes__versions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_config__secret_volumes) -> ()

let yojson_of_service_config__secret_volumes =
  (function
   | {
       mount_path = v_mount_path;
       project_id = v_project_id;
       secret = v_secret;
       versions = v_versions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_service_config__secret_volumes__versions
             v_versions
         in
         ("versions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_path in
         ("mount_path", arg) :: bnds
       in
       `Assoc bnds
    : service_config__secret_volumes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_config__secret_volumes

[@@@deriving.end]

type service_config__secret_environment_variables = {
  key : string prop;
  project_id : string prop;
  secret : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_config__secret_environment_variables) -> ()

let yojson_of_service_config__secret_environment_variables =
  (function
   | {
       key = v_key;
       project_id = v_project_id;
       secret = v_secret;
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
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : service_config__secret_environment_variables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_config__secret_environment_variables

[@@@deriving.end]

type service_config = {
  all_traffic_on_latest_revision : bool prop;
  available_cpu : string prop;
  available_memory : string prop;
  environment_variables : (string * string prop) list;
  gcf_uri : string prop;
  ingress_settings : string prop;
  max_instance_count : float prop;
  max_instance_request_concurrency : float prop;
  min_instance_count : float prop;
  secret_environment_variables :
    service_config__secret_environment_variables list;
  secret_volumes : service_config__secret_volumes list;
  service : string prop;
  service_account_email : string prop;
  timeout_seconds : float prop;
  uri : string prop;
  vpc_connector : string prop;
  vpc_connector_egress_settings : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_config) -> ()

let yojson_of_service_config =
  (function
   | {
       all_traffic_on_latest_revision =
         v_all_traffic_on_latest_revision;
       available_cpu = v_available_cpu;
       available_memory = v_available_memory;
       environment_variables = v_environment_variables;
       gcf_uri = v_gcf_uri;
       ingress_settings = v_ingress_settings;
       max_instance_count = v_max_instance_count;
       max_instance_request_concurrency =
         v_max_instance_request_concurrency;
       min_instance_count = v_min_instance_count;
       secret_environment_variables = v_secret_environment_variables;
       secret_volumes = v_secret_volumes;
       service = v_service;
       service_account_email = v_service_account_email;
       timeout_seconds = v_timeout_seconds;
       uri = v_uri;
       vpc_connector = v_vpc_connector;
       vpc_connector_egress_settings =
         v_vpc_connector_egress_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_vpc_connector_egress_settings
         in
         ("vpc_connector_egress_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_connector in
         ("vpc_connector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_seconds
         in
         ("timeout_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account_email
         in
         ("service_account_email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_service_config__secret_volumes
             v_secret_volumes
         in
         ("secret_volumes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_service_config__secret_environment_variables
             v_secret_environment_variables
         in
         ("secret_environment_variables", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_min_instance_count
         in
         ("min_instance_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_instance_request_concurrency
         in
         ("max_instance_request_concurrency", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_instance_count
         in
         ("max_instance_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ingress_settings
         in
         ("ingress_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gcf_uri in
         ("gcf_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_environment_variables
         in
         ("environment_variables", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_available_memory
         in
         ("available_memory", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_available_cpu in
         ("available_cpu", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_all_traffic_on_latest_revision
         in
         ("all_traffic_on_latest_revision", arg) :: bnds
       in
       `Assoc bnds
    : service_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_config

[@@@deriving.end]

type google_cloudfunctions2_function = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloudfunctions2_function) -> ()

let yojson_of_google_cloudfunctions2_function =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : google_cloudfunctions2_function ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloudfunctions2_function

[@@@deriving.end]

let google_cloudfunctions2_function ?id ?project ~location ~name () :
    google_cloudfunctions2_function =
  { id; location; name; project }

type t = {
  tf_name : string;
  build_config : build_config list prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  environment : string prop;
  event_trigger : event_trigger list prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_config : service_config list prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  url : string prop;
}

let make ?id ?project ~location ~name __id =
  let __type = "google_cloudfunctions2_function" in
  let __attrs =
    ({
       tf_name = __id;
       build_config = Prop.computed __type __id "build_config";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       environment = Prop.computed __type __id "environment";
       event_trigger = Prop.computed __type __id "event_trigger";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_config = Prop.computed __type __id "service_config";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloudfunctions2_function
        (google_cloudfunctions2_function ?id ?project ~location ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~location ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
