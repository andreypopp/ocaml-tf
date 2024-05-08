(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bgp_settings__peering_addresses = {
  apipa_addresses : string prop list option; [@option]
  ip_configuration_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp_settings__peering_addresses) -> ()

let yojson_of_bgp_settings__peering_addresses =
  (function
   | {
       apipa_addresses = v_apipa_addresses;
       ip_configuration_name = v_ip_configuration_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ip_configuration_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_configuration_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apipa_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "apipa_addresses", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : bgp_settings__peering_addresses ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp_settings__peering_addresses

[@@@deriving.end]

type bgp_settings = {
  asn : float prop option; [@option]
  peer_weight : float prop option; [@option]
  peering_addresses : bgp_settings__peering_addresses list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp_settings) -> ()

let yojson_of_bgp_settings =
  (function
   | {
       asn = v_asn;
       peer_weight = v_peer_weight;
       peering_addresses = v_peering_addresses;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_peering_addresses then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_bgp_settings__peering_addresses)
               v_peering_addresses
           in
           let bnd = "peering_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         match v_peer_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "peer_weight", arg in
             bnd :: bnds
       in
       let bnds =
         match v_asn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "asn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : bgp_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp_settings

[@@@deriving.end]

type custom_route = {
  address_prefixes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_route) -> ()

let yojson_of_custom_route =
  (function
   | { address_prefixes = v_address_prefixes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_address_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "address_prefixes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_route

[@@@deriving.end]

type ip_configuration = {
  name : string prop option; [@option]
  private_ip_address_allocation : string prop option; [@option]
  public_ip_address_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_configuration) -> ()

let yojson_of_ip_configuration =
  (function
   | {
       name = v_name;
       private_ip_address_allocation =
         v_private_ip_address_allocation;
       public_ip_address_id = v_public_ip_address_id;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_ip_address_id
         in
         ("public_ip_address_id", arg) :: bnds
       in
       let bnds =
         match v_private_ip_address_allocation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address_allocation", arg in
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
       `Assoc bnds
    : ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_configuration

[@@@deriving.end]

type policy_group__policy_member = {
  name : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_group__policy_member) -> ()

let yojson_of_policy_group__policy_member =
  (function
   | { name = v_name; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : policy_group__policy_member ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_group__policy_member

[@@@deriving.end]

type policy_group = {
  is_default : bool prop option; [@option]
  name : string prop;
  priority : float prop option; [@option]
  policy_member : policy_group__policy_member list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_group) -> ()

let yojson_of_policy_group =
  (function
   | {
       is_default = v_is_default;
       name = v_name;
       priority = v_priority;
       policy_member = v_policy_member;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_policy_member then bnds
         else
           let arg =
             (yojson_of_list yojson_of_policy_group__policy_member)
               v_policy_member
           in
           let bnd = "policy_member", arg in
           bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_default", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_group

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type vpn_client_configuration__ipsec_policy = {
  dh_group : string prop;
  ike_encryption : string prop;
  ike_integrity : string prop;
  ipsec_encryption : string prop;
  ipsec_integrity : string prop;
  pfs_group : string prop;
  sa_data_size_in_kilobytes : float prop;
  sa_lifetime_in_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpn_client_configuration__ipsec_policy) -> ()

let yojson_of_vpn_client_configuration__ipsec_policy =
  (function
   | {
       dh_group = v_dh_group;
       ike_encryption = v_ike_encryption;
       ike_integrity = v_ike_integrity;
       ipsec_encryption = v_ipsec_encryption;
       ipsec_integrity = v_ipsec_integrity;
       pfs_group = v_pfs_group;
       sa_data_size_in_kilobytes = v_sa_data_size_in_kilobytes;
       sa_lifetime_in_seconds = v_sa_lifetime_in_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_sa_lifetime_in_seconds
         in
         ("sa_lifetime_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_sa_data_size_in_kilobytes
         in
         ("sa_data_size_in_kilobytes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pfs_group in
         ("pfs_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ipsec_integrity
         in
         ("ipsec_integrity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ipsec_encryption
         in
         ("ipsec_encryption", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ike_integrity in
         ("ike_integrity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ike_encryption
         in
         ("ike_encryption", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dh_group in
         ("dh_group", arg) :: bnds
       in
       `Assoc bnds
    : vpn_client_configuration__ipsec_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpn_client_configuration__ipsec_policy

[@@@deriving.end]

type vpn_client_configuration__radius_server = {
  address : string prop;
  score : float prop;
  secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpn_client_configuration__radius_server) -> ()

let yojson_of_vpn_client_configuration__radius_server =
  (function
   | { address = v_address; score = v_score; secret = v_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_score in
         ("score", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : vpn_client_configuration__radius_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpn_client_configuration__radius_server

[@@@deriving.end]

type vpn_client_configuration__revoked_certificate = {
  name : string prop;
  thumbprint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpn_client_configuration__revoked_certificate) -> ()

let yojson_of_vpn_client_configuration__revoked_certificate =
  (function
   | { name = v_name; thumbprint = v_thumbprint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_thumbprint in
         ("thumbprint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : vpn_client_configuration__revoked_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpn_client_configuration__revoked_certificate

[@@@deriving.end]

type vpn_client_configuration__root_certificate = {
  name : string prop;
  public_cert_data : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpn_client_configuration__root_certificate) -> ()

let yojson_of_vpn_client_configuration__root_certificate =
  (function
   | { name = v_name; public_cert_data = v_public_cert_data } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_cert_data
         in
         ("public_cert_data", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : vpn_client_configuration__root_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpn_client_configuration__root_certificate

[@@@deriving.end]

type vpn_client_configuration__virtual_network_gateway_client_connection = {
  address_prefixes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  policy_group_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       vpn_client_configuration__virtual_network_gateway_client_connection) ->
  ()

let yojson_of_vpn_client_configuration__virtual_network_gateway_client_connection
    =
  (function
   | {
       address_prefixes = v_address_prefixes;
       name = v_name;
       policy_group_names = v_policy_group_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_policy_group_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_policy_group_names
           in
           let bnd = "policy_group_names", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_address_prefixes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_address_prefixes
           in
           let bnd = "address_prefixes", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : vpn_client_configuration__virtual_network_gateway_client_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_vpn_client_configuration__virtual_network_gateway_client_connection

[@@@deriving.end]

type vpn_client_configuration = {
  aad_audience : string prop option; [@option]
  aad_issuer : string prop option; [@option]
  aad_tenant : string prop option; [@option]
  address_space : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  radius_server_address : string prop option; [@option]
  radius_server_secret : string prop option; [@option]
  vpn_auth_types : string prop list option; [@option]
  vpn_client_protocols : string prop list option; [@option]
  ipsec_policy : vpn_client_configuration__ipsec_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  radius_server : vpn_client_configuration__radius_server list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  revoked_certificate :
    vpn_client_configuration__revoked_certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  root_certificate : vpn_client_configuration__root_certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  virtual_network_gateway_client_connection :
    vpn_client_configuration__virtual_network_gateway_client_connection
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpn_client_configuration) -> ()

let yojson_of_vpn_client_configuration =
  (function
   | {
       aad_audience = v_aad_audience;
       aad_issuer = v_aad_issuer;
       aad_tenant = v_aad_tenant;
       address_space = v_address_space;
       radius_server_address = v_radius_server_address;
       radius_server_secret = v_radius_server_secret;
       vpn_auth_types = v_vpn_auth_types;
       vpn_client_protocols = v_vpn_client_protocols;
       ipsec_policy = v_ipsec_policy;
       radius_server = v_radius_server;
       revoked_certificate = v_revoked_certificate;
       root_certificate = v_root_certificate;
       virtual_network_gateway_client_connection =
         v_virtual_network_gateway_client_connection;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if
           Stdlib.( = ) []
             v_virtual_network_gateway_client_connection
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_vpn_client_configuration__virtual_network_gateway_client_connection)
               v_virtual_network_gateway_client_connection
           in
           let bnd =
             "virtual_network_gateway_client_connection", arg
           in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_root_certificate then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_vpn_client_configuration__root_certificate)
               v_root_certificate
           in
           let bnd = "root_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_revoked_certificate then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_vpn_client_configuration__revoked_certificate)
               v_revoked_certificate
           in
           let bnd = "revoked_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_radius_server then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_vpn_client_configuration__radius_server)
               v_radius_server
           in
           let bnd = "radius_server", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ipsec_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_vpn_client_configuration__ipsec_policy)
               v_ipsec_policy
           in
           let bnd = "ipsec_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpn_client_protocols with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpn_client_protocols", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vpn_auth_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpn_auth_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_radius_server_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "radius_server_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_radius_server_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "radius_server_address", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_address_space then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_address_space
           in
           let bnd = "address_space", arg in
           bnd :: bnds
       in
       let bnds =
         match v_aad_tenant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aad_tenant", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aad_issuer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aad_issuer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aad_audience with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aad_audience", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vpn_client_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpn_client_configuration

[@@@deriving.end]

type azurerm_virtual_network_gateway = {
  active_active : bool prop option; [@option]
  bgp_route_translation_for_nat_enabled : bool prop option; [@option]
  default_local_network_gateway_id : string prop option; [@option]
  dns_forwarding_enabled : bool prop option; [@option]
  edge_zone : string prop option; [@option]
  enable_bgp : bool prop option; [@option]
  generation : string prop option; [@option]
  id : string prop option; [@option]
  ip_sec_replay_protection_enabled : bool prop option; [@option]
  location : string prop;
  name : string prop;
  private_ip_address_enabled : bool prop option; [@option]
  remote_vnet_traffic_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  virtual_wan_traffic_enabled : bool prop option; [@option]
  vpn_type : string prop option; [@option]
  bgp_settings : bgp_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_route : custom_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_configuration : ip_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  policy_group : policy_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  vpn_client_configuration : vpn_client_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_network_gateway) -> ()

let yojson_of_azurerm_virtual_network_gateway =
  (function
   | {
       active_active = v_active_active;
       bgp_route_translation_for_nat_enabled =
         v_bgp_route_translation_for_nat_enabled;
       default_local_network_gateway_id =
         v_default_local_network_gateway_id;
       dns_forwarding_enabled = v_dns_forwarding_enabled;
       edge_zone = v_edge_zone;
       enable_bgp = v_enable_bgp;
       generation = v_generation;
       id = v_id;
       ip_sec_replay_protection_enabled =
         v_ip_sec_replay_protection_enabled;
       location = v_location;
       name = v_name;
       private_ip_address_enabled = v_private_ip_address_enabled;
       remote_vnet_traffic_enabled = v_remote_vnet_traffic_enabled;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       tags = v_tags;
       type_ = v_type_;
       virtual_wan_traffic_enabled = v_virtual_wan_traffic_enabled;
       vpn_type = v_vpn_type;
       bgp_settings = v_bgp_settings;
       custom_route = v_custom_route;
       ip_configuration = v_ip_configuration;
       policy_group = v_policy_group;
       timeouts = v_timeouts;
       vpn_client_configuration = v_vpn_client_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpn_client_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vpn_client_configuration)
               v_vpn_client_configuration
           in
           let bnd = "vpn_client_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_policy_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_policy_group) v_policy_group
           in
           let bnd = "policy_group", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ip_configuration)
               v_ip_configuration
           in
           let bnd = "ip_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_route then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_route) v_custom_route
           in
           let bnd = "custom_route", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bgp_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_bgp_settings) v_bgp_settings
           in
           let bnd = "bgp_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpn_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpn_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_virtual_wan_traffic_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "virtual_wan_traffic_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_remote_vnet_traffic_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "remote_vnet_traffic_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_address_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "private_ip_address_enabled", arg in
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
         match v_ip_sec_replay_protection_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ip_sec_replay_protection_enabled", arg in
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
         match v_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "generation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_bgp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_bgp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edge_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_forwarding_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dns_forwarding_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_local_network_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_local_network_gateway_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bgp_route_translation_for_nat_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "bgp_route_translation_for_nat_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_active_active with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "active_active", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_network_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_network_gateway

[@@@deriving.end]

let bgp_settings__peering_addresses ?apipa_addresses
    ?ip_configuration_name () : bgp_settings__peering_addresses =
  { apipa_addresses; ip_configuration_name }

let bgp_settings ?asn ?peer_weight ?(peering_addresses = []) () :
    bgp_settings =
  { asn; peer_weight; peering_addresses }

let custom_route ?address_prefixes () : custom_route =
  { address_prefixes }

let ip_configuration ?name ?private_ip_address_allocation
    ~public_ip_address_id ~subnet_id () : ip_configuration =
  {
    name;
    private_ip_address_allocation;
    public_ip_address_id;
    subnet_id;
  }

let policy_group__policy_member ~name ~type_ ~value () :
    policy_group__policy_member =
  { name; type_; value }

let policy_group ?is_default ?priority ~name ~policy_member () :
    policy_group =
  { is_default; name; priority; policy_member }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let vpn_client_configuration__ipsec_policy ~dh_group ~ike_encryption
    ~ike_integrity ~ipsec_encryption ~ipsec_integrity ~pfs_group
    ~sa_data_size_in_kilobytes ~sa_lifetime_in_seconds () :
    vpn_client_configuration__ipsec_policy =
  {
    dh_group;
    ike_encryption;
    ike_integrity;
    ipsec_encryption;
    ipsec_integrity;
    pfs_group;
    sa_data_size_in_kilobytes;
    sa_lifetime_in_seconds;
  }

let vpn_client_configuration__radius_server ~address ~score ~secret
    () : vpn_client_configuration__radius_server =
  { address; score; secret }

let vpn_client_configuration__revoked_certificate ~name ~thumbprint
    () : vpn_client_configuration__revoked_certificate =
  { name; thumbprint }

let vpn_client_configuration__root_certificate ~name
    ~public_cert_data () : vpn_client_configuration__root_certificate
    =
  { name; public_cert_data }

let vpn_client_configuration__virtual_network_gateway_client_connection
    ~address_prefixes ~name ~policy_group_names () :
    vpn_client_configuration__virtual_network_gateway_client_connection
    =
  { address_prefixes; name; policy_group_names }

let vpn_client_configuration ?aad_audience ?aad_issuer ?aad_tenant
    ?radius_server_address ?radius_server_secret ?vpn_auth_types
    ?vpn_client_protocols ?(ipsec_policy = []) ?(radius_server = [])
    ?(virtual_network_gateway_client_connection = []) ~address_space
    ~revoked_certificate ~root_certificate () :
    vpn_client_configuration =
  {
    aad_audience;
    aad_issuer;
    aad_tenant;
    address_space;
    radius_server_address;
    radius_server_secret;
    vpn_auth_types;
    vpn_client_protocols;
    ipsec_policy;
    radius_server;
    revoked_certificate;
    root_certificate;
    virtual_network_gateway_client_connection;
  }

let azurerm_virtual_network_gateway ?active_active
    ?bgp_route_translation_for_nat_enabled
    ?default_local_network_gateway_id ?dns_forwarding_enabled
    ?edge_zone ?enable_bgp ?generation ?id
    ?ip_sec_replay_protection_enabled ?private_ip_address_enabled
    ?remote_vnet_traffic_enabled ?tags ?virtual_wan_traffic_enabled
    ?vpn_type ?(bgp_settings = []) ?(custom_route = [])
    ?(policy_group = []) ?timeouts ?(vpn_client_configuration = [])
    ~location ~name ~resource_group_name ~sku ~type_
    ~ip_configuration () : azurerm_virtual_network_gateway =
  {
    active_active;
    bgp_route_translation_for_nat_enabled;
    default_local_network_gateway_id;
    dns_forwarding_enabled;
    edge_zone;
    enable_bgp;
    generation;
    id;
    ip_sec_replay_protection_enabled;
    location;
    name;
    private_ip_address_enabled;
    remote_vnet_traffic_enabled;
    resource_group_name;
    sku;
    tags;
    type_;
    virtual_wan_traffic_enabled;
    vpn_type;
    bgp_settings;
    custom_route;
    ip_configuration;
    policy_group;
    timeouts;
    vpn_client_configuration;
  }

type t = {
  tf_name : string;
  active_active : bool prop;
  bgp_route_translation_for_nat_enabled : bool prop;
  default_local_network_gateway_id : string prop;
  dns_forwarding_enabled : bool prop;
  edge_zone : string prop;
  enable_bgp : bool prop;
  generation : string prop;
  id : string prop;
  ip_sec_replay_protection_enabled : bool prop;
  location : string prop;
  name : string prop;
  private_ip_address_enabled : bool prop;
  remote_vnet_traffic_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  virtual_wan_traffic_enabled : bool prop;
  vpn_type : string prop;
}

let make ?active_active ?bgp_route_translation_for_nat_enabled
    ?default_local_network_gateway_id ?dns_forwarding_enabled
    ?edge_zone ?enable_bgp ?generation ?id
    ?ip_sec_replay_protection_enabled ?private_ip_address_enabled
    ?remote_vnet_traffic_enabled ?tags ?virtual_wan_traffic_enabled
    ?vpn_type ?(bgp_settings = []) ?(custom_route = [])
    ?(policy_group = []) ?timeouts ?(vpn_client_configuration = [])
    ~location ~name ~resource_group_name ~sku ~type_
    ~ip_configuration __id =
  let __type = "azurerm_virtual_network_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       active_active = Prop.computed __type __id "active_active";
       bgp_route_translation_for_nat_enabled =
         Prop.computed __type __id
           "bgp_route_translation_for_nat_enabled";
       default_local_network_gateway_id =
         Prop.computed __type __id "default_local_network_gateway_id";
       dns_forwarding_enabled =
         Prop.computed __type __id "dns_forwarding_enabled";
       edge_zone = Prop.computed __type __id "edge_zone";
       enable_bgp = Prop.computed __type __id "enable_bgp";
       generation = Prop.computed __type __id "generation";
       id = Prop.computed __type __id "id";
       ip_sec_replay_protection_enabled =
         Prop.computed __type __id "ip_sec_replay_protection_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_ip_address_enabled =
         Prop.computed __type __id "private_ip_address_enabled";
       remote_vnet_traffic_enabled =
         Prop.computed __type __id "remote_vnet_traffic_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       virtual_wan_traffic_enabled =
         Prop.computed __type __id "virtual_wan_traffic_enabled";
       vpn_type = Prop.computed __type __id "vpn_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_network_gateway
        (azurerm_virtual_network_gateway ?active_active
           ?bgp_route_translation_for_nat_enabled
           ?default_local_network_gateway_id ?dns_forwarding_enabled
           ?edge_zone ?enable_bgp ?generation ?id
           ?ip_sec_replay_protection_enabled
           ?private_ip_address_enabled ?remote_vnet_traffic_enabled
           ?tags ?virtual_wan_traffic_enabled ?vpn_type ~bgp_settings
           ~custom_route ~policy_group ?timeouts
           ~vpn_client_configuration ~location ~name
           ~resource_group_name ~sku ~type_ ~ip_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?active_active
    ?bgp_route_translation_for_nat_enabled
    ?default_local_network_gateway_id ?dns_forwarding_enabled
    ?edge_zone ?enable_bgp ?generation ?id
    ?ip_sec_replay_protection_enabled ?private_ip_address_enabled
    ?remote_vnet_traffic_enabled ?tags ?virtual_wan_traffic_enabled
    ?vpn_type ?(bgp_settings = []) ?(custom_route = [])
    ?(policy_group = []) ?timeouts ?(vpn_client_configuration = [])
    ~location ~name ~resource_group_name ~sku ~type_
    ~ip_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?active_active ?bgp_route_translation_for_nat_enabled
      ?default_local_network_gateway_id ?dns_forwarding_enabled
      ?edge_zone ?enable_bgp ?generation ?id
      ?ip_sec_replay_protection_enabled ?private_ip_address_enabled
      ?remote_vnet_traffic_enabled ?tags ?virtual_wan_traffic_enabled
      ?vpn_type ~bgp_settings ~custom_route ~policy_group ?timeouts
      ~vpn_client_configuration ~location ~name ~resource_group_name
      ~sku ~type_ ~ip_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
