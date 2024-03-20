(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type bgp_settings = {
  asn : float prop;
  peer_weight : float prop;
  peering_address : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp_settings) -> ()

let yojson_of_bgp_settings =
  (function
   | {
       asn = v_asn;
       peer_weight = v_peer_weight;
       peering_address = v_peering_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_peering_address
         in
         ("peering_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_peer_weight in
         ("peer_weight", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_asn in
         ("asn", arg) :: bnds
       in
       `Assoc bnds
    : bgp_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp_settings

[@@@deriving.end]

type custom_route = { address_prefixes : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_route) -> ()

let yojson_of_custom_route =
  (function
   | { address_prefixes = v_address_prefixes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_address_prefixes
         in
         ("address_prefixes", arg) :: bnds
       in
       `Assoc bnds
    : custom_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_route

[@@@deriving.end]

type ip_configuration = {
  id : string prop;
  name : string prop;
  private_ip_address : string prop;
  private_ip_address_allocation : string prop;
  public_ip_address_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_configuration) -> ()

let yojson_of_ip_configuration =
  (function
   | {
       id = v_id;
       name = v_name;
       private_ip_address = v_private_ip_address;
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
         let arg =
           yojson_of_prop yojson_of_string
             v_private_ip_address_allocation
         in
         ("private_ip_address_allocation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_configuration

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

type vpn_client_configuration = {
  aad_audience : string prop;
  aad_issuer : string prop;
  aad_tenant : string prop;
  address_space : string prop list;
  radius_server_address : string prop;
  radius_server_secret : string prop;
  revoked_certificate :
    vpn_client_configuration__revoked_certificate list;
  root_certificate : vpn_client_configuration__root_certificate list;
  vpn_client_protocols : string prop list;
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
       revoked_certificate = v_revoked_certificate;
       root_certificate = v_root_certificate;
       vpn_client_protocols = v_vpn_client_protocols;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_vpn_client_protocols
         in
         ("vpn_client_protocols", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_vpn_client_configuration__root_certificate
             v_root_certificate
         in
         ("root_certificate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_vpn_client_configuration__revoked_certificate
             v_revoked_certificate
         in
         ("revoked_certificate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_radius_server_secret
         in
         ("radius_server_secret", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_radius_server_address
         in
         ("radius_server_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_address_space
         in
         ("address_space", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_aad_tenant in
         ("aad_tenant", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_aad_issuer in
         ("aad_issuer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_aad_audience in
         ("aad_audience", arg) :: bnds
       in
       `Assoc bnds
    : vpn_client_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpn_client_configuration

[@@@deriving.end]

type azurerm_virtual_network_gateway = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_network_gateway) -> ()

let yojson_of_azurerm_virtual_network_gateway =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
    : azurerm_virtual_network_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_network_gateway

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_virtual_network_gateway ?id ?timeouts ~name
    ~resource_group_name () : azurerm_virtual_network_gateway =
  { id; name; resource_group_name; timeouts }

type t = {
  active_active : bool prop;
  bgp_settings : bgp_settings list prop;
  custom_route : custom_route list prop;
  default_local_network_gateway_id : string prop;
  enable_bgp : bool prop;
  generation : string prop;
  id : string prop;
  ip_configuration : ip_configuration list prop;
  location : string prop;
  name : string prop;
  private_ip_address_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  vpn_client_configuration : vpn_client_configuration list prop;
  vpn_type : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_virtual_network_gateway" in
  let __attrs =
    ({
       active_active = Prop.computed __type __id "active_active";
       bgp_settings = Prop.computed __type __id "bgp_settings";
       custom_route = Prop.computed __type __id "custom_route";
       default_local_network_gateway_id =
         Prop.computed __type __id "default_local_network_gateway_id";
       enable_bgp = Prop.computed __type __id "enable_bgp";
       generation = Prop.computed __type __id "generation";
       id = Prop.computed __type __id "id";
       ip_configuration =
         Prop.computed __type __id "ip_configuration";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_ip_address_enabled =
         Prop.computed __type __id "private_ip_address_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       vpn_client_configuration =
         Prop.computed __type __id "vpn_client_configuration";
       vpn_type = Prop.computed __type __id "vpn_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_network_gateway
        (azurerm_virtual_network_gateway ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
