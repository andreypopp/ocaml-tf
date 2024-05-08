(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

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

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?labels:(string * string prop) list ->
  ?namespace:string prop ->
  unit ->
  metadata

type template__metadata

val template__metadata :
  ?annotations:(string * string prop) list ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  template__metadata

type template__spec__containers__env__value_from__secret_key_ref

val template__spec__containers__env__value_from__secret_key_ref :
  key:string prop ->
  name:string prop ->
  unit ->
  template__spec__containers__env__value_from__secret_key_ref

type template__spec__containers__env__value_from

val template__spec__containers__env__value_from :
  secret_key_ref:
    template__spec__containers__env__value_from__secret_key_ref list ->
  unit ->
  template__spec__containers__env__value_from

type template__spec__containers__env

val template__spec__containers__env :
  ?name:string prop ->
  ?value:string prop ->
  ?value_from:template__spec__containers__env__value_from list ->
  unit ->
  template__spec__containers__env

type template__spec__containers__env_from__config_map_ref__local_object_reference

val template__spec__containers__env_from__config_map_ref__local_object_reference :
  name:string prop ->
  unit ->
  template__spec__containers__env_from__config_map_ref__local_object_reference

type template__spec__containers__env_from__config_map_ref

val template__spec__containers__env_from__config_map_ref :
  ?optional:bool prop ->
  ?local_object_reference:
    template__spec__containers__env_from__config_map_ref__local_object_reference
    list ->
  unit ->
  template__spec__containers__env_from__config_map_ref

type template__spec__containers__env_from__secret_ref__local_object_reference

val template__spec__containers__env_from__secret_ref__local_object_reference :
  name:string prop ->
  unit ->
  template__spec__containers__env_from__secret_ref__local_object_reference

type template__spec__containers__env_from__secret_ref

val template__spec__containers__env_from__secret_ref :
  ?optional:bool prop ->
  ?local_object_reference:
    template__spec__containers__env_from__secret_ref__local_object_reference
    list ->
  unit ->
  template__spec__containers__env_from__secret_ref

type template__spec__containers__env_from

val template__spec__containers__env_from :
  ?prefix:string prop ->
  ?config_map_ref:
    template__spec__containers__env_from__config_map_ref list ->
  ?secret_ref:template__spec__containers__env_from__secret_ref list ->
  unit ->
  template__spec__containers__env_from

type template__spec__containers__liveness_probe__grpc

val template__spec__containers__liveness_probe__grpc :
  ?port:float prop ->
  ?service:string prop ->
  unit ->
  template__spec__containers__liveness_probe__grpc

type template__spec__containers__liveness_probe__http_get__http_headers

val template__spec__containers__liveness_probe__http_get__http_headers :
  ?value:string prop ->
  name:string prop ->
  unit ->
  template__spec__containers__liveness_probe__http_get__http_headers

type template__spec__containers__liveness_probe__http_get

val template__spec__containers__liveness_probe__http_get :
  ?path:string prop ->
  ?port:float prop ->
  ?http_headers:
    template__spec__containers__liveness_probe__http_get__http_headers
    list ->
  unit ->
  template__spec__containers__liveness_probe__http_get

type template__spec__containers__liveness_probe

val template__spec__containers__liveness_probe :
  ?failure_threshold:float prop ->
  ?initial_delay_seconds:float prop ->
  ?period_seconds:float prop ->
  ?timeout_seconds:float prop ->
  ?grpc:template__spec__containers__liveness_probe__grpc list ->
  ?http_get:template__spec__containers__liveness_probe__http_get list ->
  unit ->
  template__spec__containers__liveness_probe

type template__spec__containers__ports

val template__spec__containers__ports :
  ?container_port:float prop ->
  ?name:string prop ->
  ?protocol:string prop ->
  unit ->
  template__spec__containers__ports

type template__spec__containers__resources

val template__spec__containers__resources :
  ?limits:(string * string prop) list ->
  ?requests:(string * string prop) list ->
  unit ->
  template__spec__containers__resources

type template__spec__containers__startup_probe__grpc

val template__spec__containers__startup_probe__grpc :
  ?port:float prop ->
  ?service:string prop ->
  unit ->
  template__spec__containers__startup_probe__grpc

type template__spec__containers__startup_probe__http_get__http_headers

val template__spec__containers__startup_probe__http_get__http_headers :
  ?value:string prop ->
  name:string prop ->
  unit ->
  template__spec__containers__startup_probe__http_get__http_headers

type template__spec__containers__startup_probe__http_get

val template__spec__containers__startup_probe__http_get :
  ?path:string prop ->
  ?port:float prop ->
  ?http_headers:
    template__spec__containers__startup_probe__http_get__http_headers
    list ->
  unit ->
  template__spec__containers__startup_probe__http_get

type template__spec__containers__startup_probe__tcp_socket

val template__spec__containers__startup_probe__tcp_socket :
  ?port:float prop ->
  unit ->
  template__spec__containers__startup_probe__tcp_socket

type template__spec__containers__startup_probe

val template__spec__containers__startup_probe :
  ?failure_threshold:float prop ->
  ?initial_delay_seconds:float prop ->
  ?period_seconds:float prop ->
  ?timeout_seconds:float prop ->
  ?grpc:template__spec__containers__startup_probe__grpc list ->
  ?http_get:template__spec__containers__startup_probe__http_get list ->
  ?tcp_socket:
    template__spec__containers__startup_probe__tcp_socket list ->
  unit ->
  template__spec__containers__startup_probe

type template__spec__containers__volume_mounts

val template__spec__containers__volume_mounts :
  mount_path:string prop ->
  name:string prop ->
  unit ->
  template__spec__containers__volume_mounts

type template__spec__containers

val template__spec__containers :
  ?args:string prop list ->
  ?command:string prop list ->
  ?name:string prop ->
  ?working_dir:string prop ->
  ?env_from:template__spec__containers__env_from list ->
  ?liveness_probe:template__spec__containers__liveness_probe list ->
  ?ports:template__spec__containers__ports list ->
  ?resources:template__spec__containers__resources list ->
  ?startup_probe:template__spec__containers__startup_probe list ->
  ?volume_mounts:template__spec__containers__volume_mounts list ->
  image:string prop ->
  env:template__spec__containers__env list ->
  unit ->
  template__spec__containers

type template__spec__volumes__secret__items

val template__spec__volumes__secret__items :
  ?mode:float prop ->
  key:string prop ->
  path:string prop ->
  unit ->
  template__spec__volumes__secret__items

type template__spec__volumes__secret

val template__spec__volumes__secret :
  ?default_mode:float prop ->
  ?items:template__spec__volumes__secret__items list ->
  secret_name:string prop ->
  unit ->
  template__spec__volumes__secret

type template__spec__volumes

val template__spec__volumes :
  ?secret:template__spec__volumes__secret list ->
  name:string prop ->
  unit ->
  template__spec__volumes

type template__spec

val template__spec :
  ?container_concurrency:float prop ->
  ?service_account_name:string prop ->
  ?timeout_seconds:float prop ->
  ?containers:template__spec__containers list ->
  ?volumes:template__spec__volumes list ->
  unit ->
  template__spec

type template

val template :
  ?metadata:template__metadata list ->
  ?spec:template__spec list ->
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
  ?latest_revision:bool prop ->
  ?revision_name:string prop ->
  ?tag:string prop ->
  percent:float prop ->
  unit ->
  traffic

type google_cloud_run_service

val google_cloud_run_service :
  ?autogenerate_revision_name:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?metadata:metadata list ->
  ?template:template list ->
  ?timeouts:timeouts ->
  ?traffic:traffic list ->
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
  name : string prop;
  project : string prop;
  status : status list prop;
}

val register :
  ?tf_module:tf_module ->
  ?autogenerate_revision_name:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?metadata:metadata list ->
  ?template:template list ->
  ?timeouts:timeouts ->
  ?traffic:traffic list ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?autogenerate_revision_name:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?metadata:metadata list ->
  ?template:template list ->
  ?timeouts:timeouts ->
  ?traffic:traffic list ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
