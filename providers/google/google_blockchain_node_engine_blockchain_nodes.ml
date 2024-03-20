(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ethereum_details__geth_details = {
  garbage_collection_mode : string prop option; [@option]
      (** Blockchain garbage collection modes. Only applicable when NodeType is FULL or ARCHIVE. Possible values: [FULL, ARCHIVE] *)
}
[@@deriving yojson_of]
(** User-provided key-value pairs *)

type ethereum_details__validator_config = {
  mev_relay_urls : string prop list option; [@option]
      (** URLs for MEV-relay services to use for block building. When set, a managed MEV-boost service is configured on the beacon client. *)
}
[@@deriving yojson_of]
(** Configuration for validator-related parameters on the beacon client, and for any managed validator client. *)

type ethereum_details__additional_endpoints = {
  beacon_api_endpoint : string prop;  (** beacon_api_endpoint *)
  beacon_prometheus_metrics_api_endpoint : string prop;
      (** beacon_prometheus_metrics_api_endpoint *)
  execution_client_prometheus_metrics_api_endpoint : string prop;
      (** execution_client_prometheus_metrics_api_endpoint *)
}
[@@deriving yojson_of]

type ethereum_details = {
  api_enable_admin : bool prop option; [@option]
      (** Enables JSON-RPC access to functions in the admin namespace. Defaults to false. *)
  api_enable_debug : bool prop option; [@option]
      (** Enables JSON-RPC access to functions in the debug namespace. Defaults to false. *)
  consensus_client : string prop option; [@option]
      (** The consensus client Possible values: [CONSENSUS_CLIENT_UNSPECIFIED, LIGHTHOUSE] *)
  execution_client : string prop option; [@option]
      (** The execution client Possible values: [EXECUTION_CLIENT_UNSPECIFIED, GETH, ERIGON] *)
  network : string prop option; [@option]
      (** The Ethereum environment being accessed. Possible values: [MAINNET, TESTNET_GOERLI_PRATER, TESTNET_SEPOLIA] *)
  node_type : string prop option; [@option]
      (** The type of Ethereum node. Possible values: [LIGHT, FULL, ARCHIVE] *)
  geth_details : ethereum_details__geth_details list;
  validator_config : ethereum_details__validator_config list;
}
[@@deriving yojson_of]
(** User-provided key-value pairs *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type connection_info__endpoint_info = {
  json_rpc_api_endpoint : string prop;  (** json_rpc_api_endpoint *)
  websockets_api_endpoint : string prop;
      (** websockets_api_endpoint *)
}
[@@deriving yojson_of]

type connection_info = {
  endpoint_info : connection_info__endpoint_info list;
      (** endpoint_info *)
  service_attachment : string prop;  (** service_attachment *)
}
[@@deriving yojson_of]

type google_blockchain_node_engine_blockchain_nodes = {
  blockchain_node_id : string prop;
      (** ID of the requesting object. *)
  blockchain_type : string prop option; [@option]
      (** User-provided key-value pairs Possible values: [ETHEREUM] *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** User-provided key-value pairs


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** Location of Blockchain Node being created. *)
  project : string prop option; [@option]  (** project *)
  ethereum_details : ethereum_details list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_blockchain_node_engine_blockchain_nodes *)

let ethereum_details__geth_details ?garbage_collection_mode () :
    ethereum_details__geth_details =
  { garbage_collection_mode }

let ethereum_details__validator_config ?mev_relay_urls () :
    ethereum_details__validator_config =
  { mev_relay_urls }

let ethereum_details ?api_enable_admin ?api_enable_debug
    ?consensus_client ?execution_client ?network ?node_type
    ~geth_details ~validator_config () : ethereum_details =
  {
    api_enable_admin;
    api_enable_debug;
    consensus_client;
    execution_client;
    network;
    node_type;
    geth_details;
    validator_config;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_blockchain_node_engine_blockchain_nodes ?blockchain_type
    ?id ?labels ?project ?timeouts ~blockchain_node_id ~location
    ~ethereum_details () :
    google_blockchain_node_engine_blockchain_nodes =
  {
    blockchain_node_id;
    blockchain_type;
    id;
    labels;
    location;
    project;
    ethereum_details;
    timeouts;
  }

type t = {
  blockchain_node_id : string prop;
  blockchain_type : string prop;
  connection_info : connection_info list prop;
  create_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?blockchain_type ?id ?labels ?project ?timeouts
    ~blockchain_node_id ~location ~ethereum_details __id =
  let __type = "google_blockchain_node_engine_blockchain_nodes" in
  let __attrs =
    ({
       blockchain_node_id =
         Prop.computed __type __id "blockchain_node_id";
       blockchain_type = Prop.computed __type __id "blockchain_type";
       connection_info = Prop.computed __type __id "connection_info";
       create_time = Prop.computed __type __id "create_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_blockchain_node_engine_blockchain_nodes
        (google_blockchain_node_engine_blockchain_nodes
           ?blockchain_type ?id ?labels ?project ?timeouts
           ~blockchain_node_id ~location ~ethereum_details ());
    attrs = __attrs;
  }

let register ?tf_module ?blockchain_type ?id ?labels ?project
    ?timeouts ~blockchain_node_id ~location ~ethereum_details __id =
  let (r : _ Tf_core.resource) =
    make ?blockchain_type ?id ?labels ?project ?timeouts
      ~blockchain_node_id ~location ~ethereum_details __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
