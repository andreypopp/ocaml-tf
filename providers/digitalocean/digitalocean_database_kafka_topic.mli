(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type config

val config :
  ?cleanup_policy:string prop ->
  ?compression_type:string prop ->
  ?delete_retention_ms:string prop ->
  ?file_delete_delay_ms:string prop ->
  ?flush_messages:string prop ->
  ?flush_ms:string prop ->
  ?index_interval_bytes:string prop ->
  ?max_compaction_lag_ms:string prop ->
  ?max_message_bytes:string prop ->
  ?message_down_conversion_enable:bool prop ->
  ?message_format_version:string prop ->
  ?message_timestamp_difference_max_ms:string prop ->
  ?message_timestamp_type:string prop ->
  ?min_cleanable_dirty_ratio:float prop ->
  ?min_compaction_lag_ms:string prop ->
  ?min_insync_replicas:float prop ->
  ?preallocate:bool prop ->
  ?retention_bytes:string prop ->
  ?retention_ms:string prop ->
  ?segment_bytes:string prop ->
  ?segment_index_bytes:string prop ->
  ?segment_jitter_ms:string prop ->
  ?segment_ms:string prop ->
  unit ->
  config

type digitalocean_database_kafka_topic

val digitalocean_database_kafka_topic :
  ?id:string prop ->
  ?partition_count:float prop ->
  ?replication_factor:float prop ->
  ?config:config list ->
  cluster_id:string prop ->
  name:string prop ->
  unit ->
  digitalocean_database_kafka_topic

val yojson_of_digitalocean_database_kafka_topic :
  digitalocean_database_kafka_topic -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  partition_count : float prop;
  replication_factor : float prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?partition_count:float prop ->
  ?replication_factor:float prop ->
  ?config:config list ->
  cluster_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?partition_count:float prop ->
  ?replication_factor:float prop ->
  ?config:config list ->
  cluster_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
