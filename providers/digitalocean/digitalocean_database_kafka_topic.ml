(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_kafka_topic__config = {
  cleanup_policy : string prop option; [@option]
      (** cleanup_policy *)
  compression_type : string prop option; [@option]
      (** compression_type *)
  delete_retention_ms : string prop option; [@option]
      (** delete_retention_ms *)
  file_delete_delay_ms : string prop option; [@option]
      (** file_delete_delay_ms *)
  flush_messages : string prop option; [@option]
      (** flush_messages *)
  flush_ms : string prop option; [@option]  (** flush_ms *)
  index_interval_bytes : string prop option; [@option]
      (** index_interval_bytes *)
  max_compaction_lag_ms : string prop option; [@option]
      (** max_compaction_lag_ms *)
  max_message_bytes : string prop option; [@option]
      (** max_message_bytes *)
  message_down_conversion_enable : bool prop option; [@option]
      (** message_down_conversion_enable *)
  message_format_version : string prop option; [@option]
      (** message_format_version *)
  message_timestamp_difference_max_ms : string prop option; [@option]
      (** message_timestamp_difference_max_ms *)
  message_timestamp_type : string prop option; [@option]
      (** message_timestamp_type *)
  min_cleanable_dirty_ratio : float prop option; [@option]
      (** min_cleanable_dirty_ratio *)
  min_compaction_lag_ms : string prop option; [@option]
      (** min_compaction_lag_ms *)
  min_insync_replicas : float prop option; [@option]
      (** min_insync_replicas *)
  preallocate : bool prop option; [@option]  (** preallocate *)
  retention_bytes : string prop option; [@option]
      (** retention_bytes *)
  retention_ms : string prop option; [@option]  (** retention_ms *)
  segment_bytes : string prop option; [@option]  (** segment_bytes *)
  segment_index_bytes : string prop option; [@option]
      (** segment_index_bytes *)
  segment_jitter_ms : string prop option; [@option]
      (** segment_jitter_ms *)
  segment_ms : string prop option; [@option]  (** segment_ms *)
}
[@@deriving yojson_of]
(** digitalocean_database_kafka_topic__config *)

type digitalocean_database_kafka_topic = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partition_count : float prop option; [@option]
      (** partition_count *)
  replication_factor : float prop option; [@option]
      (** replication_factor *)
  config : digitalocean_database_kafka_topic__config list;
}
[@@deriving yojson_of]
(** digitalocean_database_kafka_topic *)

type t = {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  partition_count : float prop;
  replication_factor : float prop;
  state : string prop;
}

let digitalocean_database_kafka_topic ?id ?partition_count
    ?replication_factor ~cluster_id ~name ~config __resource_id =
  let __resource_type = "digitalocean_database_kafka_topic" in
  let __resource =
    ({
       cluster_id;
       id;
       name;
       partition_count;
       replication_factor;
       config;
     }
      : digitalocean_database_kafka_topic)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_kafka_topic __resource);
  let __resource_attributes =
    ({
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       partition_count =
         Prop.computed __resource_type __resource_id
           "partition_count";
       replication_factor =
         Prop.computed __resource_type __resource_id
           "replication_factor";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
