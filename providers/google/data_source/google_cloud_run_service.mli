(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata = {
  annotations : string prop Tf_core.assoc;  (** annotations *)
  effective_annotations : string prop Tf_core.assoc;
      (** effective_annotations *)
  effective_labels : string prop Tf_core.assoc;
      (** effective_labels *)
  generation : float prop;  (** generation *)
  labels : string prop Tf_core.assoc;  (** labels *)
  namespace : string prop;  (** namespace *)
  resource_version : string prop;  (** resource_version *)
  self_link : string prop;  (** self_link *)
  terraform_labels : string prop Tf_core.assoc;
      (** terraform_labels *)
  uid : string prop;  (** uid *)
}

type status__traffic = {
  latest_revision : bool prop;  (** latest_revision *)
  percent : float prop;  (** percent *)
  revision_name : string prop;  (** revision_name *)
  tag : string prop;  (** tag *)
  url : string prop;  (** url *)
}

type status__conditions = {
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
}

type status = {
  conditions : status__conditions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** conditions *)
  latest_created_revision_name : string prop;
      (** latest_created_revision_name *)
  latest_ready_revision_name : string prop;
      (** latest_ready_revision_name *)
  observed_generation : float prop;  (** observed_generation *)
  traffic : status__traffic list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** traffic *)
  url : string prop;  (** url *)
}

type template__spec__volumes__secret__items = {
  key : string prop;  (** key *)
  mode : float prop;  (** mode *)
  path : string prop;  (** path *)
}

type template__spec__volumes__secret = {
  default_mode : float prop;  (** default_mode *)
  items : template__spec__volumes__secret__items list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** items *)
  secret_name : string prop;  (** secret_name *)
}

type template__spec__volumes = {
  name : string prop;  (** name *)
  secret : template__spec__volumes__secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secret *)
}

type template__spec__containers__volume_mounts = {
  mount_path : string prop;  (** mount_path *)
  name : string prop;  (** name *)
}

type template__spec__containers__startup_probe__tcp_socket = {
  port : float prop;  (** port *)
}

type template__spec__containers__startup_probe__http_get__http_headers = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type template__spec__containers__startup_probe__http_get = {
  http_headers :
    template__spec__containers__startup_probe__http_get__http_headers
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http_headers *)
  path : string prop;  (** path *)
  port : float prop;  (** port *)
}

type template__spec__containers__startup_probe__grpc = {
  port : float prop;  (** port *)
  service : string prop;  (** service *)
}

type template__spec__containers__startup_probe = {
  failure_threshold : float prop;  (** failure_threshold *)
  grpc : template__spec__containers__startup_probe__grpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** grpc *)
  http_get :
    template__spec__containers__startup_probe__http_get list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http_get *)
  initial_delay_seconds : float prop;  (** initial_delay_seconds *)
  period_seconds : float prop;  (** period_seconds *)
  tcp_socket :
    template__spec__containers__startup_probe__tcp_socket list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tcp_socket *)
  timeout_seconds : float prop;  (** timeout_seconds *)
}

type template__spec__containers__resources = {
  limits : string prop Tf_core.assoc;  (** limits *)
  requests : string prop Tf_core.assoc;  (** requests *)
}

type template__spec__containers__ports = {
  container_port : float prop;  (** container_port *)
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
}

type template__spec__containers__liveness_probe__http_get__http_headers = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type template__spec__containers__liveness_probe__http_get = {
  http_headers :
    template__spec__containers__liveness_probe__http_get__http_headers
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http_headers *)
  path : string prop;  (** path *)
  port : float prop;  (** port *)
}

type template__spec__containers__liveness_probe__grpc = {
  port : float prop;  (** port *)
  service : string prop;  (** service *)
}

type template__spec__containers__liveness_probe = {
  failure_threshold : float prop;  (** failure_threshold *)
  grpc : template__spec__containers__liveness_probe__grpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** grpc *)
  http_get :
    template__spec__containers__liveness_probe__http_get list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http_get *)
  initial_delay_seconds : float prop;  (** initial_delay_seconds *)
  period_seconds : float prop;  (** period_seconds *)
  timeout_seconds : float prop;  (** timeout_seconds *)
}

type template__spec__containers__env_from__secret_ref__local_object_reference = {
  name : string prop;  (** name *)
}

type template__spec__containers__env_from__secret_ref = {
  local_object_reference :
    template__spec__containers__env_from__secret_ref__local_object_reference
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** local_object_reference *)
  optional : bool prop;  (** optional *)
}

type template__spec__containers__env_from__config_map_ref__local_object_reference = {
  name : string prop;  (** name *)
}

type template__spec__containers__env_from__config_map_ref = {
  local_object_reference :
    template__spec__containers__env_from__config_map_ref__local_object_reference
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** local_object_reference *)
  optional : bool prop;  (** optional *)
}

type template__spec__containers__env_from = {
  config_map_ref :
    template__spec__containers__env_from__config_map_ref list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** config_map_ref *)
  prefix : string prop;  (** prefix *)
  secret_ref : template__spec__containers__env_from__secret_ref list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secret_ref *)
}

type template__spec__containers__env__value_from__secret_key_ref = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
}

type template__spec__containers__env__value_from = {
  secret_key_ref :
    template__spec__containers__env__value_from__secret_key_ref list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secret_key_ref *)
}

type template__spec__containers__env = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
  value_from : template__spec__containers__env__value_from list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** value_from *)
}

type template__spec__containers = {
  args : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** args *)
  command : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** command *)
  env : template__spec__containers__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** env *)
  env_from : template__spec__containers__env_from list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** env_from *)
  image : string prop;  (** image *)
  liveness_probe : template__spec__containers__liveness_probe list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** liveness_probe *)
  name : string prop;  (** name *)
  ports : template__spec__containers__ports list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ports *)
  resources : template__spec__containers__resources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** resources *)
  startup_probe : template__spec__containers__startup_probe list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** startup_probe *)
  volume_mounts : template__spec__containers__volume_mounts list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** volume_mounts *)
  working_dir : string prop;  (** working_dir *)
}

type template__spec = {
  container_concurrency : float prop;  (** container_concurrency *)
  containers : template__spec__containers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** containers *)
  service_account_name : string prop;  (** service_account_name *)
  serving_state : string prop;  (** serving_state *)
  timeout_seconds : float prop;  (** timeout_seconds *)
  volumes : template__spec__volumes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** volumes *)
}

type template__metadata = {
  annotations : string prop Tf_core.assoc;  (** annotations *)
  generation : float prop;  (** generation *)
  labels : string prop Tf_core.assoc;  (** labels *)
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
  resource_version : string prop;  (** resource_version *)
  self_link : string prop;  (** self_link *)
  uid : string prop;  (** uid *)
}

type template = {
  metadata : template__metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** metadata *)
  spec : template__spec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** spec *)
}

type traffic = {
  latest_revision : bool prop;  (** latest_revision *)
  percent : float prop;  (** percent *)
  revision_name : string prop;  (** revision_name *)
  tag : string prop;  (** tag *)
  url : string prop;  (** url *)
}

type google_cloud_run_service

val google_cloud_run_service :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_cloud_run_service

val yojson_of_google_cloud_run_service :
  google_cloud_run_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  autogenerate_revision_name : bool prop;
  id : string prop;
  location : string prop;
  metadata : metadata list prop;
  name : string prop;
  project : string prop;
  status : status list prop;
  template : template list prop;
  traffic : traffic list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
