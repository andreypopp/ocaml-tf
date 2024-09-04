(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connection_info__endpoint_info = {
  json_rpc_api_endpoint : string prop;  (** json_rpc_api_endpoint *)
  websockets_api_endpoint : string prop;
      (** websockets_api_endpoint *)
}

type connection_info = {
  endpoint_info : connection_info__endpoint_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** endpoint_info *)
  service_attachment : string prop;  (** service_attachment *)
}

type ethereum_details__additional_endpoints = {
  beacon_api_endpoint : string prop;  (** beacon_api_endpoint *)
  beacon_prometheus_metrics_api_endpoint : string prop;
      (** beacon_prometheus_metrics_api_endpoint *)
  execution_client_prometheus_metrics_api_endpoint : string prop;
      (** execution_client_prometheus_metrics_api_endpoint *)
}

type ethereum_details__geth_details

val ethereum_details__geth_details :
  ?garbage_collection_mode:string prop ->
  unit ->
  ethereum_details__geth_details

type ethereum_details__validator_config

val ethereum_details__validator_config :
  ?mev_relay_urls:string prop list ->
  unit ->
  ethereum_details__validator_config

type ethereum_details

val ethereum_details :
  ?api_enable_admin:bool prop ->
  ?api_enable_debug:bool prop ->
  ?consensus_client:string prop ->
  ?execution_client:string prop ->
  ?network:string prop ->
  ?node_type:string prop ->
  ?geth_details:ethereum_details__geth_details list ->
  ?validator_config:ethereum_details__validator_config list ->
  unit ->
  ethereum_details

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_blockchain_node_engine_blockchain_nodes

val google_blockchain_node_engine_blockchain_nodes :
  ?blockchain_type:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?ethereum_details:ethereum_details list ->
  ?timeouts:timeouts ->
  blockchain_node_id:string prop ->
  location:string prop ->
  unit ->
  google_blockchain_node_engine_blockchain_nodes

val yojson_of_google_blockchain_node_engine_blockchain_nodes :
  google_blockchain_node_engine_blockchain_nodes -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  blockchain_node_id : string prop;
  blockchain_type : string prop;
  connection_info : connection_info list prop;
  create_time : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?blockchain_type:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?ethereum_details:ethereum_details list ->
  ?timeouts:timeouts ->
  blockchain_node_id:string prop ->
  location:string prop ->
  string ->
  t

val make :
  ?blockchain_type:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?ethereum_details:ethereum_details list ->
  ?timeouts:timeouts ->
  blockchain_node_id:string prop ->
  location:string prop ->
  string ->
  t Tf_core.resource
