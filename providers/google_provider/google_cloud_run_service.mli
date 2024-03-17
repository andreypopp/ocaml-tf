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
  latest_revision : bool;  (** latest_revision *)
  percent : float;  (** percent *)
  revision_name : string;  (** revision_name *)
  tag : string;  (** tag *)
  url : string;  (** url *)
}

type google_cloud_run_service__status__conditions = {
  message : string;  (** message *)
  reason : string;  (** reason *)
  status : string;  (** status *)
  type_ : string; [@key "type"]  (** type *)
}

type google_cloud_run_service__status = {
  conditions : google_cloud_run_service__status__conditions list;
      (** conditions *)
  latest_created_revision_name : string;
      (** latest_created_revision_name *)
  latest_ready_revision_name : string;
      (** latest_ready_revision_name *)
  observed_generation : float;  (** observed_generation *)
  traffic : google_cloud_run_service__status__traffic list;
      (** traffic *)
  url : string;  (** url *)
}

type google_cloud_run_service

val google_cloud_run_service :
  ?autogenerate_revision_name:bool ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_cloud_run_service__timeouts ->
  location:string ->
  name:string ->
  metadata:google_cloud_run_service__metadata list ->
  template:google_cloud_run_service__template list ->
  traffic:google_cloud_run_service__traffic list ->
  string ->
  unit
