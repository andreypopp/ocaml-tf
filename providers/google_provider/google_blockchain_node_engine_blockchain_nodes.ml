(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_blockchain_node_engine_blockchain_nodes__ethereum_details__geth_details = {
  garbage_collection_mode : string option; [@option]
      (** Blockchain garbage collection modes. Only applicable when NodeType is FULL or ARCHIVE. Possible values: [FULL, ARCHIVE] *)
}
[@@deriving yojson_of]
(** User-provided key-value pairs *)

type google_blockchain_node_engine_blockchain_nodes__ethereum_details__validator_config = {
  mev_relay_urls : string list option; [@option]
      (** URLs for MEV-relay services to use for block building. When set, a managed MEV-boost service is configured on the beacon client. *)
}
[@@deriving yojson_of]
(** Configuration for validator-related parameters on the beacon client, and for any managed validator client. *)

type google_blockchain_node_engine_blockchain_nodes__ethereum_details__additional_endpoints = {
  beacon_api_endpoint : string;  (** beacon_api_endpoint *)
  beacon_prometheus_metrics_api_endpoint : string;
      (** beacon_prometheus_metrics_api_endpoint *)
  execution_client_prometheus_metrics_api_endpoint : string;
      (** execution_client_prometheus_metrics_api_endpoint *)
}
[@@deriving yojson_of]

type google_blockchain_node_engine_blockchain_nodes__ethereum_details = {
  additional_endpoints :
    google_blockchain_node_engine_blockchain_nodes__ethereum_details__additional_endpoints
    list;
      (** User-provided key-value pairs *)
  api_enable_admin : bool option; [@option]
      (** Enables JSON-RPC access to functions in the admin namespace. Defaults to false. *)
  api_enable_debug : bool option; [@option]
      (** Enables JSON-RPC access to functions in the debug namespace. Defaults to false. *)
  consensus_client : string option; [@option]
      (** The consensus client Possible values: [CONSENSUS_CLIENT_UNSPECIFIED, LIGHTHOUSE] *)
  execution_client : string option; [@option]
      (** The execution client Possible values: [EXECUTION_CLIENT_UNSPECIFIED, GETH, ERIGON] *)
  network : string option; [@option]
      (** The Ethereum environment being accessed. Possible values: [MAINNET, TESTNET_GOERLI_PRATER, TESTNET_SEPOLIA] *)
  node_type : string option; [@option]
      (** The type of Ethereum node. Possible values: [LIGHT, FULL, ARCHIVE] *)
  geth_details :
    google_blockchain_node_engine_blockchain_nodes__ethereum_details__geth_details
    list;
  validator_config :
    google_blockchain_node_engine_blockchain_nodes__ethereum_details__validator_config
    list;
}
[@@deriving yojson_of]
(** User-provided key-value pairs *)

type google_blockchain_node_engine_blockchain_nodes__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_blockchain_node_engine_blockchain_nodes__timeouts *)

type google_blockchain_node_engine_blockchain_nodes__connection_info__endpoint_info = {
  json_rpc_api_endpoint : string;  (** json_rpc_api_endpoint *)
  websockets_api_endpoint : string;  (** websockets_api_endpoint *)
}
[@@deriving yojson_of]

type google_blockchain_node_engine_blockchain_nodes__connection_info = {
  endpoint_info :
    google_blockchain_node_engine_blockchain_nodes__connection_info__endpoint_info
    list;
      (** endpoint_info *)
  service_attachment : string;  (** service_attachment *)
}
[@@deriving yojson_of]

type google_blockchain_node_engine_blockchain_nodes = {
  blockchain_node_id : string;  (** ID of the requesting object. *)
  blockchain_type : string option; [@option]
      (** User-provided key-value pairs Possible values: [ETHEREUM] *)
  labels : (string * string) list option; [@option]
      (** User-provided key-value pairs


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** Location of Blockchain Node being created. *)
  ethereum_details :
    google_blockchain_node_engine_blockchain_nodes__ethereum_details
    list;
  timeouts :
    google_blockchain_node_engine_blockchain_nodes__timeouts option;
}
[@@deriving yojson_of]
(** google_blockchain_node_engine_blockchain_nodes *)

let google_blockchain_node_engine_blockchain_nodes ?blockchain_type
    ?labels ?timeouts ~blockchain_node_id ~location ~ethereum_details
    __resource_id =
  let __resource_type =
    "google_blockchain_node_engine_blockchain_nodes"
  in
  let __resource =
    {
      blockchain_node_id;
      blockchain_type;
      labels;
      location;
      ethereum_details;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_blockchain_node_engine_blockchain_nodes
       __resource);
  ()
