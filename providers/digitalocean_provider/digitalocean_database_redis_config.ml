(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_redis_config = {
  acl_channels_default : string option; [@option]
      (** acl_channels_default *)
  cluster_id : string;  (** cluster_id *)
  id : string option; [@option]  (** id *)
  io_threads : float option; [@option]  (** io_threads *)
  lfu_decay_time : float option; [@option]  (** lfu_decay_time *)
  lfu_log_factor : float option; [@option]  (** lfu_log_factor *)
  maxmemory_policy : string option; [@option]
      (** maxmemory_policy *)
  notify_keyspace_events : string option; [@option]
      (** notify_keyspace_events *)
  number_of_databases : float option; [@option]
      (** number_of_databases *)
  persistence : string option; [@option]  (** persistence *)
  pubsub_client_output_buffer_limit : float option; [@option]
      (** pubsub_client_output_buffer_limit *)
  ssl : bool option; [@option]  (** ssl *)
  timeout : float option; [@option]  (** timeout *)
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
