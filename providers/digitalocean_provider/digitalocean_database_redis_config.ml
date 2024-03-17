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
    ?pubsub_client_output_buffer_limit ?ssl ?timeout ~cluster_id
    __resource_id =
  let __resource_type = "digitalocean_database_redis_config" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_redis_config __resource);
  ()
