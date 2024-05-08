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

type bgp_settings__instance_1_bgp_peering_address = {
  custom_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  default_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  ip_configuration_id : string prop;
  tunnel_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp_settings__instance_1_bgp_peering_address) -> ()

let yojson_of_bgp_settings__instance_1_bgp_peering_address =
  (function
   | {
       custom_ips = v_custom_ips;
       default_ips = v_default_ips;
       ip_configuration_id = v_ip_configuration_id;
       tunnel_ips = v_tunnel_ips;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_tunnel_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_tunnel_ips
           in
           let bnd = "tunnel_ips", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ip_configuration_id
         in
         ("ip_configuration_id", arg) :: bnds
       in
       let bnds =
         if [] = v_default_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_default_ips
           in
           let bnd = "default_ips", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_custom_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_custom_ips
           in
           let bnd = "custom_ips", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : bgp_settings__instance_1_bgp_peering_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp_settings__instance_1_bgp_peering_address

[@@@deriving.end]

type bgp_settings__instance_0_bgp_peering_address = {
  custom_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  default_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  ip_configuration_id : string prop;
  tunnel_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp_settings__instance_0_bgp_peering_address) -> ()

let yojson_of_bgp_settings__instance_0_bgp_peering_address =
  (function
   | {
       custom_ips = v_custom_ips;
       default_ips = v_default_ips;
       ip_configuration_id = v_ip_configuration_id;
       tunnel_ips = v_tunnel_ips;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_tunnel_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_tunnel_ips
           in
           let bnd = "tunnel_ips", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ip_configuration_id
         in
         ("ip_configuration_id", arg) :: bnds
       in
       let bnds =
         if [] = v_default_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_default_ips
           in
           let bnd = "default_ips", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_custom_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_custom_ips
           in
           let bnd = "custom_ips", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : bgp_settings__instance_0_bgp_peering_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp_settings__instance_0_bgp_peering_address

[@@@deriving.end]

type bgp_settings = {
  asn : float prop;
  bgp_peering_address : string prop;
  instance_0_bgp_peering_address :
    bgp_settings__instance_0_bgp_peering_address list;
      [@default []] [@yojson_drop_default ( = )]
  instance_1_bgp_peering_address :
    bgp_settings__instance_1_bgp_peering_address list;
      [@default []] [@yojson_drop_default ( = )]
  peer_weight : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp_settings) -> ()

let yojson_of_bgp_settings =
  (function
   | {
       asn = v_asn;
       bgp_peering_address = v_bgp_peering_address;
       instance_0_bgp_peering_address =
         v_instance_0_bgp_peering_address;
       instance_1_bgp_peering_address =
         v_instance_1_bgp_peering_address;
       peer_weight = v_peer_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_peer_weight in
         ("peer_weight", arg) :: bnds
       in
       let bnds =
         if [] = v_instance_1_bgp_peering_address then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_bgp_settings__instance_1_bgp_peering_address)
               v_instance_1_bgp_peering_address
           in
           let bnd = "instance_1_bgp_peering_address", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_instance_0_bgp_peering_address then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_bgp_settings__instance_0_bgp_peering_address)
               v_instance_0_bgp_peering_address
           in
           let bnd = "instance_0_bgp_peering_address", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_bgp_peering_address
         in
         ("bgp_peering_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_asn in
         ("asn", arg) :: bnds
       in
       `Assoc bnds
    : bgp_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp_settings

[@@@deriving.end]

type azurerm_vpn_gateway = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_vpn_gateway) -> ()

let yojson_of_azurerm_vpn_gateway =
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
    : azurerm_vpn_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_vpn_gateway

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_vpn_gateway ?id ?timeouts ~name ~resource_group_name () :
    azurerm_vpn_gateway =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  bgp_settings : bgp_settings list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_unit : float prop;
  tags : (string * string) list prop;
  virtual_hub_id : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_vpn_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       bgp_settings = Prop.computed __type __id "bgp_settings";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scale_unit = Prop.computed __type __id "scale_unit";
       tags = Prop.computed __type __id "tags";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_vpn_gateway
        (azurerm_vpn_gateway ?id ?timeouts ~name ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
