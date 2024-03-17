(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_redis_cluster__psc_configs = {
  network : string;
      (** Required. The consumer network where the network address of
the discovery endpoint will be reserved, in the form of
projects/{network_project_id_or_number}/global/networks/{network_id}. *)
}
[@@deriving yojson_of]
(** Required. Each PscConfig configures the consumer network where two
network addresses will be designated to the cluster for client access.
Currently, only one PscConfig is supported. *)

type google_redis_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_redis_cluster__timeouts *)

type google_redis_cluster__discovery_endpoints__psc_config = {
  network : string;  (** network *)
}
[@@deriving yojson_of]

type google_redis_cluster__discovery_endpoints = {
  address : string;  (** address *)
  port : float;  (** port *)
  psc_config :
    google_redis_cluster__discovery_endpoints__psc_config list;
      (** psc_config *)
}
[@@deriving yojson_of]

type google_redis_cluster__psc_connections = {
  address : string;  (** address *)
  forwarding_rule : string;  (** forwarding_rule *)
  network : string;  (** network *)
  project_id : string;  (** project_id *)
  psc_connection_id : string;  (** psc_connection_id *)
}
[@@deriving yojson_of]

type google_redis_cluster__state_info__update_info = {
  target_replica_count : float;  (** target_replica_count *)
  target_shard_count : float;  (** target_shard_count *)
}
[@@deriving yojson_of]

type google_redis_cluster__state_info = {
  update_info : google_redis_cluster__state_info__update_info list;
      (** update_info *)
}
[@@deriving yojson_of]

type google_redis_cluster = {
  authorization_mode : string option; [@option]
      (** Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster. Default value: AUTH_MODE_DISABLED Possible values: [AUTH_MODE_UNSPECIFIED, AUTH_MODE_IAM_AUTH, AUTH_MODE_DISABLED] *)
  replica_count : float option; [@option]
      (** Optional. The number of replica nodes per shard. *)
  shard_count : float;
      (** Required. Number of shards for the Redis cluster. *)
  transit_encryption_mode : string option; [@option]
      (** Optional. The in-transit encryption for the Redis cluster.
If not provided, encryption is disabled for the cluster. Default value: TRANSIT_ENCRYPTION_MODE_DISABLED Possible values: [TRANSIT_ENCRYPTION_MODE_UNSPECIFIED, TRANSIT_ENCRYPTION_MODE_DISABLED, TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION] *)
  psc_configs : google_redis_cluster__psc_configs list;
  timeouts : google_redis_cluster__timeouts option;
}
[@@deriving yojson_of]
(** google_redis_cluster *)

let google_redis_cluster ?authorization_mode ?replica_count
    ?transit_encryption_mode ?timeouts ~shard_count ~psc_configs
    __resource_id =
  let __resource_type = "google_redis_cluster" in
  let __resource =
    {
      authorization_mode;
      replica_count;
      shard_count;
      transit_encryption_mode;
      psc_configs;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_redis_cluster __resource);
  ()
