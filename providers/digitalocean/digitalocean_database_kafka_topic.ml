(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config = {
  cleanup_policy : string prop option; [@option]
  compression_type : string prop option; [@option]
  delete_retention_ms : string prop option; [@option]
  file_delete_delay_ms : string prop option; [@option]
  flush_messages : string prop option; [@option]
  flush_ms : string prop option; [@option]
  index_interval_bytes : string prop option; [@option]
  max_compaction_lag_ms : string prop option; [@option]
  max_message_bytes : string prop option; [@option]
  message_down_conversion_enable : bool prop option; [@option]
  message_format_version : string prop option; [@option]
  message_timestamp_difference_max_ms : string prop option; [@option]
  message_timestamp_type : string prop option; [@option]
  min_cleanable_dirty_ratio : float prop option; [@option]
  min_compaction_lag_ms : string prop option; [@option]
  min_insync_replicas : float prop option; [@option]
  preallocate : bool prop option; [@option]
  retention_bytes : string prop option; [@option]
  retention_ms : string prop option; [@option]
  segment_bytes : string prop option; [@option]
  segment_index_bytes : string prop option; [@option]
  segment_jitter_ms : string prop option; [@option]
  segment_ms : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | {
       cleanup_policy = v_cleanup_policy;
       compression_type = v_compression_type;
       delete_retention_ms = v_delete_retention_ms;
       file_delete_delay_ms = v_file_delete_delay_ms;
       flush_messages = v_flush_messages;
       flush_ms = v_flush_ms;
       index_interval_bytes = v_index_interval_bytes;
       max_compaction_lag_ms = v_max_compaction_lag_ms;
       max_message_bytes = v_max_message_bytes;
       message_down_conversion_enable =
         v_message_down_conversion_enable;
       message_format_version = v_message_format_version;
       message_timestamp_difference_max_ms =
         v_message_timestamp_difference_max_ms;
       message_timestamp_type = v_message_timestamp_type;
       min_cleanable_dirty_ratio = v_min_cleanable_dirty_ratio;
       min_compaction_lag_ms = v_min_compaction_lag_ms;
       min_insync_replicas = v_min_insync_replicas;
       preallocate = v_preallocate;
       retention_bytes = v_retention_bytes;
       retention_ms = v_retention_ms;
       segment_bytes = v_segment_bytes;
       segment_index_bytes = v_segment_index_bytes;
       segment_jitter_ms = v_segment_jitter_ms;
       segment_ms = v_segment_ms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_segment_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "segment_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segment_jitter_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "segment_jitter_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segment_index_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "segment_index_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segment_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "segment_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retention_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retention_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preallocate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preallocate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_insync_replicas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_insync_replicas", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_compaction_lag_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_compaction_lag_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_cleanable_dirty_ratio with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_cleanable_dirty_ratio", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_timestamp_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_timestamp_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_timestamp_difference_max_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_timestamp_difference_max_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_format_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_format_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_down_conversion_enable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "message_down_conversion_enable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_message_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_message_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_compaction_lag_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_compaction_lag_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_index_interval_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "index_interval_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_flush_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "flush_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_flush_messages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "flush_messages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_delete_delay_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_delete_delay_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_retention_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete_retention_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cleanup_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cleanup_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config

[@@@deriving.end]

type digitalocean_database_kafka_topic = {
  cluster_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  partition_count : float prop option; [@option]
  replication_factor : float prop option; [@option]
  config : config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_database_kafka_topic) -> ()

let yojson_of_digitalocean_database_kafka_topic =
  (function
   | {
       cluster_id = v_cluster_id;
       id = v_id;
       name = v_name;
       partition_count = v_partition_count;
       replication_factor = v_replication_factor;
       config = v_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_config v_config in
         ("config", arg) :: bnds
       in
       let bnds =
         match v_replication_factor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replication_factor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partition_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "partition_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_database_kafka_topic ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_database_kafka_topic

[@@@deriving.end]

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
    ?replication_factor ?(config = []) ~cluster_id ~name () :
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

let make ?id ?partition_count ?replication_factor ?(config = [])
    ~cluster_id ~name __id =
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
           ?replication_factor ~config ~cluster_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?partition_count ?replication_factor
    ?(config = []) ~cluster_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?partition_count ?replication_factor ~config ~cluster_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
