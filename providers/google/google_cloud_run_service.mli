(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_run_service__metadata
type google_cloud_run_service__template__metadata

type google_cloud_run_service__template__spec__containers__env__value_from__secret_key_ref

type google_cloud_run_service__template__spec__containers__env__value_from

type google_cloud_run_service__template__spec__containers__env

type google_cloud_run_service__template__spec__containers__env_from__config_map_ref__local_object_reference

type google_cloud_run_service__template__spec__containers__env_from__config_map_ref

type google_cloud_run_service__template__spec__containers__env_from__secret_ref__local_object_reference

type google_cloud_run_service__template__spec__containers__env_from__secret_ref

type google_cloud_run_service__template__spec__containers__env_from

type google_cloud_run_service__template__spec__containers__liveness_probe__grpc

type google_cloud_run_service__template__spec__containers__liveness_probe__http_get__http_headers

type google_cloud_run_service__template__spec__containers__liveness_probe__http_get

type google_cloud_run_service__template__spec__containers__liveness_probe

type google_cloud_run_service__template__spec__containers__ports
type google_cloud_run_service__template__spec__containers__resources

type google_cloud_run_service__template__spec__containers__startup_probe__grpc

type google_cloud_run_service__template__spec__containers__startup_probe__http_get__http_headers

type google_cloud_run_service__template__spec__containers__startup_probe__http_get

type google_cloud_run_service__template__spec__containers__startup_probe__tcp_socket

type google_cloud_run_service__template__spec__containers__startup_probe

type google_cloud_run_service__template__spec__containers__volume_mounts

type google_cloud_run_service__template__spec__containers
type google_cloud_run_service__template__spec__volumes__secret__items
type google_cloud_run_service__template__spec__volumes__secret
type google_cloud_run_service__template__spec__volumes
type google_cloud_run_service__template__spec
type google_cloud_run_service__template
type google_cloud_run_service__timeouts
type google_cloud_run_service__traffic

type google_cloud_run_service__status__traffic = {
  latest_revision : bool prop;  (** latest_revision *)
  percent : float prop;  (** percent *)
  revision_name : string prop;  (** revision_name *)
  tag : string prop;  (** tag *)
  url : string prop;  (** url *)
}

type google_cloud_run_service__status__conditions = {
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_cloud_run_service__status = {
  conditions : google_cloud_run_service__status__conditions list;
      (** conditions *)
  latest_created_revision_name : string prop;
      (** latest_created_revision_name *)
  latest_ready_revision_name : string prop;
      (** latest_ready_revision_name *)
  observed_generation : float prop;  (** observed_generation *)
  traffic : google_cloud_run_service__status__traffic list;
      (** traffic *)
  url : string prop;  (** url *)
}

type google_cloud_run_service

type t = private {
  autogenerate_revision_name : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  status : google_cloud_run_service__status list prop;
}

val google_cloud_run_service :
  ?autogenerate_revision_name:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_cloud_run_service__timeouts ->
  location:string prop ->
  name:string prop ->
  metadata:google_cloud_run_service__metadata list ->
  template:google_cloud_run_service__template list ->
  traffic:google_cloud_run_service__traffic list ->
  string ->
  t
