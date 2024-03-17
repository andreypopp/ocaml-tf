(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_run_v2_service__binary_authorization

type google_cloud_run_v2_service__template__containers__env__value_source__secret_key_ref

type google_cloud_run_v2_service__template__containers__env__value_source

type google_cloud_run_v2_service__template__containers__env

type google_cloud_run_v2_service__template__containers__liveness_probe__grpc

type google_cloud_run_v2_service__template__containers__liveness_probe__http_get__http_headers

type google_cloud_run_v2_service__template__containers__liveness_probe__http_get

type google_cloud_run_v2_service__template__containers__liveness_probe__tcp_socket

type google_cloud_run_v2_service__template__containers__liveness_probe
type google_cloud_run_v2_service__template__containers__ports
type google_cloud_run_v2_service__template__containers__resources

type google_cloud_run_v2_service__template__containers__startup_probe__grpc

type google_cloud_run_v2_service__template__containers__startup_probe__http_get__http_headers

type google_cloud_run_v2_service__template__containers__startup_probe__http_get

type google_cloud_run_v2_service__template__containers__startup_probe__tcp_socket

type google_cloud_run_v2_service__template__containers__startup_probe
type google_cloud_run_v2_service__template__containers__volume_mounts
type google_cloud_run_v2_service__template__containers
type google_cloud_run_v2_service__template__scaling

type google_cloud_run_v2_service__template__volumes__cloud_sql_instance

type google_cloud_run_v2_service__template__volumes__gcs
type google_cloud_run_v2_service__template__volumes__nfs
type google_cloud_run_v2_service__template__volumes__secret__items
type google_cloud_run_v2_service__template__volumes__secret
type google_cloud_run_v2_service__template__volumes

type google_cloud_run_v2_service__template__vpc_access__network_interfaces

type google_cloud_run_v2_service__template__vpc_access
type google_cloud_run_v2_service__template
type google_cloud_run_v2_service__timeouts
type google_cloud_run_v2_service__traffic

type google_cloud_run_v2_service__conditions = {
  execution_reason : string;  (** execution_reason *)
  last_transition_time : string;  (** last_transition_time *)
  message : string;  (** message *)
  reason : string;  (** reason *)
  revision_reason : string;  (** revision_reason *)
  severity : string;  (** severity *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_cloud_run_v2_service__terminal_condition = {
  execution_reason : string;  (** execution_reason *)
  last_transition_time : string;  (** last_transition_time *)
  message : string;  (** message *)
  reason : string;  (** reason *)
  revision_reason : string;  (** revision_reason *)
  severity : string;  (** severity *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_cloud_run_v2_service__traffic_statuses = {
  percent : float;  (** percent *)
  revision : string;  (** revision *)
  tag : string;  (** tag *)
  type_ : string; [@key "type"]  (** type *)
  uri : string;  (** uri *)
}
[@@deriving yojson_of]

type google_cloud_run_v2_service

val google_cloud_run_v2_service :
  ?annotations:(string * string) list ->
  ?client:string ->
  ?client_version:string ->
  ?custom_audiences:string list ->
  ?description:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_cloud_run_v2_service__timeouts ->
  location:string ->
  name:string ->
  binary_authorization:
    google_cloud_run_v2_service__binary_authorization list ->
  template:google_cloud_run_v2_service__template list ->
  traffic:google_cloud_run_v2_service__traffic list ->
  string ->
  unit
