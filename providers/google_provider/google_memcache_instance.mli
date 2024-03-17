(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_memcache_instance__maintenance_policy__weekly_maintenance_window__start_time

type google_memcache_instance__maintenance_policy__weekly_maintenance_window

type google_memcache_instance__maintenance_policy
type google_memcache_instance__memcache_parameters
type google_memcache_instance__node_config
type google_memcache_instance__timeouts

type google_memcache_instance__maintenance_schedule = {
  end_time : string prop;  (** end_time *)
  schedule_deadline_time : string prop;
      (** schedule_deadline_time *)
  start_time : string prop;  (** start_time *)
}

type google_memcache_instance__memcache_nodes = {
  host : string prop;  (** host *)
  node_id : string prop;  (** node_id *)
  port : float prop;  (** port *)
  state : string prop;  (** state *)
  zone : string prop;  (** zone *)
}

type google_memcache_instance

type t = private {
  authorized_network : string prop;
  create_time : string prop;
  discovery_endpoint : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  maintenance_schedule :
    google_memcache_instance__maintenance_schedule list prop;
  memcache_full_version : string prop;
  memcache_nodes :
    google_memcache_instance__memcache_nodes list prop;
  memcache_version : string prop;
  name : string prop;
  node_count : float prop;
  project : string prop;
  region : string prop;
  reserved_ip_range_id : string list prop;
  terraform_labels : (string * string) list prop;
  zones : string list prop;
}

val google_memcache_instance :
  ?authorized_network:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?memcache_version:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?reserved_ip_range_id:string prop list ->
  ?zones:string prop list ->
  ?timeouts:google_memcache_instance__timeouts ->
  name:string prop ->
  node_count:float prop ->
  maintenance_policy:
    google_memcache_instance__maintenance_policy list ->
  memcache_parameters:
    google_memcache_instance__memcache_parameters list ->
  node_config:google_memcache_instance__node_config list ->
  string ->
  t
