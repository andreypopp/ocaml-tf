(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type maintenance_policy = {
  day : string prop option; [@option]
  start_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy) -> ()

let yojson_of_maintenance_policy =
  (function
   | { day = v_day; start_time = v_start_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : maintenance_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy

[@@@deriving.end]

type node_pool__taint = {
  effect : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__taint) -> ()

let yojson_of_node_pool__taint =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_effect in
         ("effect", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__taint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__taint

[@@@deriving.end]

type node_pool__nodes = {
  created_at : string prop;
  droplet_id : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  updated_at : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool__nodes) -> ()

let yojson_of_node_pool__nodes =
  (function
   | {
       created_at = v_created_at;
       droplet_id = v_droplet_id;
       id = v_id;
       name = v_name;
       status = v_status;
       updated_at = v_updated_at;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_updated_at in
         ("updated_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_droplet_id in
         ("droplet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created_at in
         ("created_at", arg) :: bnds
       in
       `Assoc bnds
    : node_pool__nodes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool__nodes

[@@@deriving.end]

type node_pool = {
  auto_scale : bool prop option; [@option]
  labels : (string * string prop) list option; [@option]
  max_nodes : float prop option; [@option]
  min_nodes : float prop option; [@option]
  name : string prop;
  node_count : float prop option; [@option]
  size : string prop;
  tags : string prop list option; [@option]
  taint : node_pool__taint list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool) -> ()

let yojson_of_node_pool =
  (function
   | {
       auto_scale = v_auto_scale;
       labels = v_labels;
       max_nodes = v_max_nodes;
       min_nodes = v_min_nodes;
       name = v_name;
       node_count = v_node_count;
       size = v_size;
       tags = v_tags;
       taint = v_taint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_pool__taint v_taint
         in
         ("taint", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         match v_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "node_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_nodes", arg in
             bnd :: bnds
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
         match v_auto_scale with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_scale", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type kube_config = {
  client_certificate : string prop;
  client_key : string prop;
  cluster_ca_certificate : string prop;
  expires_at : string prop;
  host : string prop;
  raw_config : string prop;
  token : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kube_config) -> ()

let yojson_of_kube_config =
  (function
   | {
       client_certificate = v_client_certificate;
       client_key = v_client_key;
       cluster_ca_certificate = v_cluster_ca_certificate;
       expires_at = v_expires_at;
       host = v_host;
       raw_config = v_raw_config;
       token = v_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token in
         ("token", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_raw_config in
         ("raw_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expires_at in
         ("expires_at", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_ca_certificate
         in
         ("cluster_ca_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_key in
         ("client_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_client_certificate
         in
         ("client_certificate", arg) :: bnds
       in
       `Assoc bnds
    : kube_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kube_config

[@@@deriving.end]

type digitalocean_kubernetes_cluster = {
  auto_upgrade : bool prop option; [@option]
  destroy_all_associated_resources : bool prop option; [@option]
  ha : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  region : string prop;
  registry_integration : bool prop option; [@option]
  surge_upgrade : bool prop option; [@option]
  tags : string prop list option; [@option]
  version : string prop;
  vpc_uuid : string prop option; [@option]
  maintenance_policy : maintenance_policy list;
  node_pool : node_pool list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_kubernetes_cluster) -> ()

let yojson_of_digitalocean_kubernetes_cluster =
  (function
   | {
       auto_upgrade = v_auto_upgrade;
       destroy_all_associated_resources =
         v_destroy_all_associated_resources;
       ha = v_ha;
       id = v_id;
       name = v_name;
       region = v_region;
       registry_integration = v_registry_integration;
       surge_upgrade = v_surge_upgrade;
       tags = v_tags;
       version = v_version;
       vpc_uuid = v_vpc_uuid;
       maintenance_policy = v_maintenance_policy;
       node_pool = v_node_pool;
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
         let arg = yojson_of_list yojson_of_node_pool v_node_pool in
         ("node_pool", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_maintenance_policy
             v_maintenance_policy
         in
         ("maintenance_policy", arg) :: bnds
       in
       let bnds =
         match v_vpc_uuid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_uuid", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_surge_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "surge_upgrade", arg in
             bnd :: bnds
       in
       let bnds =
         match v_registry_integration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "registry_integration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_ha with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ha", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destroy_all_associated_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "destroy_all_associated_resources", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_upgrade", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_kubernetes_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_kubernetes_cluster

[@@@deriving.end]

let maintenance_policy ?day ?start_time () : maintenance_policy =
  { day; start_time }

let node_pool__taint ~effect ~key ~value () : node_pool__taint =
  { effect; key; value }

let node_pool ?auto_scale ?labels ?max_nodes ?min_nodes ?node_count
    ?tags ~name ~size ~taint () : node_pool =
  {
    auto_scale;
    labels;
    max_nodes;
    min_nodes;
    name;
    node_count;
    size;
    tags;
    taint;
  }

let timeouts ?create () : timeouts = { create }

let digitalocean_kubernetes_cluster ?auto_upgrade
    ?destroy_all_associated_resources ?ha ?id ?registry_integration
    ?surge_upgrade ?tags ?vpc_uuid ?timeouts ~name ~region ~version
    ~maintenance_policy ~node_pool () :
    digitalocean_kubernetes_cluster =
  {
    auto_upgrade;
    destroy_all_associated_resources;
    ha;
    id;
    name;
    region;
    registry_integration;
    surge_upgrade;
    tags;
    version;
    vpc_uuid;
    maintenance_policy;
    node_pool;
    timeouts;
  }

type t = {
  auto_upgrade : bool prop;
  cluster_subnet : string prop;
  created_at : string prop;
  destroy_all_associated_resources : bool prop;
  endpoint : string prop;
  ha : bool prop;
  id : string prop;
  ipv4_address : string prop;
  kube_config : kube_config list prop;
  name : string prop;
  region : string prop;
  registry_integration : bool prop;
  service_subnet : string prop;
  status : string prop;
  surge_upgrade : bool prop;
  tags : string list prop;
  updated_at : string prop;
  urn : string prop;
  version : string prop;
  vpc_uuid : string prop;
}

let make ?auto_upgrade ?destroy_all_associated_resources ?ha ?id
    ?registry_integration ?surge_upgrade ?tags ?vpc_uuid ?timeouts
    ~name ~region ~version ~maintenance_policy ~node_pool __id =
  let __type = "digitalocean_kubernetes_cluster" in
  let __attrs =
    ({
       auto_upgrade = Prop.computed __type __id "auto_upgrade";
       cluster_subnet = Prop.computed __type __id "cluster_subnet";
       created_at = Prop.computed __type __id "created_at";
       destroy_all_associated_resources =
         Prop.computed __type __id "destroy_all_associated_resources";
       endpoint = Prop.computed __type __id "endpoint";
       ha = Prop.computed __type __id "ha";
       id = Prop.computed __type __id "id";
       ipv4_address = Prop.computed __type __id "ipv4_address";
       kube_config = Prop.computed __type __id "kube_config";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       registry_integration =
         Prop.computed __type __id "registry_integration";
       service_subnet = Prop.computed __type __id "service_subnet";
       status = Prop.computed __type __id "status";
       surge_upgrade = Prop.computed __type __id "surge_upgrade";
       tags = Prop.computed __type __id "tags";
       updated_at = Prop.computed __type __id "updated_at";
       urn = Prop.computed __type __id "urn";
       version = Prop.computed __type __id "version";
       vpc_uuid = Prop.computed __type __id "vpc_uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_kubernetes_cluster
        (digitalocean_kubernetes_cluster ?auto_upgrade
           ?destroy_all_associated_resources ?ha ?id
           ?registry_integration ?surge_upgrade ?tags ?vpc_uuid
           ?timeouts ~name ~region ~version ~maintenance_policy
           ~node_pool ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_upgrade
    ?destroy_all_associated_resources ?ha ?id ?registry_integration
    ?surge_upgrade ?tags ?vpc_uuid ?timeouts ~name ~region ~version
    ~maintenance_policy ~node_pool __id =
  let (r : _ Tf_core.resource) =
    make ?auto_upgrade ?destroy_all_associated_resources ?ha ?id
      ?registry_integration ?surge_upgrade ?tags ?vpc_uuid ?timeouts
      ~name ~region ~version ~maintenance_policy ~node_pool __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
