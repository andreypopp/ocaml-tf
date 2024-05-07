(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type binary_authorization = {
  breakglass_justification : string prop;
      (** breakglass_justification *)
  use_default : bool prop;  (** use_default *)
}

type conditions = {
  execution_reason : string prop;  (** execution_reason *)
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  revision_reason : string prop;  (** revision_reason *)
  severity : string prop;  (** severity *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}

type template__vpc_access__network_interfaces = {
  network : string prop;  (** network *)
  subnetwork : string prop;  (** subnetwork *)
  tags : string prop list;  (** tags *)
}

type template__vpc_access = {
  connector : string prop;  (** connector *)
  egress : string prop;  (** egress *)
  network_interfaces : template__vpc_access__network_interfaces list;
      (** network_interfaces *)
}

type template__volumes__secret__items = {
  mode : float prop;  (** mode *)
  path : string prop;  (** path *)
  version : string prop;  (** version *)
}

type template__volumes__secret = {
  default_mode : float prop;  (** default_mode *)
  items : template__volumes__secret__items list;  (** items *)
  secret : string prop;  (** secret *)
}

type template__volumes__nfs = {
  path : string prop;  (** path *)
  read_only : bool prop;  (** read_only *)
  server : string prop;  (** server *)
}

type template__volumes__gcs = {
  bucket : string prop;  (** bucket *)
  read_only : bool prop;  (** read_only *)
}

type template__volumes__cloud_sql_instance = {
  instances : string prop list;  (** instances *)
}

type template__volumes = {
  cloud_sql_instance : template__volumes__cloud_sql_instance list;
      (** cloud_sql_instance *)
  gcs : template__volumes__gcs list;  (** gcs *)
  name : string prop;  (** name *)
  nfs : template__volumes__nfs list;  (** nfs *)
  secret : template__volumes__secret list;  (** secret *)
}

type template__scaling = {
  max_instance_count : float prop;  (** max_instance_count *)
  min_instance_count : float prop;  (** min_instance_count *)
}

type template__containers__volume_mounts = {
  mount_path : string prop;  (** mount_path *)
  name : string prop;  (** name *)
}

type template__containers__startup_probe__tcp_socket = {
  port : float prop;  (** port *)
}

type template__containers__startup_probe__http_get__http_headers = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type template__containers__startup_probe__http_get = {
  http_headers :
    template__containers__startup_probe__http_get__http_headers list;
      (** http_headers *)
  path : string prop;  (** path *)
  port : float prop;  (** port *)
}

type template__containers__startup_probe__grpc = {
  port : float prop;  (** port *)
  service : string prop;  (** service *)
}

type template__containers__startup_probe = {
  failure_threshold : float prop;  (** failure_threshold *)
  grpc : template__containers__startup_probe__grpc list;  (** grpc *)
  http_get : template__containers__startup_probe__http_get list;
      (** http_get *)
  initial_delay_seconds : float prop;  (** initial_delay_seconds *)
  period_seconds : float prop;  (** period_seconds *)
  tcp_socket : template__containers__startup_probe__tcp_socket list;
      (** tcp_socket *)
  timeout_seconds : float prop;  (** timeout_seconds *)
}

type template__containers__resources = {
  cpu_idle : bool prop;  (** cpu_idle *)
  limits : (string * string prop) list;  (** limits *)
  startup_cpu_boost : bool prop;  (** startup_cpu_boost *)
}

type template__containers__ports = {
  container_port : float prop;  (** container_port *)
  name : string prop;  (** name *)
}

type template__containers__liveness_probe__tcp_socket = {
  port : float prop;  (** port *)
}

type template__containers__liveness_probe__http_get__http_headers = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type template__containers__liveness_probe__http_get = {
  http_headers :
    template__containers__liveness_probe__http_get__http_headers list;
      (** http_headers *)
  path : string prop;  (** path *)
  port : float prop;  (** port *)
}

type template__containers__liveness_probe__grpc = {
  port : float prop;  (** port *)
  service : string prop;  (** service *)
}

type template__containers__liveness_probe = {
  failure_threshold : float prop;  (** failure_threshold *)
  grpc : template__containers__liveness_probe__grpc list;
      (** grpc *)
  http_get : template__containers__liveness_probe__http_get list;
      (** http_get *)
  initial_delay_seconds : float prop;  (** initial_delay_seconds *)
  period_seconds : float prop;  (** period_seconds *)
  tcp_socket : template__containers__liveness_probe__tcp_socket list;
      (** tcp_socket *)
  timeout_seconds : float prop;  (** timeout_seconds *)
}

type template__containers__env__value_source__secret_key_ref = {
  secret : string prop;  (** secret *)
  version : string prop;  (** version *)
}

type template__containers__env__value_source = {
  secret_key_ref :
    template__containers__env__value_source__secret_key_ref list;
      (** secret_key_ref *)
}

type template__containers__env = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
  value_source : template__containers__env__value_source list;
      (** value_source *)
}

type template__containers = {
  args : string prop list;  (** args *)
  command : string prop list;  (** command *)
  depends_on : string prop list;  (** depends_on *)
  env : template__containers__env list;  (** env *)
  image : string prop;  (** image *)
  liveness_probe : template__containers__liveness_probe list;
      (** liveness_probe *)
  name : string prop;  (** name *)
  ports : template__containers__ports list;  (** ports *)
  resources : template__containers__resources list;  (** resources *)
  startup_probe : template__containers__startup_probe list;
      (** startup_probe *)
  volume_mounts : template__containers__volume_mounts list;
      (** volume_mounts *)
  working_dir : string prop;  (** working_dir *)
}

type template = {
  annotations : (string * string prop) list;  (** annotations *)
  containers : template__containers list;  (** containers *)
  encryption_key : string prop;  (** encryption_key *)
  execution_environment : string prop;  (** execution_environment *)
  labels : (string * string prop) list;  (** labels *)
  max_instance_request_concurrency : float prop;
      (** max_instance_request_concurrency *)
  revision : string prop;  (** revision *)
  scaling : template__scaling list;  (** scaling *)
  service_account : string prop;  (** service_account *)
  session_affinity : bool prop;  (** session_affinity *)
  timeout : string prop;  (** timeout *)
  volumes : template__volumes list;  (** volumes *)
  vpc_access : template__vpc_access list;  (** vpc_access *)
}

type terminal_condition = {
  execution_reason : string prop;  (** execution_reason *)
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  revision_reason : string prop;  (** revision_reason *)
  severity : string prop;  (** severity *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}

type traffic = {
  percent : float prop;  (** percent *)
  revision : string prop;  (** revision *)
  tag : string prop;  (** tag *)
  type_ : string prop; [@key "type"]  (** type *)
}

type traffic_statuses = {
  percent : float prop;  (** percent *)
  revision : string prop;  (** revision *)
  tag : string prop;  (** tag *)
  type_ : string prop; [@key "type"]  (** type *)
  uri : string prop;  (** uri *)
}

type google_cloud_run_v2_service

val google_cloud_run_v2_service :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_cloud_run_v2_service

val yojson_of_google_cloud_run_v2_service :
  google_cloud_run_v2_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : (string * string) list prop;
  binary_authorization : binary_authorization list prop;
  client : string prop;
  client_version : string prop;
  conditions : conditions list prop;
  create_time : string prop;
  creator : string prop;
  custom_audiences : string list prop;
  delete_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  expire_time : string prop;
  generation : string prop;
  id : string prop;
  ingress : string prop;
  labels : (string * string) list prop;
  last_modifier : string prop;
  latest_created_revision : string prop;
  latest_ready_revision : string prop;
  launch_stage : string prop;
  location : string prop;
  name : string prop;
  observed_generation : string prop;
  project : string prop;
  reconciling : bool prop;
  template : template list prop;
  terminal_condition : terminal_condition list prop;
  terraform_labels : (string * string) list prop;
  traffic : traffic list prop;
  traffic_statuses : traffic_statuses list prop;
  uid : string prop;
  update_time : string prop;
  uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
