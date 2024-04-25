(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type maintenance_schedule = {
  end_time : string prop;  (** end_time *)
  schedule_deadline_time : string prop;
      (** schedule_deadline_time *)
  start_time : string prop;  (** start_time *)
}

type nodes = {
  id : string prop;  (** id *)
  zone : string prop;  (** zone *)
}

type server_ca_certs = {
  cert : string prop;  (** cert *)
  create_time : string prop;  (** create_time *)
  expire_time : string prop;  (** expire_time *)
  serial_number : string prop;  (** serial_number *)
  sha1_fingerprint : string prop;  (** sha1_fingerprint *)
}

type maintenance_policy__weekly_maintenance_window__start_time

val maintenance_policy__weekly_maintenance_window__start_time :
  ?hours:float prop ->
  ?minutes:float prop ->
  ?nanos:float prop ->
  ?seconds:float prop ->
  unit ->
  maintenance_policy__weekly_maintenance_window__start_time

type maintenance_policy__weekly_maintenance_window

val maintenance_policy__weekly_maintenance_window :
  day:string prop ->
  start_time:
    maintenance_policy__weekly_maintenance_window__start_time list ->
  unit ->
  maintenance_policy__weekly_maintenance_window

type maintenance_policy

val maintenance_policy :
  ?description:string prop ->
  ?weekly_maintenance_window:
    maintenance_policy__weekly_maintenance_window list ->
  unit ->
  maintenance_policy

type persistence_config

val persistence_config :
  ?persistence_mode:string prop ->
  ?rdb_snapshot_period:string prop ->
  ?rdb_snapshot_start_time:string prop ->
  unit ->
  persistence_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_redis_instance

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
  ?maintenance_policy:maintenance_policy list ->
  ?persistence_config:persistence_config list ->
  ?timeouts:timeouts ->
  memory_size_gb:float prop ->
  name:string prop ->
  unit ->
  google_redis_instance

val yojson_of_google_redis_instance : google_redis_instance -> json

(** RESOURCE REGISTRATION *)

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
  maintenance_schedule : maintenance_schedule list prop;
  memory_size_gb : float prop;
  name : string prop;
  nodes : nodes list prop;
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
  server_ca_certs : server_ca_certs list prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
  transit_encryption_mode : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?maintenance_policy:maintenance_policy list ->
  ?persistence_config:persistence_config list ->
  ?timeouts:timeouts ->
  memory_size_gb:float prop ->
  name:string prop ->
  string ->
  t

val make :
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
  ?maintenance_policy:maintenance_policy list ->
  ?persistence_config:persistence_config list ->
  ?timeouts:timeouts ->
  memory_size_gb:float prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
