(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_redis_cluster__psc_configs
type google_redis_cluster__timeouts

type google_redis_cluster__discovery_endpoints__psc_config = {
  network : string prop;  (** network *)
}

type google_redis_cluster__discovery_endpoints = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
  psc_config :
    google_redis_cluster__discovery_endpoints__psc_config list;
      (** psc_config *)
}

type google_redis_cluster__psc_connections = {
  address : string prop;  (** address *)
  forwarding_rule : string prop;  (** forwarding_rule *)
  network : string prop;  (** network *)
  project_id : string prop;  (** project_id *)
  psc_connection_id : string prop;  (** psc_connection_id *)
}

type google_redis_cluster__state_info__update_info = {
  target_replica_count : float prop;  (** target_replica_count *)
  target_shard_count : float prop;  (** target_shard_count *)
}

type google_redis_cluster__state_info = {
  update_info : google_redis_cluster__state_info__update_info list;
      (** update_info *)
}

type google_redis_cluster

type t = private {
  authorization_mode : string prop;
  create_time : string prop;
  discovery_endpoints :
    google_redis_cluster__discovery_endpoints list prop;
  id : string prop;
  name : string prop;
  project : string prop;
  psc_connections : google_redis_cluster__psc_connections list prop;
  region : string prop;
  replica_count : float prop;
  shard_count : float prop;
  size_gb : float prop;
  state : string prop;
  state_info : google_redis_cluster__state_info list prop;
  transit_encryption_mode : string prop;
  uid : string prop;
}

val google_redis_cluster :
  ?authorization_mode:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?replica_count:float prop ->
  ?transit_encryption_mode:string prop ->
  ?timeouts:google_redis_cluster__timeouts ->
  shard_count:float prop ->
  psc_configs:google_redis_cluster__psc_configs list ->
  string ->
  t
