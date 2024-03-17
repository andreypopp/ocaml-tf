(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_redis_instance__maintenance_policy__weekly_maintenance_window__start_time

type google_redis_instance__maintenance_policy__weekly_maintenance_window

type google_redis_instance__maintenance_policy
type google_redis_instance__persistence_config
type google_redis_instance__timeouts

type google_redis_instance__maintenance_schedule = {
  end_time : string;  (** end_time *)
  schedule_deadline_time : string;  (** schedule_deadline_time *)
  start_time : string;  (** start_time *)
}
[@@deriving yojson_of]

type google_redis_instance__nodes = {
  id : string;  (** id *)
  zone : string;  (** zone *)
}
[@@deriving yojson_of]

type google_redis_instance__server_ca_certs = {
  cert : string;  (** cert *)
  create_time : string;  (** create_time *)
  expire_time : string;  (** expire_time *)
  serial_number : string;  (** serial_number *)
  sha1_fingerprint : string;  (** sha1_fingerprint *)
}
[@@deriving yojson_of]

type google_redis_instance

val google_redis_instance :
  ?auth_enabled:bool ->
  ?connect_mode:string ->
  ?customer_managed_key:string ->
  ?display_name:string ->
  ?labels:(string * string) list ->
  ?redis_configs:(string * string) list ->
  ?tier:string ->
  ?transit_encryption_mode:string ->
  ?timeouts:google_redis_instance__timeouts ->
  memory_size_gb:float ->
  name:string ->
  maintenance_policy:google_redis_instance__maintenance_policy list ->
  persistence_config:google_redis_instance__persistence_config list ->
  string ->
  unit
