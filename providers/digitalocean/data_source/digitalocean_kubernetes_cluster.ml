(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type maintenance_policy = {
  day : string prop;
  duration : string prop;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy) -> ()

let yojson_of_maintenance_policy =
  (function
   | {
       day = v_day;
       duration = v_duration;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day in
         ("day", arg) :: bnds
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
  actual_node_count : float prop;
  auto_scale : bool prop;
  id : string prop;
  labels : (string * string prop) list;
  max_nodes : float prop;
  min_nodes : float prop;
  name : string prop;
  node_count : float prop;
  nodes : node_pool__nodes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  size : string prop;
  tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  taint : node_pool__taint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool) -> ()

let yojson_of_node_pool =
  (function
   | {
       actual_node_count = v_actual_node_count;
       auto_scale = v_auto_scale;
       id = v_id;
       labels = v_labels;
       max_nodes = v_max_nodes;
       min_nodes = v_min_nodes;
       name = v_name;
       node_count = v_node_count;
       nodes = v_nodes;
       size = v_size;
       tags = v_tags;
       taint = v_taint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_taint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_pool__taint) v_taint
           in
           let bnd = "taint", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_nodes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_pool__nodes) v_nodes
           in
           let bnd = "nodes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_node_count in
         ("node_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_nodes in
         ("min_nodes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_nodes in
         ("max_nodes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_scale in
         ("auto_scale", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_actual_node_count
         in
         ("actual_node_count", arg) :: bnds
       in
       `Assoc bnds
    : node_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool

[@@@deriving.end]

type digitalocean_kubernetes_cluster = {
  id : string prop option; [@option]
  name : string prop;
  tags : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_kubernetes_cluster) -> ()

let yojson_of_digitalocean_kubernetes_cluster =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : digitalocean_kubernetes_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_kubernetes_cluster

[@@@deriving.end]

let digitalocean_kubernetes_cluster ?id ?tags ~name () :
    digitalocean_kubernetes_cluster =
  { id; name; tags }

type t = {
  tf_name : string;
  auto_upgrade : bool prop;
  cluster_subnet : string prop;
  created_at : string prop;
  endpoint : string prop;
  ha : bool prop;
  id : string prop;
  ipv4_address : string prop;
  kube_config : kube_config list prop;
  maintenance_policy : maintenance_policy list prop;
  name : string prop;
  node_pool : node_pool list prop;
  region : string prop;
  service_subnet : string prop;
  status : string prop;
  surge_upgrade : bool prop;
  tags : string list prop;
  updated_at : string prop;
  urn : string prop;
  version : string prop;
  vpc_uuid : string prop;
}

let make ?id ?tags ~name __id =
  let __type = "digitalocean_kubernetes_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       auto_upgrade = Prop.computed __type __id "auto_upgrade";
       cluster_subnet = Prop.computed __type __id "cluster_subnet";
       created_at = Prop.computed __type __id "created_at";
       endpoint = Prop.computed __type __id "endpoint";
       ha = Prop.computed __type __id "ha";
       id = Prop.computed __type __id "id";
       ipv4_address = Prop.computed __type __id "ipv4_address";
       kube_config = Prop.computed __type __id "kube_config";
       maintenance_policy =
         Prop.computed __type __id "maintenance_policy";
       name = Prop.computed __type __id "name";
       node_pool = Prop.computed __type __id "node_pool";
       region = Prop.computed __type __id "region";
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
        (digitalocean_kubernetes_cluster ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
