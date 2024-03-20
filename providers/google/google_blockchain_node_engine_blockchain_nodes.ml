(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ethereum_details__geth_details = {
  garbage_collection_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ethereum_details__geth_details) -> ()

let yojson_of_ethereum_details__geth_details =
  (function
   | { garbage_collection_mode = v_garbage_collection_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_garbage_collection_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "garbage_collection_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ethereum_details__geth_details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ethereum_details__geth_details

[@@@deriving.end]

type ethereum_details__validator_config = {
  mev_relay_urls : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ethereum_details__validator_config) -> ()

let yojson_of_ethereum_details__validator_config =
  (function
   | { mev_relay_urls = v_mev_relay_urls } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_mev_relay_urls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "mev_relay_urls", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ethereum_details__validator_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ethereum_details__validator_config

[@@@deriving.end]

type ethereum_details__additional_endpoints = {
  beacon_api_endpoint : string prop;
  beacon_prometheus_metrics_api_endpoint : string prop;
  execution_client_prometheus_metrics_api_endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ethereum_details__additional_endpoints) -> ()

let yojson_of_ethereum_details__additional_endpoints =
  (function
   | {
       beacon_api_endpoint = v_beacon_api_endpoint;
       beacon_prometheus_metrics_api_endpoint =
         v_beacon_prometheus_metrics_api_endpoint;
       execution_client_prometheus_metrics_api_endpoint =
         v_execution_client_prometheus_metrics_api_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_execution_client_prometheus_metrics_api_endpoint
         in
         ("execution_client_prometheus_metrics_api_endpoint", arg)
         :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_beacon_prometheus_metrics_api_endpoint
         in
         ("beacon_prometheus_metrics_api_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_beacon_api_endpoint
         in
         ("beacon_api_endpoint", arg) :: bnds
       in
       `Assoc bnds
    : ethereum_details__additional_endpoints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ethereum_details__additional_endpoints

[@@@deriving.end]

type ethereum_details = {
  api_enable_admin : bool prop option; [@option]
  api_enable_debug : bool prop option; [@option]
  consensus_client : string prop option; [@option]
  execution_client : string prop option; [@option]
  network : string prop option; [@option]
  node_type : string prop option; [@option]
  geth_details : ethereum_details__geth_details list;
  validator_config : ethereum_details__validator_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ethereum_details) -> ()

let yojson_of_ethereum_details =
  (function
   | {
       api_enable_admin = v_api_enable_admin;
       api_enable_debug = v_api_enable_debug;
       consensus_client = v_consensus_client;
       execution_client = v_execution_client;
       network = v_network;
       node_type = v_node_type;
       geth_details = v_geth_details;
       validator_config = v_validator_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_ethereum_details__validator_config
             v_validator_config
         in
         ("validator_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ethereum_details__geth_details
             v_geth_details
         in
         ("geth_details", arg) :: bnds
       in
       let bnds =
         match v_node_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_execution_client with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_client", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consensus_client with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consensus_client", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_enable_debug with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "api_enable_debug", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_enable_admin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "api_enable_admin", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ethereum_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ethereum_details

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type connection_info__endpoint_info = {
  json_rpc_api_endpoint : string prop;
  websockets_api_endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_info__endpoint_info) -> ()

let yojson_of_connection_info__endpoint_info =
  (function
   | {
       json_rpc_api_endpoint = v_json_rpc_api_endpoint;
       websockets_api_endpoint = v_websockets_api_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_websockets_api_endpoint
         in
         ("websockets_api_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_json_rpc_api_endpoint
         in
         ("json_rpc_api_endpoint", arg) :: bnds
       in
       `Assoc bnds
    : connection_info__endpoint_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_info__endpoint_info

[@@@deriving.end]

type connection_info = {
  endpoint_info : connection_info__endpoint_info list;
  service_attachment : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_info) -> ()

let yojson_of_connection_info =
  (function
   | {
       endpoint_info = v_endpoint_info;
       service_attachment = v_service_attachment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_attachment
         in
         ("service_attachment", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_connection_info__endpoint_info
             v_endpoint_info
         in
         ("endpoint_info", arg) :: bnds
       in
       `Assoc bnds
    : connection_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_info

[@@@deriving.end]

type google_blockchain_node_engine_blockchain_nodes = {
  blockchain_node_id : string prop;
  blockchain_type : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  project : string prop option; [@option]
  ethereum_details : ethereum_details list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_blockchain_node_engine_blockchain_nodes) -> ()

let yojson_of_google_blockchain_node_engine_blockchain_nodes =
  (function
   | {
       blockchain_node_id = v_blockchain_node_id;
       blockchain_type = v_blockchain_type;
       id = v_id;
       labels = v_labels;
       location = v_location;
       project = v_project;
       ethereum_details = v_ethereum_details;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ethereum_details
             v_ethereum_details
         in
         ("ethereum_details", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_blockchain_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "blockchain_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_blockchain_node_id
         in
         ("blockchain_node_id", arg) :: bnds
       in
       `Assoc bnds
    : google_blockchain_node_engine_blockchain_nodes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_blockchain_node_engine_blockchain_nodes

[@@@deriving.end]

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
