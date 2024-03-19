(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type digitalocean_database_redis_config

val digitalocean_database_redis_config :
  ?acl_channels_default:string prop ->
  ?id:string prop ->
  ?io_threads:float prop ->
  ?lfu_decay_time:float prop ->
  ?lfu_log_factor:float prop ->
  ?maxmemory_policy:string prop ->
  ?notify_keyspace_events:string prop ->
  ?number_of_databases:float prop ->
  ?persistence:string prop ->
  ?pubsub_client_output_buffer_limit:float prop ->
  ?ssl:bool prop ->
  ?timeout:float prop ->
  cluster_id:string prop ->
  unit ->
  digitalocean_database_redis_config

val yojson_of_digitalocean_database_redis_config :
  digitalocean_database_redis_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  acl_channels_default : string prop;
  cluster_id : string prop;
  id : string prop;
  io_threads : float prop;
  lfu_decay_time : float prop;
  lfu_log_factor : float prop;
  maxmemory_policy : string prop;
  notify_keyspace_events : string prop;
  number_of_databases : float prop;
  persistence : string prop;
  pubsub_client_output_buffer_limit : float prop;
  ssl : bool prop;
  timeout : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?acl_channels_default:string prop ->
  ?id:string prop ->
  ?io_threads:float prop ->
  ?lfu_decay_time:float prop ->
  ?lfu_log_factor:float prop ->
  ?maxmemory_policy:string prop ->
  ?notify_keyspace_events:string prop ->
  ?number_of_databases:float prop ->
  ?persistence:string prop ->
  ?pubsub_client_output_buffer_limit:float prop ->
  ?ssl:bool prop ->
  ?timeout:float prop ->
  cluster_id:string prop ->
  string ->
  t
