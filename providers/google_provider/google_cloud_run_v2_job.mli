(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_run_v2_job__binary_authorization

type google_cloud_run_v2_job__template__template__containers__env__value_source__secret_key_ref

type google_cloud_run_v2_job__template__template__containers__env__value_source

type google_cloud_run_v2_job__template__template__containers__env
type google_cloud_run_v2_job__template__template__containers__ports

type google_cloud_run_v2_job__template__template__containers__resources

type google_cloud_run_v2_job__template__template__containers__volume_mounts

type google_cloud_run_v2_job__template__template__containers

type google_cloud_run_v2_job__template__template__volumes__cloud_sql_instance

type google_cloud_run_v2_job__template__template__volumes__secret__items

type google_cloud_run_v2_job__template__template__volumes__secret
type google_cloud_run_v2_job__template__template__volumes

type google_cloud_run_v2_job__template__template__vpc_access__network_interfaces

type google_cloud_run_v2_job__template__template__vpc_access
type google_cloud_run_v2_job__template__template
type google_cloud_run_v2_job__template
type google_cloud_run_v2_job__timeouts

type google_cloud_run_v2_job__conditions = {
  execution_reason : string;  (** execution_reason *)
  last_transition_time : string;  (** last_transition_time *)
  message : string;  (** message *)
  reason : string;  (** reason *)
  revision_reason : string;  (** revision_reason *)
  severity : string;  (** severity *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
}

type google_cloud_run_v2_job__latest_created_execution = {
  completion_time : string;  (** completion_time *)
  create_time : string;  (** create_time *)
  name : string;  (** name *)
}

type google_cloud_run_v2_job__terminal_condition = {
  execution_reason : string;  (** execution_reason *)
  last_transition_time : string;  (** last_transition_time *)
  message : string;  (** message *)
  reason : string;  (** reason *)
  revision_reason : string;  (** revision_reason *)
  severity : string;  (** severity *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
}

type google_cloud_run_v2_job

val google_cloud_run_v2_job :
  ?annotations:(string * string) list ->
  ?client:string ->
  ?client_version:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?launch_stage:string ->
  ?project:string ->
  ?timeouts:google_cloud_run_v2_job__timeouts ->
  location:string ->
  name:string ->
  binary_authorization:
    google_cloud_run_v2_job__binary_authorization list ->
  template:google_cloud_run_v2_job__template list ->
  string ->
  unit
