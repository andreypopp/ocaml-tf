(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type anti_affinity_groups = { aag_config_disabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : anti_affinity_groups) -> ()

let yojson_of_anti_affinity_groups =
  (function
   | { aag_config_disabled = v_aag_config_disabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_aag_config_disabled
         in
         ("aag_config_disabled", arg) :: bnds
       in
       `Assoc bnds
    : anti_affinity_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_anti_affinity_groups

[@@@deriving.end]

type authorization__admin_users = { username : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : authorization__admin_users) -> ()

let yojson_of_authorization__admin_users =
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
    : authorization__admin_users -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorization__admin_users

[@@@deriving.end]

type authorization = {
  admin_users : authorization__admin_users list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authorization) -> ()

let yojson_of_authorization =
  (function
   | { admin_users = v_admin_users } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_users then bnds
         else
           let arg =
             (yojson_of_list yojson_of_authorization__admin_users)
               v_admin_users
           in
           let bnd = "admin_users", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorization

[@@@deriving.end]

type auto_repair_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_repair_config) -> ()

let yojson_of_auto_repair_config =
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
    : auto_repair_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_repair_config

[@@@deriving.end]

type control_plane_node__auto_resize_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane_node__auto_resize_config) -> ()

let yojson_of_control_plane_node__auto_resize_config =
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
    : control_plane_node__auto_resize_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane_node__auto_resize_config

[@@@deriving.end]

type control_plane_node__vsphere_config = {
  datastore : string prop;
  storage_policy_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane_node__vsphere_config) -> ()

let yojson_of_control_plane_node__vsphere_config =
  (function
   | {
       datastore = v_datastore;
       storage_policy_name = v_storage_policy_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_policy_name
         in
         ("storage_policy_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_datastore in
         ("datastore", arg) :: bnds
       in
       `Assoc bnds
    : control_plane_node__vsphere_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane_node__vsphere_config

[@@@deriving.end]

type control_plane_node = {
  cpus : float prop option; [@option]
  memory : float prop option; [@option]
  replicas : float prop option; [@option]
  auto_resize_config : control_plane_node__auto_resize_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane_node) -> ()

let yojson_of_control_plane_node =
  (function
   | {
       cpus = v_cpus;
       memory = v_memory;
       replicas = v_replicas;
       auto_resize_config = v_auto_resize_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_resize_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_control_plane_node__auto_resize_config)
               v_auto_resize_config
           in
           let bnd = "auto_resize_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_replicas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replicas", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpus with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpus", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : control_plane_node -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane_node

[@@@deriving.end]

type dataplane_v2 = {
  advanced_networking : bool prop option; [@option]
  dataplane_v2_enabled : bool prop option; [@option]
  windows_dataplane_v2_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dataplane_v2) -> ()

let yojson_of_dataplane_v2 =
  (function
   | {
       advanced_networking = v_advanced_networking;
       dataplane_v2_enabled = v_dataplane_v2_enabled;
       windows_dataplane_v2_enabled = v_windows_dataplane_v2_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_windows_dataplane_v2_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "windows_dataplane_v2_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataplane_v2_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dataplane_v2_enabled", arg in
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
    : dataplane_v2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dataplane_v2

[@@@deriving.end]

type load_balancer__f5_config = {
  address : string prop option; [@option]
  partition : string prop option; [@option]
  snat_pool : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer__f5_config) -> ()

let yojson_of_load_balancer__f5_config =
  (function
   | {
       address = v_address;
       partition = v_partition;
       snat_pool = v_snat_pool;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_snat_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snat_pool", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : load_balancer__f5_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer__f5_config

[@@@deriving.end]

type load_balancer__manual_lb_config = {
  control_plane_node_port : float prop option; [@option]
  ingress_http_node_port : float prop option; [@option]
  ingress_https_node_port : float prop option; [@option]
  konnectivity_server_node_port : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer__manual_lb_config) -> ()

let yojson_of_load_balancer__manual_lb_config =
  (function
   | {
       control_plane_node_port = v_control_plane_node_port;
       ingress_http_node_port = v_ingress_http_node_port;
       ingress_https_node_port = v_ingress_https_node_port;
       konnectivity_server_node_port =
         v_konnectivity_server_node_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_konnectivity_server_node_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "konnectivity_server_node_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ingress_https_node_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ingress_https_node_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ingress_http_node_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ingress_http_node_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_control_plane_node_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "control_plane_node_port", arg in
             bnd :: bnds
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

type load_balancer__metal_lb_config = {
  address_pools : load_balancer__metal_lb_config__address_pools list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer__metal_lb_config) -> ()

let yojson_of_load_balancer__metal_lb_config =
  (function
   | { address_pools = v_address_pools } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type load_balancer__vip_config = {
  control_plane_vip : string prop option; [@option]
  ingress_vip : string prop option; [@option]
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
         match v_ingress_vip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ingress_vip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_control_plane_vip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "control_plane_vip", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : load_balancer__vip_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer__vip_config

[@@@deriving.end]

type load_balancer = {
  f5_config : load_balancer__f5_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  manual_lb_config : load_balancer__manual_lb_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metal_lb_config : load_balancer__metal_lb_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vip_config : load_balancer__vip_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer) -> ()

let yojson_of_load_balancer =
  (function
   | {
       f5_config = v_f5_config;
       manual_lb_config = v_manual_lb_config;
       metal_lb_config = v_metal_lb_config;
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
         if Stdlib.( = ) [] v_f5_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_load_balancer__f5_config)
               v_f5_config
           in
           let bnd = "f5_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : load_balancer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer

[@@@deriving.end]

type network_config__control_plane_v2_config__control_plane_ip_block__ips = {
  hostname : string prop option; [@option]
  ip : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       network_config__control_plane_v2_config__control_plane_ip_block__ips) ->
  ()

let yojson_of_network_config__control_plane_v2_config__control_plane_ip_block__ips
    =
  (function
   | { hostname = v_hostname; ip = v_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_config__control_plane_v2_config__control_plane_ip_block__ips ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_network_config__control_plane_v2_config__control_plane_ip_block__ips

[@@@deriving.end]

type network_config__control_plane_v2_config__control_plane_ip_block = {
  gateway : string prop option; [@option]
  netmask : string prop option; [@option]
  ips :
    network_config__control_plane_v2_config__control_plane_ip_block__ips
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       network_config__control_plane_v2_config__control_plane_ip_block) ->
  ()

let yojson_of_network_config__control_plane_v2_config__control_plane_ip_block
    =
  (function
   | { gateway = v_gateway; netmask = v_netmask; ips = v_ips } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ips then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_config__control_plane_v2_config__control_plane_ip_block__ips)
               v_ips
           in
           let bnd = "ips", arg in
           bnd :: bnds
       in
       let bnds =
         match v_netmask with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "netmask", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gateway with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gateway", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_config__control_plane_v2_config__control_plane_ip_block ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_network_config__control_plane_v2_config__control_plane_ip_block

[@@@deriving.end]

type network_config__control_plane_v2_config = {
  control_plane_ip_block :
    network_config__control_plane_v2_config__control_plane_ip_block
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config__control_plane_v2_config) -> ()

let yojson_of_network_config__control_plane_v2_config =
  (function
   | { control_plane_ip_block = v_control_plane_ip_block } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_control_plane_ip_block then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_config__control_plane_v2_config__control_plane_ip_block)
               v_control_plane_ip_block
           in
           let bnd = "control_plane_ip_block", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : network_config__control_plane_v2_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__control_plane_v2_config

[@@@deriving.end]

type network_config__dhcp_ip_config = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config__dhcp_ip_config) -> ()

let yojson_of_network_config__dhcp_ip_config =
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
    : network_config__dhcp_ip_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__dhcp_ip_config

[@@@deriving.end]

type network_config__host_config = {
  dns_search_domains : string prop list option; [@option]
  dns_servers : string prop list option; [@option]
  ntp_servers : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config__host_config) -> ()

let yojson_of_network_config__host_config =
  (function
   | {
       dns_search_domains = v_dns_search_domains;
       dns_servers = v_dns_servers;
       ntp_servers = v_ntp_servers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ntp_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ntp_servers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dns_servers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_search_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dns_search_domains", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_config__host_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__host_config

[@@@deriving.end]

type network_config__static_ip_config__ip_blocks__ips = {
  hostname : string prop option; [@option]
  ip : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : network_config__static_ip_config__ip_blocks__ips) -> ()

let yojson_of_network_config__static_ip_config__ip_blocks__ips =
  (function
   | { hostname = v_hostname; ip = v_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       let bnds =
         match v_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_config__static_ip_config__ip_blocks__ips ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__static_ip_config__ip_blocks__ips

[@@@deriving.end]

type network_config__static_ip_config__ip_blocks = {
  gateway : string prop;
  netmask : string prop;
  ips : network_config__static_ip_config__ip_blocks__ips list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config__static_ip_config__ip_blocks) -> ()

let yojson_of_network_config__static_ip_config__ip_blocks =
  (function
   | { gateway = v_gateway; netmask = v_netmask; ips = v_ips } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ips then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_config__static_ip_config__ip_blocks__ips)
               v_ips
           in
           let bnd = "ips", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_netmask in
         ("netmask", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gateway in
         ("gateway", arg) :: bnds
       in
       `Assoc bnds
    : network_config__static_ip_config__ip_blocks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__static_ip_config__ip_blocks

[@@@deriving.end]

type network_config__static_ip_config = {
  ip_blocks : network_config__static_ip_config__ip_blocks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config__static_ip_config) -> ()

let yojson_of_network_config__static_ip_config =
  (function
   | { ip_blocks = v_ip_blocks } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_blocks then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_config__static_ip_config__ip_blocks)
               v_ip_blocks
           in
           let bnd = "ip_blocks", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : network_config__static_ip_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__static_ip_config

[@@@deriving.end]

type network_config = {
  pod_address_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_address_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  control_plane_v2_config :
    network_config__control_plane_v2_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dhcp_ip_config : network_config__dhcp_ip_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  host_config : network_config__host_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  static_ip_config : network_config__static_ip_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config) -> ()

let yojson_of_network_config =
  (function
   | {
       pod_address_cidr_blocks = v_pod_address_cidr_blocks;
       service_address_cidr_blocks = v_service_address_cidr_blocks;
       control_plane_v2_config = v_control_plane_v2_config;
       dhcp_ip_config = v_dhcp_ip_config;
       host_config = v_host_config;
       static_ip_config = v_static_ip_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_static_ip_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_config__static_ip_config)
               v_static_ip_config
           in
           let bnd = "static_ip_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_host_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_config__host_config)
               v_host_config
           in
           let bnd = "host_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dhcp_ip_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_config__dhcp_ip_config)
               v_dhcp_ip_config
           in
           let bnd = "dhcp_ip_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_control_plane_v2_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_config__control_plane_v2_config)
               v_control_plane_v2_config
           in
           let bnd = "control_plane_v2_config", arg in
           bnd :: bnds
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
    : network_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config

[@@@deriving.end]

type storage = { vsphere_csi_disabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : storage) -> ()

let yojson_of_storage =
  (function
   | { vsphere_csi_disabled = v_vsphere_csi_disabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_vsphere_csi_disabled
         in
         ("vsphere_csi_disabled", arg) :: bnds
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

type upgrade_policy = {
  control_plane_only : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : upgrade_policy) -> ()

let yojson_of_upgrade_policy =
  (function
   | { control_plane_only = v_control_plane_only } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_control_plane_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "control_plane_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : upgrade_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_upgrade_policy

[@@@deriving.end]

type vcenter = {
  ca_cert_data : string prop option; [@option]
  cluster : string prop option; [@option]
  datacenter : string prop option; [@option]
  datastore : string prop option; [@option]
  folder : string prop option; [@option]
  resource_pool : string prop option; [@option]
  storage_policy_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vcenter) -> ()

let yojson_of_vcenter =
  (function
   | {
       ca_cert_data = v_ca_cert_data;
       cluster = v_cluster;
       datacenter = v_datacenter;
       datastore = v_datastore;
       folder = v_folder;
       resource_pool = v_resource_pool;
       storage_policy_name = v_storage_policy_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_pool", arg in
             bnd :: bnds
       in
       let bnds =
         match v_folder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "folder", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datastore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datastore", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datacenter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datacenter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ca_cert_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ca_cert_data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vcenter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vcenter

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

type google_gkeonprem_vmware_cluster = {
  admin_cluster_membership : string prop;
  annotations : (string * string prop) list option; [@option]
  description : string prop option; [@option]
  enable_control_plane_v2 : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  on_prem_version : string prop;
  project : string prop option; [@option]
  vm_tracking_enabled : bool prop option; [@option]
  anti_affinity_groups : anti_affinity_groups list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  authorization : authorization list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  auto_repair_config : auto_repair_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  control_plane_node : control_plane_node list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dataplane_v2 : dataplane_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  load_balancer : load_balancer list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_config : network_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage : storage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  upgrade_policy : upgrade_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vcenter : vcenter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_gkeonprem_vmware_cluster) -> ()

let yojson_of_google_gkeonprem_vmware_cluster =
  (function
   | {
       admin_cluster_membership = v_admin_cluster_membership;
       annotations = v_annotations;
       description = v_description;
       enable_control_plane_v2 = v_enable_control_plane_v2;
       id = v_id;
       location = v_location;
       name = v_name;
       on_prem_version = v_on_prem_version;
       project = v_project;
       vm_tracking_enabled = v_vm_tracking_enabled;
       anti_affinity_groups = v_anti_affinity_groups;
       authorization = v_authorization;
       auto_repair_config = v_auto_repair_config;
       control_plane_node = v_control_plane_node;
       dataplane_v2 = v_dataplane_v2;
       load_balancer = v_load_balancer;
       network_config = v_network_config;
       storage = v_storage;
       timeouts = v_timeouts;
       upgrade_policy = v_upgrade_policy;
       vcenter = v_vcenter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vcenter then bnds
         else
           let arg = (yojson_of_list yojson_of_vcenter) v_vcenter in
           let bnd = "vcenter", arg in
           bnd :: bnds
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
         if Stdlib.( = ) [] v_load_balancer then bnds
         else
           let arg =
             (yojson_of_list yojson_of_load_balancer) v_load_balancer
           in
           let bnd = "load_balancer", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dataplane_v2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dataplane_v2) v_dataplane_v2
           in
           let bnd = "dataplane_v2", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_control_plane_node then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_plane_node)
               v_control_plane_node
           in
           let bnd = "control_plane_node", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_repair_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auto_repair_config)
               v_auto_repair_config
           in
           let bnd = "auto_repair_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authorization then bnds
         else
           let arg =
             (yojson_of_list yojson_of_authorization) v_authorization
           in
           let bnd = "authorization", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_anti_affinity_groups then bnds
         else
           let arg =
             (yojson_of_list yojson_of_anti_affinity_groups)
               v_anti_affinity_groups
           in
           let bnd = "anti_affinity_groups", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vm_tracking_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vm_tracking_enabled", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_on_prem_version
         in
         ("on_prem_version", arg) :: bnds
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
         match v_enable_control_plane_v2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_control_plane_v2", arg in
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
    : google_gkeonprem_vmware_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_gkeonprem_vmware_cluster

[@@@deriving.end]

let anti_affinity_groups ~aag_config_disabled () :
    anti_affinity_groups =
  { aag_config_disabled }

let authorization__admin_users ~username () :
    authorization__admin_users =
  { username }

let authorization ?(admin_users = []) () : authorization =
  { admin_users }

let auto_repair_config ~enabled () : auto_repair_config = { enabled }

let control_plane_node__auto_resize_config ~enabled () :
    control_plane_node__auto_resize_config =
  { enabled }

let control_plane_node ?cpus ?memory ?replicas
    ?(auto_resize_config = []) () : control_plane_node =
  { cpus; memory; replicas; auto_resize_config }

let dataplane_v2 ?advanced_networking ?dataplane_v2_enabled
    ?windows_dataplane_v2_enabled () : dataplane_v2 =
  {
    advanced_networking;
    dataplane_v2_enabled;
    windows_dataplane_v2_enabled;
  }

let load_balancer__f5_config ?address ?partition ?snat_pool () :
    load_balancer__f5_config =
  { address; partition; snat_pool }

let load_balancer__manual_lb_config ?control_plane_node_port
    ?ingress_http_node_port ?ingress_https_node_port
    ?konnectivity_server_node_port () :
    load_balancer__manual_lb_config =
  {
    control_plane_node_port;
    ingress_http_node_port;
    ingress_https_node_port;
    konnectivity_server_node_port;
  }

let load_balancer__metal_lb_config__address_pools ?avoid_buggy_ips
    ?manual_assign ~addresses ~pool () :
    load_balancer__metal_lb_config__address_pools =
  { addresses; avoid_buggy_ips; manual_assign; pool }

let load_balancer__metal_lb_config ~address_pools () :
    load_balancer__metal_lb_config =
  { address_pools }

let load_balancer__vip_config ?control_plane_vip ?ingress_vip () :
    load_balancer__vip_config =
  { control_plane_vip; ingress_vip }

let load_balancer ?(f5_config = []) ?(manual_lb_config = [])
    ?(metal_lb_config = []) ?(vip_config = []) () : load_balancer =
  { f5_config; manual_lb_config; metal_lb_config; vip_config }

let network_config__control_plane_v2_config__control_plane_ip_block__ips
    ?hostname ?ip () :
    network_config__control_plane_v2_config__control_plane_ip_block__ips
    =
  { hostname; ip }

let network_config__control_plane_v2_config__control_plane_ip_block
    ?gateway ?netmask ?(ips = []) () :
    network_config__control_plane_v2_config__control_plane_ip_block =
  { gateway; netmask; ips }

let network_config__control_plane_v2_config
    ?(control_plane_ip_block = []) () :
    network_config__control_plane_v2_config =
  { control_plane_ip_block }

let network_config__dhcp_ip_config ~enabled () :
    network_config__dhcp_ip_config =
  { enabled }

let network_config__host_config ?dns_search_domains ?dns_servers
    ?ntp_servers () : network_config__host_config =
  { dns_search_domains; dns_servers; ntp_servers }

let network_config__static_ip_config__ip_blocks__ips ?hostname ~ip ()
    : network_config__static_ip_config__ip_blocks__ips =
  { hostname; ip }

let network_config__static_ip_config__ip_blocks ~gateway ~netmask
    ~ips () : network_config__static_ip_config__ip_blocks =
  { gateway; netmask; ips }

let network_config__static_ip_config ~ip_blocks () :
    network_config__static_ip_config =
  { ip_blocks }

let network_config ?(control_plane_v2_config = [])
    ?(dhcp_ip_config = []) ?(host_config = [])
    ?(static_ip_config = []) ~pod_address_cidr_blocks
    ~service_address_cidr_blocks () : network_config =
  {
    pod_address_cidr_blocks;
    service_address_cidr_blocks;
    control_plane_v2_config;
    dhcp_ip_config;
    host_config;
    static_ip_config;
  }

let storage ~vsphere_csi_disabled () : storage =
  { vsphere_csi_disabled }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let upgrade_policy ?control_plane_only () : upgrade_policy =
  { control_plane_only }

let vcenter ?ca_cert_data ?cluster ?datacenter ?datastore ?folder
    ?resource_pool ?storage_policy_name () : vcenter =
  {
    ca_cert_data;
    cluster;
    datacenter;
    datastore;
    folder;
    resource_pool;
    storage_policy_name;
  }

let google_gkeonprem_vmware_cluster ?annotations ?description
    ?enable_control_plane_v2 ?id ?project ?vm_tracking_enabled
    ?(anti_affinity_groups = []) ?(authorization = [])
    ?(auto_repair_config = []) ?(dataplane_v2 = [])
    ?(load_balancer = []) ?(network_config = []) ?(storage = [])
    ?timeouts ?(upgrade_policy = []) ?(vcenter = [])
    ~admin_cluster_membership ~location ~name ~on_prem_version
    ~control_plane_node () : google_gkeonprem_vmware_cluster =
  {
    admin_cluster_membership;
    annotations;
    description;
    enable_control_plane_v2;
    id;
    location;
    name;
    on_prem_version;
    project;
    vm_tracking_enabled;
    anti_affinity_groups;
    authorization;
    auto_repair_config;
    control_plane_node;
    dataplane_v2;
    load_balancer;
    network_config;
    storage;
    timeouts;
    upgrade_policy;
    vcenter;
  }

type t = {
  tf_name : string;
  admin_cluster_membership : string prop;
  annotations : (string * string) list prop;
  create_time : string prop;
  delete_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  enable_control_plane_v2 : bool prop;
  endpoint : string prop;
  etag : string prop;
  fleet : fleet list prop;
  id : string prop;
  local_name : string prop;
  location : string prop;
  name : string prop;
  on_prem_version : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  status : status list prop;
  uid : string prop;
  update_time : string prop;
  validation_check : validation_check list prop;
  vm_tracking_enabled : bool prop;
}

let make ?annotations ?description ?enable_control_plane_v2 ?id
    ?project ?vm_tracking_enabled ?(anti_affinity_groups = [])
    ?(authorization = []) ?(auto_repair_config = [])
    ?(dataplane_v2 = []) ?(load_balancer = []) ?(network_config = [])
    ?(storage = []) ?timeouts ?(upgrade_policy = []) ?(vcenter = [])
    ~admin_cluster_membership ~location ~name ~on_prem_version
    ~control_plane_node __id =
  let __type = "google_gkeonprem_vmware_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       admin_cluster_membership =
         Prop.computed __type __id "admin_cluster_membership";
       annotations = Prop.computed __type __id "annotations";
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       description = Prop.computed __type __id "description";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       enable_control_plane_v2 =
         Prop.computed __type __id "enable_control_plane_v2";
       endpoint = Prop.computed __type __id "endpoint";
       etag = Prop.computed __type __id "etag";
       fleet = Prop.computed __type __id "fleet";
       id = Prop.computed __type __id "id";
       local_name = Prop.computed __type __id "local_name";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       on_prem_version = Prop.computed __type __id "on_prem_version";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       state = Prop.computed __type __id "state";
       status = Prop.computed __type __id "status";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       validation_check =
         Prop.computed __type __id "validation_check";
       vm_tracking_enabled =
         Prop.computed __type __id "vm_tracking_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gkeonprem_vmware_cluster
        (google_gkeonprem_vmware_cluster ?annotations ?description
           ?enable_control_plane_v2 ?id ?project ?vm_tracking_enabled
           ~anti_affinity_groups ~authorization ~auto_repair_config
           ~dataplane_v2 ~load_balancer ~network_config ~storage
           ?timeouts ~upgrade_policy ~vcenter
           ~admin_cluster_membership ~location ~name ~on_prem_version
           ~control_plane_node ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?description
    ?enable_control_plane_v2 ?id ?project ?vm_tracking_enabled
    ?(anti_affinity_groups = []) ?(authorization = [])
    ?(auto_repair_config = []) ?(dataplane_v2 = [])
    ?(load_balancer = []) ?(network_config = []) ?(storage = [])
    ?timeouts ?(upgrade_policy = []) ?(vcenter = [])
    ~admin_cluster_membership ~location ~name ~on_prem_version
    ~control_plane_node __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?description ?enable_control_plane_v2 ?id
      ?project ?vm_tracking_enabled ~anti_affinity_groups
      ~authorization ~auto_repair_config ~dataplane_v2 ~load_balancer
      ~network_config ~storage ?timeouts ~upgrade_policy ~vcenter
      ~admin_cluster_membership ~location ~name ~on_prem_version
      ~control_plane_node __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
