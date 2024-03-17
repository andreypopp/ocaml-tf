(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_kafka_topic__config = {
  cleanup_policy : string option; [@option]  (** cleanup_policy *)
  compression_type : string option; [@option]
      (** compression_type *)
  delete_retention_ms : string option; [@option]
      (** delete_retention_ms *)
  file_delete_delay_ms : string option; [@option]
      (** file_delete_delay_ms *)
  flush_messages : string option; [@option]  (** flush_messages *)
  flush_ms : string option; [@option]  (** flush_ms *)
  index_interval_bytes : string option; [@option]
      (** index_interval_bytes *)
  max_compaction_lag_ms : string option; [@option]
      (** max_compaction_lag_ms *)
  max_message_bytes : string option; [@option]
      (** max_message_bytes *)
  message_down_conversion_enable : bool option; [@option]
      (** message_down_conversion_enable *)
  message_format_version : string option; [@option]
      (** message_format_version *)
  message_timestamp_difference_max_ms : string option; [@option]
      (** message_timestamp_difference_max_ms *)
  message_timestamp_type : string option; [@option]
      (** message_timestamp_type *)
  min_cleanable_dirty_ratio : float option; [@option]
      (** min_cleanable_dirty_ratio *)
  min_compaction_lag_ms : string option; [@option]
      (** min_compaction_lag_ms *)
  min_insync_replicas : float option; [@option]
      (** min_insync_replicas *)
  preallocate : bool option; [@option]  (** preallocate *)
  retention_bytes : string option; [@option]  (** retention_bytes *)
  retention_ms : string option; [@option]  (** retention_ms *)
  segment_bytes : string option; [@option]  (** segment_bytes *)
  segment_index_bytes : string option; [@option]
      (** segment_index_bytes *)
  segment_jitter_ms : string option; [@option]
      (** segment_jitter_ms *)
  segment_ms : string option; [@option]  (** segment_ms *)
}
[@@deriving yojson_of]
(** digitalocean_database_kafka_topic__config *)

type digitalocean_database_kafka_topic = {
  cluster_id : string;  (** cluster_id *)
  name : string;  (** name *)
  partition_count : float option; [@option]  (** partition_count *)
  replication_factor : float option; [@option]
      (** replication_factor *)
  config : digitalocean_database_kafka_topic__config list;
}
[@@deriving yojson_of]
(** digitalocean_database_kafka_topic *)

let digitalocean_database_kafka_topic ?partition_count
    ?replication_factor ~cluster_id ~name ~config __resource_id =
  let __resource_type = "digitalocean_database_kafka_topic" in
  let __resource =
    { cluster_id; name; partition_count; replication_factor; config }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_kafka_topic __resource);
  ()
