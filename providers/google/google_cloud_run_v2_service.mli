(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

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

type traffic_statuses = {
  percent : float prop;  (** percent *)
  revision : string prop;  (** revision *)
  tag : string prop;  (** tag *)
  type_ : string prop; [@key "type"]  (** type *)
  uri : string prop;  (** uri *)
}

type binary_authorization

val binary_authorization :
  ?breakglass_justification:string prop ->
  ?use_default:bool prop ->
  unit ->
  binary_authorization

type template__containers__env__value_source__secret_key_ref

val template__containers__env__value_source__secret_key_ref :
  ?version:string prop ->
  secret:string prop ->
  unit ->
  template__containers__env__value_source__secret_key_ref

type template__containers__env__value_source

val template__containers__env__value_source :
  secret_key_ref:
    template__containers__env__value_source__secret_key_ref list ->
  unit ->
  template__containers__env__value_source

type template__containers__env

val template__containers__env :
  ?value:string prop ->
  name:string prop ->
  value_source:template__containers__env__value_source list ->
  unit ->
  template__containers__env

type template__containers__liveness_probe__grpc

val template__containers__liveness_probe__grpc :
  ?port:float prop ->
  ?service:string prop ->
  unit ->
  template__containers__liveness_probe__grpc

type template__containers__liveness_probe__http_get__http_headers

val template__containers__liveness_probe__http_get__http_headers :
  ?value:string prop ->
  name:string prop ->
  unit ->
  template__containers__liveness_probe__http_get__http_headers

type template__containers__liveness_probe__http_get

val template__containers__liveness_probe__http_get :
  ?path:string prop ->
  ?port:float prop ->
  http_headers:
    template__containers__liveness_probe__http_get__http_headers list ->
  unit ->
  template__containers__liveness_probe__http_get

type template__containers__liveness_probe__tcp_socket

val template__containers__liveness_probe__tcp_socket :
  port:float prop ->
  unit ->
  template__containers__liveness_probe__tcp_socket

type template__containers__liveness_probe

val template__containers__liveness_probe :
  ?failure_threshold:float prop ->
  ?initial_delay_seconds:float prop ->
  ?period_seconds:float prop ->
  ?timeout_seconds:float prop ->
  grpc:template__containers__liveness_probe__grpc list ->
  http_get:template__containers__liveness_probe__http_get list ->
  tcp_socket:template__containers__liveness_probe__tcp_socket list ->
  unit ->
  template__containers__liveness_probe

type template__containers__ports

val template__containers__ports :
  ?container_port:float prop ->
  ?name:string prop ->
  unit ->
  template__containers__ports

type template__containers__resources

val template__containers__resources :
  ?cpu_idle:bool prop ->
  ?limits:(string * string prop) list ->
  ?startup_cpu_boost:bool prop ->
  unit ->
  template__containers__resources

type template__containers__startup_probe__grpc

val template__containers__startup_probe__grpc :
  ?port:float prop ->
  ?service:string prop ->
  unit ->
  template__containers__startup_probe__grpc

type template__containers__startup_probe__http_get__http_headers

val template__containers__startup_probe__http_get__http_headers :
  ?value:string prop ->
  name:string prop ->
  unit ->
  template__containers__startup_probe__http_get__http_headers

type template__containers__startup_probe__http_get

val template__containers__startup_probe__http_get :
  ?path:string prop ->
  ?port:float prop ->
  http_headers:
    template__containers__startup_probe__http_get__http_headers list ->
  unit ->
  template__containers__startup_probe__http_get

type template__containers__startup_probe__tcp_socket

val template__containers__startup_probe__tcp_socket :
  ?port:float prop ->
  unit ->
  template__containers__startup_probe__tcp_socket

type template__containers__startup_probe

val template__containers__startup_probe :
  ?failure_threshold:float prop ->
  ?initial_delay_seconds:float prop ->
  ?period_seconds:float prop ->
  ?timeout_seconds:float prop ->
  grpc:template__containers__startup_probe__grpc list ->
  http_get:template__containers__startup_probe__http_get list ->
  tcp_socket:template__containers__startup_probe__tcp_socket list ->
  unit ->
  template__containers__startup_probe

type template__containers__volume_mounts

val template__containers__volume_mounts :
  mount_path:string prop ->
  name:string prop ->
  unit ->
  template__containers__volume_mounts

type template__containers

val template__containers :
  ?args:string prop list ->
  ?command:string prop list ->
  ?depends_on:string prop list ->
  ?name:string prop ->
  ?working_dir:string prop ->
  image:string prop ->
  env:template__containers__env list ->
  liveness_probe:template__containers__liveness_probe list ->
  ports:template__containers__ports list ->
  resources:template__containers__resources list ->
  startup_probe:template__containers__startup_probe list ->
  volume_mounts:template__containers__volume_mounts list ->
  unit ->
  template__containers

type template__scaling

val template__scaling :
  ?max_instance_count:float prop ->
  ?min_instance_count:float prop ->
  unit ->
  template__scaling

type template__volumes__cloud_sql_instance

val template__volumes__cloud_sql_instance :
  ?instances:string prop list ->
  unit ->
  template__volumes__cloud_sql_instance

type template__volumes__gcs

val template__volumes__gcs :
  ?read_only:bool prop ->
  bucket:string prop ->
  unit ->
  template__volumes__gcs

type template__volumes__nfs

val template__volumes__nfs :
  ?read_only:bool prop ->
  path:string prop ->
  server:string prop ->
  unit ->
  template__volumes__nfs

type template__volumes__secret__items

val template__volumes__secret__items :
  ?mode:float prop ->
  ?version:string prop ->
  path:string prop ->
  unit ->
  template__volumes__secret__items

type template__volumes__secret

val template__volumes__secret :
  ?default_mode:float prop ->
  secret:string prop ->
  items:template__volumes__secret__items list ->
  unit ->
  template__volumes__secret

type template__volumes

val template__volumes :
  name:string prop ->
  cloud_sql_instance:template__volumes__cloud_sql_instance list ->
  gcs:template__volumes__gcs list ->
  nfs:template__volumes__nfs list ->
  secret:template__volumes__secret list ->
  unit ->
  template__volumes

type template__vpc_access__network_interfaces

val template__vpc_access__network_interfaces :
  ?network:string prop ->
  ?subnetwork:string prop ->
  ?tags:string prop list ->
  unit ->
  template__vpc_access__network_interfaces

type template__vpc_access

val template__vpc_access :
  ?connector:string prop ->
  ?egress:string prop ->
  network_interfaces:template__vpc_access__network_interfaces list ->
  unit ->
  template__vpc_access

type template

val template :
  ?annotations:(string * string prop) list ->
  ?encryption_key:string prop ->
  ?execution_environment:string prop ->
  ?labels:(string * string prop) list ->
  ?max_instance_request_concurrency:float prop ->
  ?revision:string prop ->
  ?service_account:string prop ->
  ?session_affinity:bool prop ->
  ?timeout:string prop ->
  containers:template__containers list ->
  scaling:template__scaling list ->
  volumes:template__volumes list ->
  vpc_access:template__vpc_access list ->
  unit ->
  template

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type traffic

val traffic :
  ?percent:float prop ->
  ?revision:string prop ->
  ?tag:string prop ->
  ?type_:string prop ->
  unit ->
  traffic

type google_cloud_run_v2_service

val google_cloud_run_v2_service :
  ?annotations:(string * string prop) list ->
  ?client:string prop ->
  ?client_version:string prop ->
  ?custom_audiences:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?ingress:string prop ->
  ?labels:(string * string prop) list ->
  ?launch_stage:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  binary_authorization:binary_authorization list ->
  template:template list ->
  traffic:traffic list ->
  unit ->
  google_cloud_run_v2_service

val yojson_of_google_cloud_run_v2_service :
  google_cloud_run_v2_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  annotations : (string * string) list prop;
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
  terminal_condition : terminal_condition list prop;
  terraform_labels : (string * string) list prop;
  traffic_statuses : traffic_statuses list prop;
  uid : string prop;
  update_time : string prop;
  uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?client:string prop ->
  ?client_version:string prop ->
  ?custom_audiences:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?ingress:string prop ->
  ?labels:(string * string prop) list ->
  ?launch_stage:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  binary_authorization:binary_authorization list ->
  template:template list ->
  traffic:traffic list ->
  string ->
  t
