(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config = {
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
(** config *)

type digitalocean_database_kafka_topic = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partition_count : float prop option; [@option]
      (** partition_count *)
  replication_factor : float prop option; [@option]
      (** replication_factor *)
  config : config list;
}
[@@deriving yojson_of]
(** digitalocean_database_kafka_topic *)

let config ?cleanup_policy ?compression_type ?delete_retention_ms
    ?file_delete_delay_ms ?flush_messages ?flush_ms
    ?index_interval_bytes ?max_compaction_lag_ms ?max_message_bytes
    ?message_down_conversion_enable ?message_format_version
    ?message_timestamp_difference_max_ms ?message_timestamp_type
    ?min_cleanable_dirty_ratio ?min_compaction_lag_ms
    ?min_insync_replicas ?preallocate ?retention_bytes ?retention_ms
    ?segment_bytes ?segment_index_bytes ?segment_jitter_ms
    ?segment_ms () : config =
  {
    cleanup_policy;
    compression_type;
    delete_retention_ms;
    file_delete_delay_ms;
    flush_messages;
    flush_ms;
    index_interval_bytes;
    max_compaction_lag_ms;
    max_message_bytes;
    message_down_conversion_enable;
    message_format_version;
    message_timestamp_difference_max_ms;
    message_timestamp_type;
    min_cleanable_dirty_ratio;
    min_compaction_lag_ms;
    min_insync_replicas;
    preallocate;
    retention_bytes;
    retention_ms;
    segment_bytes;
    segment_index_bytes;
    segment_jitter_ms;
    segment_ms;
  }

let digitalocean_database_kafka_topic ?id ?partition_count
    ?replication_factor ~cluster_id ~name ~config () :
    digitalocean_database_kafka_topic =
  {
    cluster_id;
    id;
    name;
    partition_count;
    replication_factor;
    config;
  }

type t = {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  partition_count : float prop;
  replication_factor : float prop;
  state : string prop;
}

let make ?id ?partition_count ?replication_factor ~cluster_id ~name
    ~config __id =
  let __type = "digitalocean_database_kafka_topic" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       partition_count = Prop.computed __type __id "partition_count";
       replication_factor =
         Prop.computed __type __id "replication_factor";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_kafka_topic
        (digitalocean_database_kafka_topic ?id ?partition_count
           ?replication_factor ~cluster_id ~name ~config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?partition_count ?replication_factor
    ~cluster_id ~name ~config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?partition_count ?replication_factor ~cluster_id ~name
      ~config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
