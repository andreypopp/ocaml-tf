(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type psc_configs = { network : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : psc_configs) -> ()

let yojson_of_psc_configs =
  (function
   | { network = v_network } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       `Assoc bnds
    : psc_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_psc_configs

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

type zone_distribution_config = {
  mode : string prop option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : zone_distribution_config) -> ()

let yojson_of_zone_distribution_config =
  (function
   | { mode = v_mode; zone = v_zone } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : zone_distribution_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_zone_distribution_config

[@@@deriving.end]

type discovery_endpoints__psc_config = { network : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : discovery_endpoints__psc_config) -> ()

let yojson_of_discovery_endpoints__psc_config =
  (function
   | { network = v_network } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       `Assoc bnds
    : discovery_endpoints__psc_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_discovery_endpoints__psc_config

[@@@deriving.end]

type discovery_endpoints = {
  address : string prop;
  port : float prop;
  psc_config : discovery_endpoints__psc_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : discovery_endpoints) -> ()

let yojson_of_discovery_endpoints =
  (function
   | {
       address = v_address;
       port = v_port;
       psc_config = v_psc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_psc_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_discovery_endpoints__psc_config)
               v_psc_config
           in
           let bnd = "psc_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : discovery_endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_discovery_endpoints

[@@@deriving.end]

type psc_connections = {
  address : string prop;
  forwarding_rule : string prop;
  network : string prop;
  project_id : string prop;
  psc_connection_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : psc_connections) -> ()

let yojson_of_psc_connections =
  (function
   | {
       address = v_address;
       forwarding_rule = v_forwarding_rule;
       network = v_network;
       project_id = v_project_id;
       psc_connection_id = v_psc_connection_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_psc_connection_id
         in
         ("psc_connection_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_forwarding_rule
         in
         ("forwarding_rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : psc_connections -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_psc_connections

[@@@deriving.end]

type state_info__update_info = {
  target_replica_count : float prop;
  target_shard_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : state_info__update_info) -> ()

let yojson_of_state_info__update_info =
  (function
   | {
       target_replica_count = v_target_replica_count;
       target_shard_count = v_target_shard_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_target_shard_count
         in
         ("target_shard_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_target_replica_count
         in
         ("target_replica_count", arg) :: bnds
       in
       `Assoc bnds
    : state_info__update_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_state_info__update_info

[@@@deriving.end]

type state_info = {
  update_info : state_info__update_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : state_info) -> ()

let yojson_of_state_info =
  (function
   | { update_info = v_update_info } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_update_info then bnds
         else
           let arg =
             (yojson_of_list yojson_of_state_info__update_info)
               v_update_info
           in
           let bnd = "update_info", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : state_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_state_info

[@@@deriving.end]

type google_redis_cluster = {
  authorization_mode : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  node_type : string prop option; [@option]
  project : string prop option; [@option]
  redis_configs : string prop Tf_core.assoc option; [@option]
  region : string prop option; [@option]
  replica_count : float prop option; [@option]
  shard_count : float prop;
  transit_encryption_mode : string prop option; [@option]
  psc_configs : psc_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  zone_distribution_config : zone_distribution_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_redis_cluster) -> ()

let yojson_of_google_redis_cluster =
  (function
   | {
       authorization_mode = v_authorization_mode;
       id = v_id;
       name = v_name;
       node_type = v_node_type;
       project = v_project;
       redis_configs = v_redis_configs;
       region = v_region;
       replica_count = v_replica_count;
       shard_count = v_shard_count;
       transit_encryption_mode = v_transit_encryption_mode;
       psc_configs = v_psc_configs;
       timeouts = v_timeouts;
       zone_distribution_config = v_zone_distribution_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_zone_distribution_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_zone_distribution_config)
               v_zone_distribution_config
           in
           let bnd = "zone_distribution_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_psc_configs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_psc_configs) v_psc_configs
           in
           let bnd = "psc_configs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_transit_encryption_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transit_encryption_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_shard_count in
         ("shard_count", arg) :: bnds
       in
       let bnds =
         match v_replica_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replica_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redis_configs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "redis_configs", arg in
             bnd :: bnds
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
         match v_node_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_authorization_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorization_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_redis_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_redis_cluster

[@@@deriving.end]

let psc_configs ~network () : psc_configs = { network }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let zone_distribution_config ?mode ?zone () :
    zone_distribution_config =
  { mode; zone }

let google_redis_cluster ?authorization_mode ?id ?name ?node_type
    ?project ?redis_configs ?region ?replica_count
    ?transit_encryption_mode ?timeouts
    ?(zone_distribution_config = []) ~shard_count ~psc_configs () :
    google_redis_cluster =
  {
    authorization_mode;
    id;
    name;
    node_type;
    project;
    redis_configs;
    region;
    replica_count;
    shard_count;
    transit_encryption_mode;
    psc_configs;
    timeouts;
    zone_distribution_config;
  }

type t = {
  tf_name : string;
  authorization_mode : string prop;
  create_time : string prop;
  discovery_endpoints : discovery_endpoints list prop;
  id : string prop;
  name : string prop;
  node_type : string prop;
  precise_size_gb : float prop;
  project : string prop;
  psc_connections : psc_connections list prop;
  redis_configs : string Tf_core.assoc prop;
  region : string prop;
  replica_count : float prop;
  shard_count : float prop;
  size_gb : float prop;
  state : string prop;
  state_info : state_info list prop;
  transit_encryption_mode : string prop;
  uid : string prop;
}

let make ?authorization_mode ?id ?name ?node_type ?project
    ?redis_configs ?region ?replica_count ?transit_encryption_mode
    ?timeouts ?(zone_distribution_config = []) ~shard_count
    ~psc_configs __id =
  let __type = "google_redis_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       authorization_mode =
         Prop.computed __type __id "authorization_mode";
       create_time = Prop.computed __type __id "create_time";
       discovery_endpoints =
         Prop.computed __type __id "discovery_endpoints";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       node_type = Prop.computed __type __id "node_type";
       precise_size_gb = Prop.computed __type __id "precise_size_gb";
       project = Prop.computed __type __id "project";
       psc_connections = Prop.computed __type __id "psc_connections";
       redis_configs = Prop.computed __type __id "redis_configs";
       region = Prop.computed __type __id "region";
       replica_count = Prop.computed __type __id "replica_count";
       shard_count = Prop.computed __type __id "shard_count";
       size_gb = Prop.computed __type __id "size_gb";
       state = Prop.computed __type __id "state";
       state_info = Prop.computed __type __id "state_info";
       transit_encryption_mode =
         Prop.computed __type __id "transit_encryption_mode";
       uid = Prop.computed __type __id "uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_redis_cluster
        (google_redis_cluster ?authorization_mode ?id ?name
           ?node_type ?project ?redis_configs ?region ?replica_count
           ?transit_encryption_mode ?timeouts
           ~zone_distribution_config ~shard_count ~psc_configs ());
    attrs = __attrs;
  }

let register ?tf_module ?authorization_mode ?id ?name ?node_type
    ?project ?redis_configs ?region ?replica_count
    ?transit_encryption_mode ?timeouts
    ?(zone_distribution_config = []) ~shard_count ~psc_configs __id =
  let (r : _ Tf_core.resource) =
    make ?authorization_mode ?id ?name ?node_type ?project
      ?redis_configs ?region ?replica_count ?transit_encryption_mode
      ?timeouts ~zone_distribution_config ~shard_count ~psc_configs
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
