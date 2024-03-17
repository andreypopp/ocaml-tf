(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_redis_config

val digitalocean_database_redis_config :
  ?acl_channels_default:string ->
  ?id:string ->
  ?io_threads:float ->
  ?lfu_decay_time:float ->
  ?lfu_log_factor:float ->
  ?maxmemory_policy:string ->
  ?notify_keyspace_events:string ->
  ?number_of_databases:float ->
  ?persistence:string ->
  ?pubsub_client_output_buffer_limit:float ->
  ?ssl:bool ->
  ?timeout:float ->
  cluster_id:string ->
  string ->
  unit
