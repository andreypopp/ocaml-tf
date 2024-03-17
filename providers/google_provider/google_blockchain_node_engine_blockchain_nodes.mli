(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_blockchain_node_engine_blockchain_nodes__ethereum_details__geth_details

type google_blockchain_node_engine_blockchain_nodes__ethereum_details__validator_config

type google_blockchain_node_engine_blockchain_nodes__ethereum_details__additional_endpoints = {
  beacon_api_endpoint : string;  (** beacon_api_endpoint *)
  beacon_prometheus_metrics_api_endpoint : string;
      (** beacon_prometheus_metrics_api_endpoint *)
  execution_client_prometheus_metrics_api_endpoint : string;
      (** execution_client_prometheus_metrics_api_endpoint *)
}

type google_blockchain_node_engine_blockchain_nodes__ethereum_details
type google_blockchain_node_engine_blockchain_nodes__timeouts

type google_blockchain_node_engine_blockchain_nodes__connection_info__endpoint_info = {
  json_rpc_api_endpoint : string;  (** json_rpc_api_endpoint *)
  websockets_api_endpoint : string;  (** websockets_api_endpoint *)
}

type google_blockchain_node_engine_blockchain_nodes__connection_info = {
  endpoint_info :
    google_blockchain_node_engine_blockchain_nodes__connection_info__endpoint_info
    list;
      (** endpoint_info *)
  service_attachment : string;  (** service_attachment *)
}

type google_blockchain_node_engine_blockchain_nodes

val google_blockchain_node_engine_blockchain_nodes :
  ?blockchain_type:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_blockchain_node_engine_blockchain_nodes__timeouts ->
  blockchain_node_id:string ->
  location:string ->
  ethereum_details:
    google_blockchain_node_engine_blockchain_nodes__ethereum_details
    list ->
  string ->
  unit
