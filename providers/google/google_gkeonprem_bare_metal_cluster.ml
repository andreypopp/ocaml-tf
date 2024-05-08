(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type binary_authorization = {
  evaluation_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : binary_authorization) -> ()

let yojson_of_binary_authorization =
  (function
   | { evaluation_mode = v_evaluation_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_evaluation_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluation_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : binary_authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_binary_authorization

[@@@deriving.end]

type cluster_operations = {
  enable_application_logs : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_operations) -> ()

let yojson_of_cluster_operations =
  (function
   | { enable_application_logs = v_enable_application_logs } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable_application_logs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_application_logs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cluster_operations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_operations

[@@@deriving.end]

type control_plane__api_server_args = {
  argument : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__api_server_args) -> ()

let yojson_of_control_plane__api_server_args =
  (function
   | { argument = v_argument; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_argument in
         ("argument", arg) :: bnds
       in
       `Assoc bnds
    : control_plane__api_server_args ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__api_server_args

[@@@deriving.end]

type control_plane__control_plane_node_pool_config__node_pool_config__node_configs = {
  labels : (string * string prop) list option; [@option]
  node_ip : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       control_plane__control_plane_node_pool_config__node_pool_config__node_configs) ->
  ()

let yojson_of_control_plane__control_plane_node_pool_config__node_pool_config__node_configs
    =
  (function
   | { labels = v_labels; node_ip = v_node_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_node_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_ip", arg in
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
       `Assoc bnds
    : control_plane__control_plane_node_pool_config__node_pool_config__node_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_control_plane__control_plane_node_pool_config__node_pool_config__node_configs

[@@@deriving.end]

type control_plane__control_plane_node_pool_config__node_pool_config__taints = {
  effect : string prop option; [@option]
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       control_plane__control_plane_node_pool_config__node_pool_config__taints) ->
  ()

let yojson_of_control_plane__control_plane_node_pool_config__node_pool_config__taints
    =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_effect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "effect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : control_plane__control_plane_node_pool_config__node_pool_config__taints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_control_plane__control_plane_node_pool_config__node_pool_config__taints

[@@@deriving.end]

type control_plane__control_plane_node_pool_config__node_pool_config = {
  labels : (string * string prop) list option; [@option]
  operating_system : string prop option; [@option]
  node_configs :
    control_plane__control_plane_node_pool_config__node_pool_config__node_configs
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  taints :
    control_plane__control_plane_node_pool_config__node_pool_config__taints
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       control_plane__control_plane_node_pool_config__node_pool_config) ->
  ()

let yojson_of_control_plane__control_plane_node_pool_config__node_pool_config
    =
  (function
   | {
       labels = v_labels;
       operating_system = v_operating_system;
       node_configs = v_node_configs;
       taints = v_taints;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_taints then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_control_plane__control_plane_node_pool_config__node_pool_config__taints)
               v_taints
           in
           let bnd = "taints", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_configs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_control_plane__control_plane_node_pool_config__node_pool_config__node_configs)
               v_node_configs
           in
           let bnd = "node_configs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_operating_system with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operating_system", arg in
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
       `Assoc bnds
    : control_plane__control_plane_node_pool_config__node_pool_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_control_plane__control_plane_node_pool_config__node_pool_config

[@@@deriving.end]

type control_plane__control_plane_node_pool_config = {
  node_pool_config :
    control_plane__control_plane_node_pool_config__node_pool_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__control_plane_node_pool_config) -> ()

let yojson_of_control_plane__control_plane_node_pool_config =
  (function
   | { node_pool_config = v_node_pool_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_node_pool_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_control_plane__control_plane_node_pool_config__node_pool_config)
               v_node_pool_config
           in
           let bnd = "node_pool_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : control_plane__control_plane_node_pool_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__control_plane_node_pool_config

[@@@deriving.end]

type control_plane = {
  api_server_args : control_plane__api_server_args list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  control_plane_node_pool_config :
    control_plane__control_plane_node_pool_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane) -> ()

let yojson_of_control_plane =
  (function
   | {
       api_server_args = v_api_server_args;
       control_plane_node_pool_config =
         v_control_plane_node_pool_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_control_plane_node_pool_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_control_plane__control_plane_node_pool_config)
               v_control_plane_node_pool_config
           in
           let bnd = "control_plane_node_pool_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_api_server_args then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_plane__api_server_args)
               v_api_server_args
           in
           let bnd = "api_server_args", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : control_plane -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane

[@@@deriving.end]

type load_balancer__bgp_lb_config__address_pools = {
  addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  avoid_buggy_ips : bool prop option; [@option]
  manual_assign : string prop option; [@option]
  pool : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer__bgp_lb_config__address_pools) -> ()

let yojson_of_load_balancer__bgp_lb_config__address_pools =
  (function
   | {
       addresses = v_addresses;
       avoid_buggy_ips = v_avoid_buggy_ips;
       manual_assign = v_manual_assign;
       pool = v_pool;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pool in
         ("pool", arg) :: bnds
       in
       let bnds =
         match v_manual_assign with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manual_assign", arg in
             bnd :: bnds
       in
       let bnds =
         match v_avoid_buggy_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "avoid_buggy_ips", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_addresses
           in
           let bnd = "addresses", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : load_balancer__bgp_lb_config__address_pools ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer__bgp_lb_config__address_pools

[@@@deriving.end]

type load_balancer__bgp_lb_config__bgp_peer_configs = {
  asn : float prop;
  control_plane_nodes : string prop list option; [@option]
  ip_address : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : load_balancer__bgp_lb_config__bgp_peer_configs) -> ()

let yojson_of_load_balancer__bgp_lb_config__bgp_peer_configs =
  (function
   | {
       asn = v_asn;
       control_plane_nodes = v_control_plane_nodes;
       ip_address = v_ip_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         match v_control_plane_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "control_plane_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_asn in
         ("asn", arg) :: bnds
       in
       `Assoc bnds
    : load_balancer__bgp_lb_config__bgp_peer_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer__bgp_lb_config__bgp_peer_configs

[@@@deriving.end]

type load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config = {
  registry_burst : float prop option; [@option]
  registry_pull_qps : float prop option; [@option]
  serialize_image_pulls_disabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config) ->
  ()

let yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config
    =
  (function
   | {
       registry_burst = v_registry_burst;
       registry_pull_qps = v_registry_pull_qps;
       serialize_image_pulls_disabled =
         v_serialize_image_pulls_disabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_serialize_image_pulls_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "serialize_image_pulls_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_registry_pull_qps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "registry_pull_qps", arg in
             bnd :: bnds
       in
       let bnds =
         match v_registry_burst with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "registry_burst", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config

[@@@deriving.end]

type load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs = {
  labels : (string * string prop) list option; [@option]
  node_ip : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs) ->
  ()

let yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    =
  (function
   | { labels = v_labels; node_ip = v_node_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_node_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_ip", arg in
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
       `Assoc bnds
    : load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs

[@@@deriving.end]

type load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints = {
  effect : string prop option; [@option]
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints) ->
  ()

let yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_effect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "effect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints

[@@@deriving.end]

type load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config = {
  labels : (string * string prop) list option; [@option]
  operating_system : string prop option; [@option]
  kubelet_config :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_configs :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  taints :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config) ->
  ()

let yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config
    =
  (function
   | {
       labels = v_labels;
       operating_system = v_operating_system;
       kubelet_config = v_kubelet_config;
       node_configs = v_node_configs;
       taints = v_taints;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_taints then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints)
               v_taints
           in
           let bnd = "taints", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_configs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs)
               v_node_configs
           in
           let bnd = "node_configs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kubelet_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config)
               v_kubelet_config
           in
           let bnd = "kubelet_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_operating_system with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operating_system", arg in
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
       `Assoc bnds
    : load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config

[@@@deriving.end]

type load_balancer__bgp_lb_config__load_balancer_node_pool_config = {
  node_pool_config :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       load_balancer__bgp_lb_config__load_balancer_node_pool_config) ->
  ()

let yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config
    =
  (function
   | { node_pool_config = v_node_pool_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_node_pool_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config)
               v_node_pool_config
           in
           let bnd = "node_pool_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : load_balancer__bgp_lb_config__load_balancer_node_pool_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config

[@@@deriving.end]

type load_balancer__bgp_lb_config = {
  asn : float prop;
  address_pools : load_balancer__bgp_lb_config__address_pools list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  bgp_peer_configs :
    load_balancer__bgp_lb_config__bgp_peer_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  load_balancer_node_pool_config :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer__bgp_lb_config) -> ()

let yojson_of_load_balancer__bgp_lb_config =
  (function
   | {
       asn = v_asn;
       address_pools = v_address_pools;
       bgp_peer_configs = v_bgp_peer_configs;
       load_balancer_node_pool_config =
         v_load_balancer_node_pool_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_load_balancer_node_pool_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load_balancer__bgp_lb_config__load_balancer_node_pool_config)
               v_load_balancer_node_pool_config
           in
           let bnd = "load_balancer_node_pool_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bgp_peer_configs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load_balancer__bgp_lb_config__bgp_peer_configs)
               v_bgp_peer_configs
           in
           let bnd = "bgp_peer_configs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_address_pools then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load_balancer__bgp_lb_config__address_pools)
               v_address_pools
           in
           let bnd = "address_pools", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_asn in
         ("asn", arg) :: bnds
       in
       `Assoc bnds
    : load_balancer__bgp_lb_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer__bgp_lb_config

[@@@deriving.end]

type load_balancer__manual_lb_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer__manual_lb_config) -> ()

let yojson_of_load_balancer__manual_lb_config =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : load_balancer__manual_lb_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer__manual_lb_config

[@@@deriving.end]

type load_balancer__metal_lb_config__address_pools = {
  addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  avoid_buggy_ips : bool prop option; [@option]
  manual_assign : bool prop option; [@option]
  pool : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer__metal_lb_config__address_pools) -> ()

let yojson_of_load_balancer__metal_lb_config__address_pools =
  (function
   | {
       addresses = v_addresses;
       avoid_buggy_ips = v_avoid_buggy_ips;
       manual_assign = v_manual_assign;
       pool = v_pool;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pool in
         ("pool", arg) :: bnds
       in
       let bnds =
         match v_manual_assign with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "manual_assign", arg in
             bnd :: bnds
       in
       let bnds =
         match v_avoid_buggy_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "avoid_buggy_ips", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_addresses
           in
           let bnd = "addresses", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : load_balancer__metal_lb_config__address_pools ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer__metal_lb_config__address_pools

[@@@deriving.end]

type load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs = {
  labels : (string * string prop) list option; [@option]
  node_ip : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs) ->
  ()

let yojson_of_load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    =
  (function
   | { labels = v_labels; node_ip = v_node_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_node_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_ip", arg in
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
       `Assoc bnds
    : load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs

[@@@deriving.end]

type load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints = {
  effect : string prop option; [@option]
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints) ->
  ()

let yojson_of_load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_effect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "effect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints

[@@@deriving.end]

type load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config = {
  labels : (string * string prop) list option; [@option]
  operating_system : string prop option; [@option]
  node_configs :
    load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  taints :
    load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config) ->
  ()

let yojson_of_load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config
    =
  (function
   | {
       labels = v_labels;
       operating_system = v_operating_system;
       node_configs = v_node_configs;
       taints = v_taints;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_taints then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints)
               v_taints
           in
           let bnd = "taints", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_configs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs)
               v_node_configs
           in
           let bnd = "node_configs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_operating_system with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operating_system", arg in
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
       `Assoc bnds
    : load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config

[@@@deriving.end]

type load_balancer__metal_lb_config__load_balancer_node_pool_config = {
  node_pool_config :
    load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       load_balancer__metal_lb_config__load_balancer_node_pool_config) ->
  ()

let yojson_of_load_balancer__metal_lb_config__load_balancer_node_pool_config
    =
  (function
   | { node_pool_config = v_node_pool_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_node_pool_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config)
               v_node_pool_config
           in
           let bnd = "node_pool_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : load_balancer__metal_lb_config__load_balancer_node_pool_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_load_balancer__metal_lb_config__load_balancer_node_pool_config

[@@@deriving.end]

type load_balancer__metal_lb_config = {
  address_pools : load_balancer__metal_lb_config__address_pools list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  load_balancer_node_pool_config :
    load_balancer__metal_lb_config__load_balancer_node_pool_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer__metal_lb_config) -> ()

let yojson_of_load_balancer__metal_lb_config =
  (function
   | {
       address_pools = v_address_pools;
       load_balancer_node_pool_config =
         v_load_balancer_node_pool_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_load_balancer_node_pool_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load_balancer__metal_lb_config__load_balancer_node_pool_config)
               v_load_balancer_node_pool_config
           in
           let bnd = "load_balancer_node_pool_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_address_pools then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load_balancer__metal_lb_config__address_pools)
               v_address_pools
           in
           let bnd = "address_pools", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : load_balancer__metal_lb_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer__metal_lb_config

[@@@deriving.end]

type load_balancer__port_config = {
  control_plane_load_balancer_port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer__port_config) -> ()

let yojson_of_load_balancer__port_config =
  (function
   | {
       control_plane_load_balancer_port =
         v_control_plane_load_balancer_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_control_plane_load_balancer_port
         in
         ("control_plane_load_balancer_port", arg) :: bnds
       in
       `Assoc bnds
    : load_balancer__port_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer__port_config

[@@@deriving.end]

type load_balancer__vip_config = {
  control_plane_vip : string prop;
  ingress_vip : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer__vip_config) -> ()

let yojson_of_load_balancer__vip_config =
  (function
   | {
       control_plane_vip = v_control_plane_vip;
       ingress_vip = v_ingress_vip;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ingress_vip in
         ("ingress_vip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_control_plane_vip
         in
         ("control_plane_vip", arg) :: bnds
       in
       `Assoc bnds
    : load_balancer__vip_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer__vip_config

[@@@deriving.end]

type load_balancer = {
  bgp_lb_config : load_balancer__bgp_lb_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  manual_lb_config : load_balancer__manual_lb_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metal_lb_config : load_balancer__metal_lb_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  port_config : load_balancer__port_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vip_config : load_balancer__vip_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer) -> ()

let yojson_of_load_balancer =
  (function
   | {
       bgp_lb_config = v_bgp_lb_config;
       manual_lb_config = v_manual_lb_config;
       metal_lb_config = v_metal_lb_config;
       port_config = v_port_config;
       vip_config = v_vip_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vip_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_load_balancer__vip_config)
               v_vip_config
           in
           let bnd = "vip_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_port_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_load_balancer__port_config)
               v_port_config
           in
           let bnd = "port_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metal_lb_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_load_balancer__metal_lb_config)
               v_metal_lb_config
           in
           let bnd = "metal_lb_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_manual_lb_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_load_balancer__manual_lb_config)
               v_manual_lb_config
           in
           let bnd = "manual_lb_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bgp_lb_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_load_balancer__bgp_lb_config)
               v_bgp_lb_config
           in
           let bnd = "bgp_lb_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : load_balancer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer

[@@@deriving.end]

type maintenance_config = {
  maintenance_address_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_config) -> ()

let yojson_of_maintenance_config =
  (function
   | {
       maintenance_address_cidr_blocks =
         v_maintenance_address_cidr_blocks;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_address_cidr_blocks then
           bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_maintenance_address_cidr_blocks
           in
           let bnd = "maintenance_address_cidr_blocks", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : maintenance_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_config

[@@@deriving.end]

type network_config__island_mode_cidr = {
  pod_address_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_address_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config__island_mode_cidr) -> ()

let yojson_of_network_config__island_mode_cidr =
  (function
   | {
       pod_address_cidr_blocks = v_pod_address_cidr_blocks;
       service_address_cidr_blocks = v_service_address_cidr_blocks;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_service_address_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_service_address_cidr_blocks
           in
           let bnd = "service_address_cidr_blocks", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pod_address_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_pod_address_cidr_blocks
           in
           let bnd = "pod_address_cidr_blocks", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : network_config__island_mode_cidr ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__island_mode_cidr

[@@@deriving.end]

type network_config__multiple_network_interfaces_config = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : network_config__multiple_network_interfaces_config) -> ()

let yojson_of_network_config__multiple_network_interfaces_config =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_config__multiple_network_interfaces_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__multiple_network_interfaces_config

[@@@deriving.end]

type network_config__sr_iov_config = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config__sr_iov_config) -> ()

let yojson_of_network_config__sr_iov_config =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_config__sr_iov_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__sr_iov_config

[@@@deriving.end]

type network_config = {
  advanced_networking : bool prop option; [@option]
  island_mode_cidr : network_config__island_mode_cidr list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  multiple_network_interfaces_config :
    network_config__multiple_network_interfaces_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sr_iov_config : network_config__sr_iov_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config) -> ()

let yojson_of_network_config =
  (function
   | {
       advanced_networking = v_advanced_networking;
       island_mode_cidr = v_island_mode_cidr;
       multiple_network_interfaces_config =
         v_multiple_network_interfaces_config;
       sr_iov_config = v_sr_iov_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sr_iov_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_config__sr_iov_config)
               v_sr_iov_config
           in
           let bnd = "sr_iov_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_multiple_network_interfaces_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_config__multiple_network_interfaces_config)
               v_multiple_network_interfaces_config
           in
           let bnd = "multiple_network_interfaces_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_island_mode_cidr then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_config__island_mode_cidr)
               v_island_mode_cidr
           in
           let bnd = "island_mode_cidr", arg in
           bnd :: bnds
       in
       let bnds =
         match v_advanced_networking with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "advanced_networking", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config

[@@@deriving.end]

type node_access_config = {
  login_user : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_access_config) -> ()

let yojson_of_node_access_config =
  (function
   | { login_user = v_login_user } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_login_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "login_user", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_access_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_access_config

[@@@deriving.end]

type node_config = {
  container_runtime : string prop option; [@option]
  max_pods_per_node : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config) -> ()

let yojson_of_node_config =
  (function
   | {
       container_runtime = v_container_runtime;
       max_pods_per_node = v_max_pods_per_node;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_pods_per_node with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_pods_per_node", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_runtime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_runtime", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config

[@@@deriving.end]

type os_environment_config = { package_repo_excluded : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : os_environment_config) -> ()

let yojson_of_os_environment_config =
  (function
   | { package_repo_excluded = v_package_repo_excluded } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_package_repo_excluded
         in
         ("package_repo_excluded", arg) :: bnds
       in
       `Assoc bnds
    : os_environment_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_environment_config

[@@@deriving.end]

type proxy = {
  no_proxy : string prop list option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : proxy) -> ()

let yojson_of_proxy =
  (function
   | { no_proxy = v_no_proxy; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_no_proxy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "no_proxy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : proxy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_proxy

[@@@deriving.end]

type security_config__authorization__admin_users = {
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_config__authorization__admin_users) -> ()

let yojson_of_security_config__authorization__admin_users =
  (function
   | { username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       `Assoc bnds
    : security_config__authorization__admin_users ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_config__authorization__admin_users

[@@@deriving.end]

type security_config__authorization = {
  admin_users : security_config__authorization__admin_users list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_config__authorization) -> ()

let yojson_of_security_config__authorization =
  (function
   | { admin_users = v_admin_users } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_users then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_config__authorization__admin_users)
               v_admin_users
           in
           let bnd = "admin_users", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : security_config__authorization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_config__authorization

[@@@deriving.end]

type security_config = {
  authorization : security_config__authorization list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_config) -> ()

let yojson_of_security_config =
  (function
   | { authorization = v_authorization } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_authorization then bnds
         else
           let arg =
             (yojson_of_list yojson_of_security_config__authorization)
               v_authorization
           in
           let bnd = "authorization", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : security_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_config

[@@@deriving.end]

type storage__lvp_node_mounts_config = {
  path : string prop;
  storage_class : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage__lvp_node_mounts_config) -> ()

let yojson_of_storage__lvp_node_mounts_config =
  (function
   | { path = v_path; storage_class = v_storage_class } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_class in
         ("storage_class", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : storage__lvp_node_mounts_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage__lvp_node_mounts_config

[@@@deriving.end]

type storage__lvp_share_config__lvp_config = {
  path : string prop;
  storage_class : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage__lvp_share_config__lvp_config) -> ()

let yojson_of_storage__lvp_share_config__lvp_config =
  (function
   | { path = v_path; storage_class = v_storage_class } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_class in
         ("storage_class", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : storage__lvp_share_config__lvp_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage__lvp_share_config__lvp_config

[@@@deriving.end]

type storage__lvp_share_config = {
  shared_path_pv_count : float prop option; [@option]
  lvp_config : storage__lvp_share_config__lvp_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage__lvp_share_config) -> ()

let yojson_of_storage__lvp_share_config =
  (function
   | {
       shared_path_pv_count = v_shared_path_pv_count;
       lvp_config = v_lvp_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_lvp_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage__lvp_share_config__lvp_config)
               v_lvp_config
           in
           let bnd = "lvp_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_shared_path_pv_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "shared_path_pv_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage__lvp_share_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage__lvp_share_config

[@@@deriving.end]

type storage = {
  lvp_node_mounts_config : storage__lvp_node_mounts_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lvp_share_config : storage__lvp_share_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage) -> ()

let yojson_of_storage =
  (function
   | {
       lvp_node_mounts_config = v_lvp_node_mounts_config;
       lvp_share_config = v_lvp_share_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_lvp_share_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage__lvp_share_config)
               v_lvp_share_config
           in
           let bnd = "lvp_share_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lvp_node_mounts_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage__lvp_node_mounts_config)
               v_lvp_node_mounts_config
           in
           let bnd = "lvp_node_mounts_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : storage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage

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

type upgrade_policy = { policy : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : upgrade_policy) -> ()

let yojson_of_upgrade_policy =
  (function
   | { policy = v_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : upgrade_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_upgrade_policy

[@@@deriving.end]

type fleet = { membership : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : fleet) -> ()

let yojson_of_fleet =
  (function
   | { membership = v_membership } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_membership in
         ("membership", arg) :: bnds
       in
       `Assoc bnds
    : fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fleet

[@@@deriving.end]

type status__conditions = {
  last_transition_time : string prop;
  message : string prop;
  reason : string prop;
  state : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__conditions) -> ()

let yojson_of_status__conditions =
  (function
   | {
       last_transition_time = v_last_transition_time;
       message = v_message;
       reason = v_reason;
       state = v_state;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_transition_time
         in
         ("last_transition_time", arg) :: bnds
       in
       `Assoc bnds
    : status__conditions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__conditions

[@@@deriving.end]

type status = {
  conditions : status__conditions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  error_message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | { conditions = v_conditions; error_message = v_error_message }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_error_message in
         ("error_message", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_conditions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_status__conditions)
               v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type validation_check__status__result = {
  category : string prop;
  description : string prop;
  details : string prop;
  options : string prop;
  reason : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_check__status__result) -> ()

let yojson_of_validation_check__status__result =
  (function
   | {
       category = v_category;
       description = v_description;
       details = v_details;
       options = v_options;
       reason = v_reason;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_options in
         ("options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_details in
         ("details", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_category in
         ("category", arg) :: bnds
       in
       `Assoc bnds
    : validation_check__status__result ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_check__status__result

[@@@deriving.end]

type validation_check__status = {
  result : validation_check__status__result list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_check__status) -> ()

let yojson_of_validation_check__status =
  (function
   | { result = v_result } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_result then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_validation_check__status__result)
               v_result
           in
           let bnd = "result", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : validation_check__status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_check__status

[@@@deriving.end]

type validation_check = {
  options : string prop;
  scenario : string prop;
  status : validation_check__status list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_check) -> ()

let yojson_of_validation_check =
  (function
   | {
       options = v_options;
       scenario = v_scenario;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_status then bnds
         else
           let arg =
             (yojson_of_list yojson_of_validation_check__status)
               v_status
           in
           let bnd = "status", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scenario in
         ("scenario", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_options in
         ("options", arg) :: bnds
       in
       `Assoc bnds
    : validation_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_check

[@@@deriving.end]

type google_gkeonprem_bare_metal_cluster = {
  admin_cluster_membership : string prop;
  annotations : (string * string prop) list option; [@option]
  bare_metal_version : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  binary_authorization : binary_authorization list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cluster_operations : cluster_operations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  control_plane : control_plane list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  load_balancer : load_balancer list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maintenance_config : maintenance_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_config : network_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_access_config : node_access_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_config : node_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  os_environment_config : os_environment_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  proxy : proxy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_config : security_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage : storage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  upgrade_policy : upgrade_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_gkeonprem_bare_metal_cluster) -> ()

let yojson_of_google_gkeonprem_bare_metal_cluster =
  (function
   | {
       admin_cluster_membership = v_admin_cluster_membership;
       annotations = v_annotations;
       bare_metal_version = v_bare_metal_version;
       description = v_description;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       binary_authorization = v_binary_authorization;
       cluster_operations = v_cluster_operations;
       control_plane = v_control_plane;
       load_balancer = v_load_balancer;
       maintenance_config = v_maintenance_config;
       network_config = v_network_config;
       node_access_config = v_node_access_config;
       node_config = v_node_config;
       os_environment_config = v_os_environment_config;
       proxy = v_proxy;
       security_config = v_security_config;
       storage = v_storage;
       timeouts = v_timeouts;
       upgrade_policy = v_upgrade_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_upgrade_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_upgrade_policy)
               v_upgrade_policy
           in
           let bnd = "upgrade_policy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_storage then bnds
         else
           let arg = (yojson_of_list yojson_of_storage) v_storage in
           let bnd = "storage", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_security_config)
               v_security_config
           in
           let bnd = "security_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_proxy then bnds
         else
           let arg = (yojson_of_list yojson_of_proxy) v_proxy in
           let bnd = "proxy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_os_environment_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_os_environment_config)
               v_os_environment_config
           in
           let bnd = "os_environment_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config) v_node_config
           in
           let bnd = "node_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_access_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_access_config)
               v_node_access_config
           in
           let bnd = "node_access_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_config)
               v_network_config
           in
           let bnd = "network_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance_config)
               v_maintenance_config
           in
           let bnd = "maintenance_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_load_balancer then bnds
         else
           let arg =
             (yojson_of_list yojson_of_load_balancer) v_load_balancer
           in
           let bnd = "load_balancer", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_control_plane then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_plane) v_control_plane
           in
           let bnd = "control_plane", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cluster_operations then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cluster_operations)
               v_cluster_operations
           in
           let bnd = "cluster_operations", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_binary_authorization then bnds
         else
           let arg =
             (yojson_of_list yojson_of_binary_authorization)
               v_binary_authorization
           in
           let bnd = "binary_authorization", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_bare_metal_version
         in
         ("bare_metal_version", arg) :: bnds
       in
       let bnds =
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_cluster_membership
         in
         ("admin_cluster_membership", arg) :: bnds
       in
       `Assoc bnds
    : google_gkeonprem_bare_metal_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_gkeonprem_bare_metal_cluster

[@@@deriving.end]

let binary_authorization ?evaluation_mode () : binary_authorization =
  { evaluation_mode }

let cluster_operations ?enable_application_logs () :
    cluster_operations =
  { enable_application_logs }

let control_plane__api_server_args ~argument ~value () :
    control_plane__api_server_args =
  { argument; value }

let control_plane__control_plane_node_pool_config__node_pool_config__node_configs
    ?labels ?node_ip () :
    control_plane__control_plane_node_pool_config__node_pool_config__node_configs
    =
  { labels; node_ip }

let control_plane__control_plane_node_pool_config__node_pool_config__taints
    ?effect ?key ?value () :
    control_plane__control_plane_node_pool_config__node_pool_config__taints
    =
  { effect; key; value }

let control_plane__control_plane_node_pool_config__node_pool_config
    ?labels ?operating_system ?(node_configs = []) ?(taints = []) ()
    : control_plane__control_plane_node_pool_config__node_pool_config
    =
  { labels; operating_system; node_configs; taints }

let control_plane__control_plane_node_pool_config ~node_pool_config
    () : control_plane__control_plane_node_pool_config =
  { node_pool_config }

let control_plane ?(api_server_args = [])
    ~control_plane_node_pool_config () : control_plane =
  { api_server_args; control_plane_node_pool_config }

let load_balancer__bgp_lb_config__address_pools ?avoid_buggy_ips
    ?manual_assign ~addresses ~pool () :
    load_balancer__bgp_lb_config__address_pools =
  { addresses; avoid_buggy_ips; manual_assign; pool }

let load_balancer__bgp_lb_config__bgp_peer_configs
    ?control_plane_nodes ~asn ~ip_address () :
    load_balancer__bgp_lb_config__bgp_peer_configs =
  { asn; control_plane_nodes; ip_address }

let load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config
    ?registry_burst ?registry_pull_qps
    ?serialize_image_pulls_disabled () :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config
    =
  {
    registry_burst;
    registry_pull_qps;
    serialize_image_pulls_disabled;
  }

let load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    ?labels ?node_ip () :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    =
  { labels; node_ip }

let load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    ?effect ?key ?value () :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    =
  { effect; key; value }

let load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config
    ?labels ?operating_system ?(kubelet_config = [])
    ?(node_configs = []) ?(taints = []) () :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config
    =
  { labels; operating_system; kubelet_config; node_configs; taints }

let load_balancer__bgp_lb_config__load_balancer_node_pool_config
    ?(node_pool_config = []) () :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config =
  { node_pool_config }

let load_balancer__bgp_lb_config
    ?(load_balancer_node_pool_config = []) ~asn ~address_pools
    ~bgp_peer_configs () : load_balancer__bgp_lb_config =
  {
    asn;
    address_pools;
    bgp_peer_configs;
    load_balancer_node_pool_config;
  }

let load_balancer__manual_lb_config ~enabled () :
    load_balancer__manual_lb_config =
  { enabled }

let load_balancer__metal_lb_config__address_pools ?avoid_buggy_ips
    ?manual_assign ~addresses ~pool () :
    load_balancer__metal_lb_config__address_pools =
  { addresses; avoid_buggy_ips; manual_assign; pool }

let load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    ?labels ?node_ip () :
    load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    =
  { labels; node_ip }

let load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    ?effect ?key ?value () :
    load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    =
  { effect; key; value }

let load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config
    ?labels ?operating_system ?(node_configs = []) ?(taints = []) ()
    :
    load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config
    =
  { labels; operating_system; node_configs; taints }

let load_balancer__metal_lb_config__load_balancer_node_pool_config
    ?(node_pool_config = []) () :
    load_balancer__metal_lb_config__load_balancer_node_pool_config =
  { node_pool_config }

let load_balancer__metal_lb_config
    ?(load_balancer_node_pool_config = []) ~address_pools () :
    load_balancer__metal_lb_config =
  { address_pools; load_balancer_node_pool_config }

let load_balancer__port_config ~control_plane_load_balancer_port () :
    load_balancer__port_config =
  { control_plane_load_balancer_port }

let load_balancer__vip_config ~control_plane_vip ~ingress_vip () :
    load_balancer__vip_config =
  { control_plane_vip; ingress_vip }

let load_balancer ?(bgp_lb_config = []) ?(manual_lb_config = [])
    ?(metal_lb_config = []) ~port_config ~vip_config () :
    load_balancer =
  {
    bgp_lb_config;
    manual_lb_config;
    metal_lb_config;
    port_config;
    vip_config;
  }

let maintenance_config ~maintenance_address_cidr_blocks () :
    maintenance_config =
  { maintenance_address_cidr_blocks }

let network_config__island_mode_cidr ~pod_address_cidr_blocks
    ~service_address_cidr_blocks () :
    network_config__island_mode_cidr =
  { pod_address_cidr_blocks; service_address_cidr_blocks }

let network_config__multiple_network_interfaces_config ?enabled () :
    network_config__multiple_network_interfaces_config =
  { enabled }

let network_config__sr_iov_config ?enabled () :
    network_config__sr_iov_config =
  { enabled }

let network_config ?advanced_networking ?(island_mode_cidr = [])
    ?(multiple_network_interfaces_config = []) ?(sr_iov_config = [])
    () : network_config =
  {
    advanced_networking;
    island_mode_cidr;
    multiple_network_interfaces_config;
    sr_iov_config;
  }

let node_access_config ?login_user () : node_access_config =
  { login_user }

let node_config ?container_runtime ?max_pods_per_node () :
    node_config =
  { container_runtime; max_pods_per_node }

let os_environment_config ~package_repo_excluded () :
    os_environment_config =
  { package_repo_excluded }

let proxy ?no_proxy ~uri () : proxy = { no_proxy; uri }

let security_config__authorization__admin_users ~username () :
    security_config__authorization__admin_users =
  { username }

let security_config__authorization ~admin_users () :
    security_config__authorization =
  { admin_users }

let security_config ?(authorization = []) () : security_config =
  { authorization }

let storage__lvp_node_mounts_config ~path ~storage_class () :
    storage__lvp_node_mounts_config =
  { path; storage_class }

let storage__lvp_share_config__lvp_config ~path ~storage_class () :
    storage__lvp_share_config__lvp_config =
  { path; storage_class }

let storage__lvp_share_config ?shared_path_pv_count ~lvp_config () :
    storage__lvp_share_config =
  { shared_path_pv_count; lvp_config }

let storage ~lvp_node_mounts_config ~lvp_share_config () : storage =
  { lvp_node_mounts_config; lvp_share_config }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let upgrade_policy ?policy () : upgrade_policy = { policy }

let google_gkeonprem_bare_metal_cluster ?annotations ?description ?id
    ?project ?(binary_authorization = []) ?(cluster_operations = [])
    ?(maintenance_config = []) ?(node_access_config = [])
    ?(node_config = []) ?(os_environment_config = []) ?(proxy = [])
    ?(security_config = []) ?timeouts ?(upgrade_policy = [])
    ~admin_cluster_membership ~bare_metal_version ~location ~name
    ~control_plane ~load_balancer ~network_config ~storage () :
    google_gkeonprem_bare_metal_cluster =
  {
    admin_cluster_membership;
    annotations;
    bare_metal_version;
    description;
    id;
    location;
    name;
    project;
    binary_authorization;
    cluster_operations;
    control_plane;
    load_balancer;
    maintenance_config;
    network_config;
    node_access_config;
    node_config;
    os_environment_config;
    proxy;
    security_config;
    storage;
    timeouts;
    upgrade_policy;
  }

type t = {
  tf_name : string;
  admin_cluster_membership : string prop;
  annotations : (string * string) list prop;
  bare_metal_version : string prop;
  create_time : string prop;
  delete_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  endpoint : string prop;
  etag : string prop;
  fleet : fleet list prop;
  id : string prop;
  local_name : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  status : status list prop;
  uid : string prop;
  update_time : string prop;
  validation_check : validation_check list prop;
}

let make ?annotations ?description ?id ?project
    ?(binary_authorization = []) ?(cluster_operations = [])
    ?(maintenance_config = []) ?(node_access_config = [])
    ?(node_config = []) ?(os_environment_config = []) ?(proxy = [])
    ?(security_config = []) ?timeouts ?(upgrade_policy = [])
    ~admin_cluster_membership ~bare_metal_version ~location ~name
    ~control_plane ~load_balancer ~network_config ~storage __id =
  let __type = "google_gkeonprem_bare_metal_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       admin_cluster_membership =
         Prop.computed __type __id "admin_cluster_membership";
       annotations = Prop.computed __type __id "annotations";
       bare_metal_version =
         Prop.computed __type __id "bare_metal_version";
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       description = Prop.computed __type __id "description";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       endpoint = Prop.computed __type __id "endpoint";
       etag = Prop.computed __type __id "etag";
       fleet = Prop.computed __type __id "fleet";
       id = Prop.computed __type __id "id";
       local_name = Prop.computed __type __id "local_name";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       state = Prop.computed __type __id "state";
       status = Prop.computed __type __id "status";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       validation_check =
         Prop.computed __type __id "validation_check";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gkeonprem_bare_metal_cluster
        (google_gkeonprem_bare_metal_cluster ?annotations
           ?description ?id ?project ~binary_authorization
           ~cluster_operations ~maintenance_config
           ~node_access_config ~node_config ~os_environment_config
           ~proxy ~security_config ?timeouts ~upgrade_policy
           ~admin_cluster_membership ~bare_metal_version ~location
           ~name ~control_plane ~load_balancer ~network_config
           ~storage ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?description ?id ?project
    ?(binary_authorization = []) ?(cluster_operations = [])
    ?(maintenance_config = []) ?(node_access_config = [])
    ?(node_config = []) ?(os_environment_config = []) ?(proxy = [])
    ?(security_config = []) ?timeouts ?(upgrade_policy = [])
    ~admin_cluster_membership ~bare_metal_version ~location ~name
    ~control_plane ~load_balancer ~network_config ~storage __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?description ?id ?project ~binary_authorization
      ~cluster_operations ~maintenance_config ~node_access_config
      ~node_config ~os_environment_config ~proxy ~security_config
      ?timeouts ~upgrade_policy ~admin_cluster_membership
      ~bare_metal_version ~location ~name ~control_plane
      ~load_balancer ~network_config ~storage __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
