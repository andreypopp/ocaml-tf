(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_redis_cluster__psc_configs
type google_redis_cluster__timeouts

type google_redis_cluster__discovery_endpoints__psc_config = {
  network : string;  (** network *)
}

type google_redis_cluster__discovery_endpoints = {
  address : string;  (** address *)
  port : float;  (** port *)
  psc_config :
    google_redis_cluster__discovery_endpoints__psc_config list;
      (** psc_config *)
}

type google_redis_cluster__psc_connections = {
  address : string;  (** address *)
  forwarding_rule : string;  (** forwarding_rule *)
  network : string;  (** network *)
  project_id : string;  (** project_id *)
  psc_connection_id : string;  (** psc_connection_id *)
}

type google_redis_cluster__state_info__update_info = {
  target_replica_count : float;  (** target_replica_count *)
  target_shard_count : float;  (** target_shard_count *)
}

type google_redis_cluster__state_info = {
  update_info : google_redis_cluster__state_info__update_info list;
      (** update_info *)
}

type google_redis_cluster

val google_redis_cluster :
  ?authorization_mode:string ->
  ?id:string ->
  ?name:string ->
  ?project:string ->
  ?region:string ->
  ?replica_count:float ->
  ?transit_encryption_mode:string ->
  ?timeouts:google_redis_cluster__timeouts ->
  shard_count:float ->
  psc_configs:google_redis_cluster__psc_configs list ->
  string ->
  unit
