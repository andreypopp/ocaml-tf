(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_redis_config = {
  acl_channels_default : string prop option; [@option]
      (** acl_channels_default *)
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  io_threads : float prop option; [@option]  (** io_threads *)
  lfu_decay_time : float prop option; [@option]
      (** lfu_decay_time *)
  lfu_log_factor : float prop option; [@option]
      (** lfu_log_factor *)
  maxmemory_policy : string prop option; [@option]
      (** maxmemory_policy *)
  notify_keyspace_events : string prop option; [@option]
      (** notify_keyspace_events *)
  number_of_databases : float prop option; [@option]
      (** number_of_databases *)
  persistence : string prop option; [@option]  (** persistence *)
  pubsub_client_output_buffer_limit : float prop option; [@option]
      (** pubsub_client_output_buffer_limit *)
  ssl : bool prop option; [@option]  (** ssl *)
  timeout : float prop option; [@option]  (** timeout *)
}
[@@deriving yojson_of]
(** digitalocean_database_redis_config *)

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

let register ?tf_module ?acl_channels_default ?id ?io_threads
    ?lfu_decay_time ?lfu_log_factor ?maxmemory_policy
    ?notify_keyspace_events ?number_of_databases ?persistence
    ?pubsub_client_output_buffer_limit ?ssl ?timeout ~cluster_id
    __resource_id =
  let __resource_type = "digitalocean_database_redis_config" in
  let __resource =
    digitalocean_database_redis_config ?acl_channels_default ?id
      ?io_threads ?lfu_decay_time ?lfu_log_factor ?maxmemory_policy
      ?notify_keyspace_events ?number_of_databases ?persistence
      ?pubsub_client_output_buffer_limit ?ssl ?timeout ~cluster_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_redis_config __resource);
  let __resource_attributes =
    ({
       acl_channels_default =
         Prop.computed __resource_type __resource_id
           "acl_channels_default";
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       id = Prop.computed __resource_type __resource_id "id";
       io_threads =
         Prop.computed __resource_type __resource_id "io_threads";
       lfu_decay_time =
         Prop.computed __resource_type __resource_id "lfu_decay_time";
       lfu_log_factor =
         Prop.computed __resource_type __resource_id "lfu_log_factor";
       maxmemory_policy =
         Prop.computed __resource_type __resource_id
           "maxmemory_policy";
       notify_keyspace_events =
         Prop.computed __resource_type __resource_id
           "notify_keyspace_events";
       number_of_databases =
         Prop.computed __resource_type __resource_id
           "number_of_databases";
       persistence =
         Prop.computed __resource_type __resource_id "persistence";
       pubsub_client_output_buffer_limit =
         Prop.computed __resource_type __resource_id
           "pubsub_client_output_buffer_limit";
       ssl = Prop.computed __resource_type __resource_id "ssl";
       timeout =
         Prop.computed __resource_type __resource_id "timeout";
     }
      : t)
  in
  __resource_attributes
