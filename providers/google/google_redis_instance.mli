(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_redis_instance__maintenance_policy__weekly_maintenance_window__start_time

type google_redis_instance__maintenance_policy__weekly_maintenance_window

type google_redis_instance__maintenance_policy
type google_redis_instance__persistence_config
type google_redis_instance__timeouts

type google_redis_instance__maintenance_schedule = {
  end_time : string prop;  (** end_time *)
  schedule_deadline_time : string prop;
      (** schedule_deadline_time *)
  start_time : string prop;  (** start_time *)
}

type google_redis_instance__nodes = {
  id : string prop;  (** id *)
  zone : string prop;  (** zone *)
}

type google_redis_instance__server_ca_certs = {
  cert : string prop;  (** cert *)
  create_time : string prop;  (** create_time *)
  expire_time : string prop;  (** expire_time *)
  serial_number : string prop;  (** serial_number *)
  sha1_fingerprint : string prop;  (** sha1_fingerprint *)
}

type google_redis_instance

type t = private {
  alternative_location_id : string prop;
  auth_enabled : bool prop;
  auth_string : string prop;
  authorized_network : string prop;
  connect_mode : string prop;
  create_time : string prop;
  current_location_id : string prop;
  customer_managed_key : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  host : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location_id : string prop;
  maintenance_schedule :
    google_redis_instance__maintenance_schedule list prop;
  memory_size_gb : float prop;
  name : string prop;
  nodes : google_redis_instance__nodes list prop;
  persistence_iam_identity : string prop;
  port : float prop;
  project : string prop;
  read_endpoint : string prop;
  read_endpoint_port : float prop;
  read_replicas_mode : string prop;
  redis_configs : (string * string) list prop;
  redis_version : string prop;
  region : string prop;
  replica_count : float prop;
  reserved_ip_range : string prop;
  secondary_ip_range : string prop;
  server_ca_certs : google_redis_instance__server_ca_certs list prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
  transit_encryption_mode : string prop;
}

val google_redis_instance :
  ?alternative_location_id:string prop ->
  ?auth_enabled:bool prop ->
  ?authorized_network:string prop ->
  ?connect_mode:string prop ->
  ?customer_managed_key:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location_id:string prop ->
  ?project:string prop ->
  ?read_replicas_mode:string prop ->
  ?redis_configs:(string * string prop) list ->
  ?redis_version:string prop ->
  ?region:string prop ->
  ?replica_count:float prop ->
  ?reserved_ip_range:string prop ->
  ?secondary_ip_range:string prop ->
  ?tier:string prop ->
  ?transit_encryption_mode:string prop ->
  ?timeouts:google_redis_instance__timeouts ->
  memory_size_gb:float prop ->
  name:string prop ->
  maintenance_policy:google_redis_instance__maintenance_policy list ->
  persistence_config:google_redis_instance__persistence_config list ->
  string ->
  t
