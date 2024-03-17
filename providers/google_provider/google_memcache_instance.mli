(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_memcache_instance__maintenance_policy__weekly_maintenance_window__start_time

type google_memcache_instance__maintenance_policy__weekly_maintenance_window

type google_memcache_instance__maintenance_policy
type google_memcache_instance__memcache_parameters
type google_memcache_instance__node_config
type google_memcache_instance__timeouts

type google_memcache_instance__maintenance_schedule = {
  end_time : string;  (** end_time *)
  schedule_deadline_time : string;  (** schedule_deadline_time *)
  start_time : string;  (** start_time *)
}

type google_memcache_instance__memcache_nodes = {
  host : string;  (** host *)
  node_id : string;  (** node_id *)
  port : float;  (** port *)
  state : string;  (** state *)
  zone : string;  (** zone *)
}

type google_memcache_instance

val google_memcache_instance :
  ?authorized_network:string ->
  ?display_name:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?memcache_version:string ->
  ?project:string ->
  ?region:string ->
  ?reserved_ip_range_id:string list ->
  ?zones:string list ->
  ?timeouts:google_memcache_instance__timeouts ->
  name:string ->
  node_count:float ->
  maintenance_policy:
    google_memcache_instance__maintenance_policy list ->
  memcache_parameters:
    google_memcache_instance__memcache_parameters list ->
  node_config:google_memcache_instance__node_config list ->
  string ->
  unit
