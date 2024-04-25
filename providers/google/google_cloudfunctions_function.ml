(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_trigger__failure_policy = { retry : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : event_trigger__failure_policy) -> ()

let yojson_of_event_trigger__failure_policy =
  (function
   | { retry = v_retry } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_retry in
         ("retry", arg) :: bnds
       in
       `Assoc bnds
    : event_trigger__failure_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_trigger__failure_policy

[@@@deriving.end]

type event_trigger = {
  event_type : string prop;
  resource : string prop;
  failure_policy : event_trigger__failure_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_trigger) -> ()

let yojson_of_event_trigger =
  (function
   | {
       event_type = v_event_type;
       resource = v_resource;
       failure_policy = v_failure_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_event_trigger__failure_policy
             v_failure_policy
         in
         ("failure_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_type in
         ("event_type", arg) :: bnds
       in
       `Assoc bnds
    : event_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_trigger

[@@@deriving.end]

type secret_environment_variables = {
  key : string prop;
  project_id : string prop option; [@option]
  secret : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret_environment_variables) -> ()

let yojson_of_secret_environment_variables =
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
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : secret_environment_variables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret_environment_variables

[@@@deriving.end]

type secret_volumes__versions = {
  path : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret_volumes__versions) -> ()

let yojson_of_secret_volumes__versions =
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
    : secret_volumes__versions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret_volumes__versions

[@@@deriving.end]

type secret_volumes = {
  mount_path : string prop;
  project_id : string prop option; [@option]
  secret : string prop;
  versions : secret_volumes__versions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret_volumes) -> ()

let yojson_of_secret_volumes =
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
           yojson_of_list yojson_of_secret_volumes__versions
             v_versions
         in
         ("versions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_path in
         ("mount_path", arg) :: bnds
       in
       `Assoc bnds
    : secret_volumes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret_volumes

[@@@deriving.end]

type source_repository = { url : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : source_repository) -> ()

let yojson_of_source_repository =
  (function
   | { url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       `Assoc bnds
    : source_repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_repository

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type google_cloudfunctions_function = {
  available_memory_mb : float prop option; [@option]
  build_environment_variables : (string * string prop) list option;
      [@option]
  build_worker_pool : string prop option; [@option]
  description : string prop option; [@option]
  docker_registry : string prop option; [@option]
  docker_repository : string prop option; [@option]
  entry_point : string prop option; [@option]
  environment_variables : (string * string prop) list option;
      [@option]
  https_trigger_security_level : string prop option; [@option]
  https_trigger_url : string prop option; [@option]
  id : string prop option; [@option]
  ingress_settings : string prop option; [@option]
  kms_key_name : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  max_instances : float prop option; [@option]
  min_instances : float prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  runtime : string prop;
  service_account_email : string prop option; [@option]
  source_archive_bucket : string prop option; [@option]
  source_archive_object : string prop option; [@option]
  timeout : float prop option; [@option]
  trigger_http : bool prop option; [@option]
  vpc_connector : string prop option; [@option]
  vpc_connector_egress_settings : string prop option; [@option]
  event_trigger : event_trigger list;
  secret_environment_variables : secret_environment_variables list;
  secret_volumes : secret_volumes list;
  source_repository : source_repository list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloudfunctions_function) -> ()

let yojson_of_google_cloudfunctions_function =
  (function
   | {
       available_memory_mb = v_available_memory_mb;
       build_environment_variables = v_build_environment_variables;
       build_worker_pool = v_build_worker_pool;
       description = v_description;
       docker_registry = v_docker_registry;
       docker_repository = v_docker_repository;
       entry_point = v_entry_point;
       environment_variables = v_environment_variables;
       https_trigger_security_level = v_https_trigger_security_level;
       https_trigger_url = v_https_trigger_url;
       id = v_id;
       ingress_settings = v_ingress_settings;
       kms_key_name = v_kms_key_name;
       labels = v_labels;
       max_instances = v_max_instances;
       min_instances = v_min_instances;
       name = v_name;
       project = v_project;
       region = v_region;
       runtime = v_runtime;
       service_account_email = v_service_account_email;
       source_archive_bucket = v_source_archive_bucket;
       source_archive_object = v_source_archive_object;
       timeout = v_timeout;
       trigger_http = v_trigger_http;
       vpc_connector = v_vpc_connector;
       vpc_connector_egress_settings =
         v_vpc_connector_egress_settings;
       event_trigger = v_event_trigger;
       secret_environment_variables = v_secret_environment_variables;
       secret_volumes = v_secret_volumes;
       source_repository = v_source_repository;
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
           yojson_of_list yojson_of_source_repository
             v_source_repository
         in
         ("source_repository", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_secret_volumes v_secret_volumes
         in
         ("secret_volumes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_secret_environment_variables
             v_secret_environment_variables
         in
         ("secret_environment_variables", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_event_trigger v_event_trigger
         in
         ("event_trigger", arg) :: bnds
       in
       let bnds =
         match v_vpc_connector_egress_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_connector_egress_settings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vpc_connector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_connector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_trigger_http with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "trigger_http", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_archive_object with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_archive_object", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_archive_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_archive_bucket", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_email", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_runtime in
         ("runtime", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ingress_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ingress_settings", arg in
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
       let bnds =
         match v_https_trigger_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "https_trigger_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_trigger_security_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "https_trigger_security_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_variables with
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
             let bnd = "environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_entry_point with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "entry_point", arg in
             bnd :: bnds
       in
       let bnds =
         match v_docker_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "docker_repository", arg in
             bnd :: bnds
       in
       let bnds =
         match v_docker_registry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "docker_registry", arg in
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
         match v_build_worker_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "build_worker_pool", arg in
             bnd :: bnds
       in
       let bnds =
         match v_build_environment_variables with
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
             let bnd = "build_environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_available_memory_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "available_memory_mb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloudfunctions_function ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloudfunctions_function

[@@@deriving.end]

let event_trigger__failure_policy ~retry () :
    event_trigger__failure_policy =
  { retry }

let event_trigger ?(failure_policy = []) ~event_type ~resource () :
    event_trigger =
  { event_type; resource; failure_policy }

let secret_environment_variables ?project_id ~key ~secret ~version ()
    : secret_environment_variables =
  { key; project_id; secret; version }

let secret_volumes__versions ~path ~version () :
    secret_volumes__versions =
  { path; version }

let secret_volumes ?project_id ?(versions = []) ~mount_path ~secret
    () : secret_volumes =
  { mount_path; project_id; secret; versions }

let source_repository ~url () : source_repository = { url }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let google_cloudfunctions_function ?available_memory_mb
    ?build_environment_variables ?build_worker_pool ?description
    ?docker_registry ?docker_repository ?entry_point
    ?environment_variables ?https_trigger_security_level
    ?https_trigger_url ?id ?ingress_settings ?kms_key_name ?labels
    ?max_instances ?min_instances ?project ?region
    ?service_account_email ?source_archive_bucket
    ?source_archive_object ?timeout ?trigger_http ?vpc_connector
    ?vpc_connector_egress_settings ?(event_trigger = [])
    ?(secret_environment_variables = []) ?(secret_volumes = [])
    ?(source_repository = []) ?timeouts ~name ~runtime () :
    google_cloudfunctions_function =
  {
    available_memory_mb;
    build_environment_variables;
    build_worker_pool;
    description;
    docker_registry;
    docker_repository;
    entry_point;
    environment_variables;
    https_trigger_security_level;
    https_trigger_url;
    id;
    ingress_settings;
    kms_key_name;
    labels;
    max_instances;
    min_instances;
    name;
    project;
    region;
    runtime;
    service_account_email;
    source_archive_bucket;
    source_archive_object;
    timeout;
    trigger_http;
    vpc_connector;
    vpc_connector_egress_settings;
    event_trigger;
    secret_environment_variables;
    secret_volumes;
    source_repository;
    timeouts;
  }

type t = {
  available_memory_mb : float prop;
  build_environment_variables : (string * string) list prop;
  build_worker_pool : string prop;
  description : string prop;
  docker_registry : string prop;
  docker_repository : string prop;
  effective_labels : (string * string) list prop;
  entry_point : string prop;
  environment_variables : (string * string) list prop;
  https_trigger_security_level : string prop;
  https_trigger_url : string prop;
  id : string prop;
  ingress_settings : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  max_instances : float prop;
  min_instances : float prop;
  name : string prop;
  project : string prop;
  region : string prop;
  runtime : string prop;
  service_account_email : string prop;
  source_archive_bucket : string prop;
  source_archive_object : string prop;
  status : string prop;
  terraform_labels : (string * string) list prop;
  timeout : float prop;
  trigger_http : bool prop;
  version_id : string prop;
  vpc_connector : string prop;
  vpc_connector_egress_settings : string prop;
}

let make ?available_memory_mb ?build_environment_variables
    ?build_worker_pool ?description ?docker_registry
    ?docker_repository ?entry_point ?environment_variables
    ?https_trigger_security_level ?https_trigger_url ?id
    ?ingress_settings ?kms_key_name ?labels ?max_instances
    ?min_instances ?project ?region ?service_account_email
    ?source_archive_bucket ?source_archive_object ?timeout
    ?trigger_http ?vpc_connector ?vpc_connector_egress_settings
    ?(event_trigger = []) ?(secret_environment_variables = [])
    ?(secret_volumes = []) ?(source_repository = []) ?timeouts ~name
    ~runtime __id =
  let __type = "google_cloudfunctions_function" in
  let __attrs =
    ({
       available_memory_mb =
         Prop.computed __type __id "available_memory_mb";
       build_environment_variables =
         Prop.computed __type __id "build_environment_variables";
       build_worker_pool =
         Prop.computed __type __id "build_worker_pool";
       description = Prop.computed __type __id "description";
       docker_registry = Prop.computed __type __id "docker_registry";
       docker_repository =
         Prop.computed __type __id "docker_repository";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       entry_point = Prop.computed __type __id "entry_point";
       environment_variables =
         Prop.computed __type __id "environment_variables";
       https_trigger_security_level =
         Prop.computed __type __id "https_trigger_security_level";
       https_trigger_url =
         Prop.computed __type __id "https_trigger_url";
       id = Prop.computed __type __id "id";
       ingress_settings =
         Prop.computed __type __id "ingress_settings";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       max_instances = Prop.computed __type __id "max_instances";
       min_instances = Prop.computed __type __id "min_instances";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       runtime = Prop.computed __type __id "runtime";
       service_account_email =
         Prop.computed __type __id "service_account_email";
       source_archive_bucket =
         Prop.computed __type __id "source_archive_bucket";
       source_archive_object =
         Prop.computed __type __id "source_archive_object";
       status = Prop.computed __type __id "status";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       timeout = Prop.computed __type __id "timeout";
       trigger_http = Prop.computed __type __id "trigger_http";
       version_id = Prop.computed __type __id "version_id";
       vpc_connector = Prop.computed __type __id "vpc_connector";
       vpc_connector_egress_settings =
         Prop.computed __type __id "vpc_connector_egress_settings";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloudfunctions_function
        (google_cloudfunctions_function ?available_memory_mb
           ?build_environment_variables ?build_worker_pool
           ?description ?docker_registry ?docker_repository
           ?entry_point ?environment_variables
           ?https_trigger_security_level ?https_trigger_url ?id
           ?ingress_settings ?kms_key_name ?labels ?max_instances
           ?min_instances ?project ?region ?service_account_email
           ?source_archive_bucket ?source_archive_object ?timeout
           ?trigger_http ?vpc_connector
           ?vpc_connector_egress_settings ~event_trigger
           ~secret_environment_variables ~secret_volumes
           ~source_repository ?timeouts ~name ~runtime ());
    attrs = __attrs;
  }

let register ?tf_module ?available_memory_mb
    ?build_environment_variables ?build_worker_pool ?description
    ?docker_registry ?docker_repository ?entry_point
    ?environment_variables ?https_trigger_security_level
    ?https_trigger_url ?id ?ingress_settings ?kms_key_name ?labels
    ?max_instances ?min_instances ?project ?region
    ?service_account_email ?source_archive_bucket
    ?source_archive_object ?timeout ?trigger_http ?vpc_connector
    ?vpc_connector_egress_settings ?(event_trigger = [])
    ?(secret_environment_variables = []) ?(secret_volumes = [])
    ?(source_repository = []) ?timeouts ~name ~runtime __id =
  let (r : _ Tf_core.resource) =
    make ?available_memory_mb ?build_environment_variables
      ?build_worker_pool ?description ?docker_registry
      ?docker_repository ?entry_point ?environment_variables
      ?https_trigger_security_level ?https_trigger_url ?id
      ?ingress_settings ?kms_key_name ?labels ?max_instances
      ?min_instances ?project ?region ?service_account_email
      ?source_archive_bucket ?source_archive_object ?timeout
      ?trigger_http ?vpc_connector ?vpc_connector_egress_settings
      ~event_trigger ~secret_environment_variables ~secret_volumes
      ~source_repository ?timeouts ~name ~runtime __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
