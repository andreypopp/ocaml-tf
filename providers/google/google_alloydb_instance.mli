(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type client_connection_config__ssl_config

val client_connection_config__ssl_config :
  ?ssl_mode:string prop ->
  unit ->
  client_connection_config__ssl_config

type client_connection_config

val client_connection_config :
  ?require_connectors:bool prop ->
  ?ssl_config:client_connection_config__ssl_config list ->
  unit ->
  client_connection_config

type machine_config

val machine_config : ?cpu_count:float prop -> unit -> machine_config

type network_config__authorized_external_networks

val network_config__authorized_external_networks :
  ?cidr_range:string prop ->
  unit ->
  network_config__authorized_external_networks

type network_config

val network_config :
  ?enable_public_ip:bool prop ->
  ?authorized_external_networks:
    network_config__authorized_external_networks list ->
  unit ->
  network_config

type psc_instance_config

val psc_instance_config :
  ?allowed_consumer_projects:string prop list ->
  unit ->
  psc_instance_config

type query_insights_config

val query_insights_config :
  ?query_plans_per_minute:float prop ->
  ?query_string_length:float prop ->
  ?record_application_tags:bool prop ->
  ?record_client_address:bool prop ->
  unit ->
  query_insights_config

type read_pool_config

val read_pool_config :
  ?node_count:float prop -> unit -> read_pool_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_alloydb_instance

val google_alloydb_instance :
  ?annotations:(string * string prop) list ->
  ?availability_type:string prop ->
  ?database_flags:(string * string prop) list ->
  ?display_name:string prop ->
  ?gce_zone:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?client_connection_config:client_connection_config list ->
  ?machine_config:machine_config list ->
  ?network_config:network_config list ->
  ?psc_instance_config:psc_instance_config list ->
  ?query_insights_config:query_insights_config list ->
  ?read_pool_config:read_pool_config list ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  instance_id:string prop ->
  instance_type:string prop ->
  unit ->
  google_alloydb_instance

val yojson_of_google_alloydb_instance :
  google_alloydb_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : (string * string) list prop;
  availability_type : string prop;
  cluster : string prop;
  create_time : string prop;
  database_flags : (string * string) list prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  gce_zone : string prop;
  id : string prop;
  instance_id : string prop;
  instance_type : string prop;
  ip_address : string prop;
  labels : (string * string) list prop;
  name : string prop;
  public_ip_address : string prop;
  reconciling : bool prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?availability_type:string prop ->
  ?database_flags:(string * string prop) list ->
  ?display_name:string prop ->
  ?gce_zone:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?client_connection_config:client_connection_config list ->
  ?machine_config:machine_config list ->
  ?network_config:network_config list ->
  ?psc_instance_config:psc_instance_config list ->
  ?query_insights_config:query_insights_config list ->
  ?read_pool_config:read_pool_config list ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  instance_id:string prop ->
  instance_type:string prop ->
  string ->
  t

val make :
  ?annotations:(string * string prop) list ->
  ?availability_type:string prop ->
  ?database_flags:(string * string prop) list ->
  ?display_name:string prop ->
  ?gce_zone:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?client_connection_config:client_connection_config list ->
  ?machine_config:machine_config list ->
  ?network_config:network_config list ->
  ?psc_instance_config:psc_instance_config list ->
  ?query_insights_config:query_insights_config list ->
  ?read_pool_config:read_pool_config list ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  instance_id:string prop ->
  instance_type:string prop ->
  string ->
  t Tf_core.resource
