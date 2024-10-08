(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type discovery_endpoints__psc_config = {
  network : string prop;  (** network *)
}

type discovery_endpoints = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
  psc_config : discovery_endpoints__psc_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** psc_config *)
}

type psc_connections = {
  address : string prop;  (** address *)
  forwarding_rule : string prop;  (** forwarding_rule *)
  network : string prop;  (** network *)
  project_id : string prop;  (** project_id *)
  psc_connection_id : string prop;  (** psc_connection_id *)
}

type state_info__update_info = {
  target_replica_count : float prop;  (** target_replica_count *)
  target_shard_count : float prop;  (** target_shard_count *)
}

type state_info = {
  update_info : state_info__update_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** update_info *)
}

type psc_configs

val psc_configs : network:string prop -> unit -> psc_configs

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type zone_distribution_config

val zone_distribution_config :
  ?mode:string prop ->
  ?zone:string prop ->
  unit ->
  zone_distribution_config

type google_redis_cluster

val google_redis_cluster :
  ?authorization_mode:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?node_type:string prop ->
  ?project:string prop ->
  ?redis_configs:string prop Tf_core.assoc ->
  ?region:string prop ->
  ?replica_count:float prop ->
  ?transit_encryption_mode:string prop ->
  ?timeouts:timeouts ->
  ?zone_distribution_config:zone_distribution_config list ->
  shard_count:float prop ->
  psc_configs:psc_configs list ->
  unit ->
  google_redis_cluster

val yojson_of_google_redis_cluster : google_redis_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authorization_mode : string prop;
  create_time : string prop;
  discovery_endpoints : discovery_endpoints list prop;
  id : string prop;
  name : string prop;
  node_type : string prop;
  precise_size_gb : float prop;
  project : string prop;
  psc_connections : psc_connections list prop;
  redis_configs : string Tf_core.assoc prop;
  region : string prop;
  replica_count : float prop;
  shard_count : float prop;
  size_gb : float prop;
  state : string prop;
  state_info : state_info list prop;
  transit_encryption_mode : string prop;
  uid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authorization_mode:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?node_type:string prop ->
  ?project:string prop ->
  ?redis_configs:string prop Tf_core.assoc ->
  ?region:string prop ->
  ?replica_count:float prop ->
  ?transit_encryption_mode:string prop ->
  ?timeouts:timeouts ->
  ?zone_distribution_config:zone_distribution_config list ->
  shard_count:float prop ->
  psc_configs:psc_configs list ->
  string ->
  t

val make :
  ?authorization_mode:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?node_type:string prop ->
  ?project:string prop ->
  ?redis_configs:string prop Tf_core.assoc ->
  ?region:string prop ->
  ?replica_count:float prop ->
  ?transit_encryption_mode:string prop ->
  ?timeouts:timeouts ->
  ?zone_distribution_config:zone_distribution_config list ->
  shard_count:float prop ->
  psc_configs:psc_configs list ->
  string ->
  t Tf_core.resource
