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

type google_redis_instance__nodes = {
  id : string;  (** id *)
  zone : string;  (** zone *)
}

type google_redis_instance__server_ca_certs = {
  cert : string;  (** cert *)
  create_time : string;  (** create_time *)
  expire_time : string;  (** expire_time *)
  serial_number : string;  (** serial_number *)
  sha1_fingerprint : string;  (** sha1_fingerprint *)
}

type google_redis_instance

val google_redis_instance :
  ?alternative_location_id:string ->
  ?auth_enabled:bool ->
  ?authorized_network:string ->
  ?connect_mode:string ->
  ?customer_managed_key:string ->
  ?display_name:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?location_id:string ->
  ?project:string ->
  ?read_replicas_mode:string ->
  ?redis_configs:(string * string) list ->
  ?redis_version:string ->
  ?region:string ->
  ?replica_count:float ->
  ?reserved_ip_range:string ->
  ?secondary_ip_range:string ->
  ?tier:string ->
  ?transit_encryption_mode:string ->
  ?timeouts:google_redis_instance__timeouts ->
  memory_size_gb:float ->
  name:string ->
  maintenance_policy:google_redis_instance__maintenance_policy list ->
  persistence_config:google_redis_instance__persistence_config list ->
  string ->
  unit
