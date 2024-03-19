(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type psc_configs = {
  network : string prop;
      (** Required. The consumer network where the network address of
the discovery endpoint will be reserved, in the form of
projects/{network_project_id_or_number}/global/networks/{network_id}. *)
}
[@@deriving yojson_of]
(** Required. Each PscConfig configures the consumer network where two
network addresses will be designated to the cluster for client access.
Currently, only one PscConfig is supported. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type discovery_endpoints__psc_config = {
  network : string prop;  (** network *)
}
[@@deriving yojson_of]

type discovery_endpoints = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
  psc_config : discovery_endpoints__psc_config list;
      (** psc_config *)
}
[@@deriving yojson_of]

type psc_connections = {
  address : string prop;  (** address *)
  forwarding_rule : string prop;  (** forwarding_rule *)
  network : string prop;  (** network *)
  project_id : string prop;  (** project_id *)
  psc_connection_id : string prop;  (** psc_connection_id *)
}
[@@deriving yojson_of]

type state_info__update_info = {
  target_replica_count : float prop;  (** target_replica_count *)
  target_shard_count : float prop;  (** target_shard_count *)
}
[@@deriving yojson_of]

type state_info = {
  update_info : state_info__update_info list;  (** update_info *)
}
[@@deriving yojson_of]

type google_redis_cluster = {
  authorization_mode : string prop option; [@option]
      (** Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster. Default value: AUTH_MODE_DISABLED Possible values: [AUTH_MODE_UNSPECIFIED, AUTH_MODE_IAM_AUTH, AUTH_MODE_DISABLED] *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]
      (** Unique name of the resource in this scope including project and location using the form:
projects/{projectId}/locations/{locationId}/clusters/{clusterId} *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The name of the region of the Redis cluster. *)
  replica_count : float prop option; [@option]
      (** Optional. The number of replica nodes per shard. *)
  shard_count : float prop;
      (** Required. Number of shards for the Redis cluster. *)
  transit_encryption_mode : string prop option; [@option]
      (** Optional. The in-transit encryption for the Redis cluster.
If not provided, encryption is disabled for the cluster. Default value: TRANSIT_ENCRYPTION_MODE_DISABLED Possible values: [TRANSIT_ENCRYPTION_MODE_UNSPECIFIED, TRANSIT_ENCRYPTION_MODE_DISABLED, TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION] *)
  psc_configs : psc_configs list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_redis_cluster *)

let psc_configs ~network () : psc_configs = { network }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_redis_cluster ?authorization_mode ?id ?name ?project
    ?region ?replica_count ?transit_encryption_mode ?timeouts
    ~shard_count ~psc_configs () : google_redis_cluster =
  {
    authorization_mode;
    id;
    name;
    project;
    region;
    replica_count;
    shard_count;
    transit_encryption_mode;
    psc_configs;
    timeouts;
  }

type t = {
  authorization_mode : string prop;
  create_time : string prop;
  discovery_endpoints : discovery_endpoints list prop;
  id : string prop;
  name : string prop;
  project : string prop;
  psc_connections : psc_connections list prop;
  region : string prop;
  replica_count : float prop;
  shard_count : float prop;
  size_gb : float prop;
  state : string prop;
  state_info : state_info list prop;
  transit_encryption_mode : string prop;
  uid : string prop;
}

let register ?tf_module ?authorization_mode ?id ?name ?project
    ?region ?replica_count ?transit_encryption_mode ?timeouts
    ~shard_count ~psc_configs __resource_id =
  let __resource_type = "google_redis_cluster" in
  let __resource =
    google_redis_cluster ?authorization_mode ?id ?name ?project
      ?region ?replica_count ?transit_encryption_mode ?timeouts
      ~shard_count ~psc_configs ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_redis_cluster __resource);
  let __resource_attributes =
    ({
       authorization_mode =
         Prop.computed __resource_type __resource_id
           "authorization_mode";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       discovery_endpoints =
         Prop.computed __resource_type __resource_id
           "discovery_endpoints";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       psc_connections =
         Prop.computed __resource_type __resource_id
           "psc_connections";
       region = Prop.computed __resource_type __resource_id "region";
       replica_count =
         Prop.computed __resource_type __resource_id "replica_count";
       shard_count =
         Prop.computed __resource_type __resource_id "shard_count";
       size_gb =
         Prop.computed __resource_type __resource_id "size_gb";
       state = Prop.computed __resource_type __resource_id "state";
       state_info =
         Prop.computed __resource_type __resource_id "state_info";
       transit_encryption_mode =
         Prop.computed __resource_type __resource_id
           "transit_encryption_mode";
       uid = Prop.computed __resource_type __resource_id "uid";
     }
      : t)
  in
  __resource_attributes
