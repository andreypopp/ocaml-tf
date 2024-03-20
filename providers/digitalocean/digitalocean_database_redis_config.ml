(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_database_redis_config = {
  acl_channels_default : string prop option; [@option]
  cluster_id : string prop;
  id : string prop option; [@option]
  io_threads : float prop option; [@option]
  lfu_decay_time : float prop option; [@option]
  lfu_log_factor : float prop option; [@option]
  maxmemory_policy : string prop option; [@option]
  notify_keyspace_events : string prop option; [@option]
  number_of_databases : float prop option; [@option]
  persistence : string prop option; [@option]
  pubsub_client_output_buffer_limit : float prop option; [@option]
  ssl : bool prop option; [@option]
  timeout : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_database_redis_config) -> ()

let yojson_of_digitalocean_database_redis_config =
  (function
   | {
       acl_channels_default = v_acl_channels_default;
       cluster_id = v_cluster_id;
       id = v_id;
       io_threads = v_io_threads;
       lfu_decay_time = v_lfu_decay_time;
       lfu_log_factor = v_lfu_log_factor;
       maxmemory_policy = v_maxmemory_policy;
       notify_keyspace_events = v_notify_keyspace_events;
       number_of_databases = v_number_of_databases;
       persistence = v_persistence;
       pubsub_client_output_buffer_limit =
         v_pubsub_client_output_buffer_limit;
       ssl = v_ssl;
       timeout = v_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ssl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pubsub_client_output_buffer_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pubsub_client_output_buffer_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_persistence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "persistence", arg in
             bnd :: bnds
       in
       let bnds =
         match v_number_of_databases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_databases", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notify_keyspace_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notify_keyspace_events", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maxmemory_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maxmemory_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lfu_log_factor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lfu_log_factor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lfu_decay_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lfu_decay_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_io_threads with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "io_threads", arg in
             bnd :: bnds
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
       let bnds =
         match v_acl_channels_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "acl_channels_default", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_database_redis_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_database_redis_config

[@@@deriving.end]

let digitalocean_database_redis_config ?acl_channels_default ?id
    ?io_threads ?lfu_decay_time ?lfu_log_factor ?maxmemory_policy
    ?notify_keyspace_events ?number_of_databases ?persistence
    ?pubsub_client_output_buffer_limit ?ssl ?timeout ~cluster_id () :
    digitalocean_database_redis_config =
  {
    acl_channels_default;
    cluster_id;
    id;
    io_threads;
    lfu_decay_time;
    lfu_log_factor;
    maxmemory_policy;
    notify_keyspace_events;
    number_of_databases;
    persistence;
    pubsub_client_output_buffer_limit;
    ssl;
    timeout;
  }

type t = {
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

let make ?acl_channels_default ?id ?io_threads ?lfu_decay_time
    ?lfu_log_factor ?maxmemory_policy ?notify_keyspace_events
    ?number_of_databases ?persistence
    ?pubsub_client_output_buffer_limit ?ssl ?timeout ~cluster_id __id
    =
  let __type = "digitalocean_database_redis_config" in
  let __attrs =
    ({
       acl_channels_default =
         Prop.computed __type __id "acl_channels_default";
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
       io_threads = Prop.computed __type __id "io_threads";
       lfu_decay_time = Prop.computed __type __id "lfu_decay_time";
       lfu_log_factor = Prop.computed __type __id "lfu_log_factor";
       maxmemory_policy =
         Prop.computed __type __id "maxmemory_policy";
       notify_keyspace_events =
         Prop.computed __type __id "notify_keyspace_events";
       number_of_databases =
         Prop.computed __type __id "number_of_databases";
       persistence = Prop.computed __type __id "persistence";
       pubsub_client_output_buffer_limit =
         Prop.computed __type __id
           "pubsub_client_output_buffer_limit";
       ssl = Prop.computed __type __id "ssl";
       timeout = Prop.computed __type __id "timeout";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_redis_config
        (digitalocean_database_redis_config ?acl_channels_default ?id
           ?io_threads ?lfu_decay_time ?lfu_log_factor
           ?maxmemory_policy ?notify_keyspace_events
           ?number_of_databases ?persistence
           ?pubsub_client_output_buffer_limit ?ssl ?timeout
           ~cluster_id ());
    attrs = __attrs;
  }

let register ?tf_module ?acl_channels_default ?id ?io_threads
    ?lfu_decay_time ?lfu_log_factor ?maxmemory_policy
    ?notify_keyspace_events ?number_of_databases ?persistence
    ?pubsub_client_output_buffer_limit ?ssl ?timeout ~cluster_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?acl_channels_default ?id ?io_threads ?lfu_decay_time
      ?lfu_log_factor ?maxmemory_policy ?notify_keyspace_events
      ?number_of_databases ?persistence
      ?pubsub_client_output_buffer_limit ?ssl ?timeout ~cluster_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
