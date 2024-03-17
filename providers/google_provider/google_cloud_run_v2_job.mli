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
  execution_reason : string prop;  (** execution_reason *)
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  revision_reason : string prop;  (** revision_reason *)
  severity : string prop;  (** severity *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_cloud_run_v2_job__latest_created_execution = {
  completion_time : string prop;  (** completion_time *)
  create_time : string prop;  (** create_time *)
  name : string prop;  (** name *)
}

type google_cloud_run_v2_job__terminal_condition = {
  execution_reason : string prop;  (** execution_reason *)
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  revision_reason : string prop;  (** revision_reason *)
  severity : string prop;  (** severity *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_cloud_run_v2_job

val google_cloud_run_v2_job :
  ?annotations:(string * string prop) list ->
  ?client:string prop ->
  ?client_version:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?launch_stage:string prop ->
  ?project:string prop ->
  ?timeouts:google_cloud_run_v2_job__timeouts ->
  location:string prop ->
  name:string prop ->
  binary_authorization:
    google_cloud_run_v2_job__binary_authorization list ->
  template:google_cloud_run_v2_job__template list ->
  string ->
  unit
