(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bgp_settings__instance_0_bgp_peering_address = {
  custom_ips : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp_settings__instance_0_bgp_peering_address) -> ()

let yojson_of_bgp_settings__instance_0_bgp_peering_address =
  (function
   | { custom_ips = v_custom_ips } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_custom_ips
         in
         ("custom_ips", arg) :: bnds
       in
       `Assoc bnds
    : bgp_settings__instance_0_bgp_peering_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp_settings__instance_0_bgp_peering_address

[@@@deriving.end]

type bgp_settings__instance_1_bgp_peering_address = {
  custom_ips : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp_settings__instance_1_bgp_peering_address) -> ()

let yojson_of_bgp_settings__instance_1_bgp_peering_address =
  (function
   | { custom_ips = v_custom_ips } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_custom_ips
         in
         ("custom_ips", arg) :: bnds
       in
       `Assoc bnds
    : bgp_settings__instance_1_bgp_peering_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp_settings__instance_1_bgp_peering_address

[@@@deriving.end]

type bgp_settings = {
  asn : float prop;
  peer_weight : float prop;
  instance_0_bgp_peering_address :
    bgp_settings__instance_0_bgp_peering_address list;
  instance_1_bgp_peering_address :
    bgp_settings__instance_1_bgp_peering_address list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp_settings) -> ()

let yojson_of_bgp_settings =
  (function
   | {
       asn = v_asn;
       peer_weight = v_peer_weight;
       instance_0_bgp_peering_address =
         v_instance_0_bgp_peering_address;
       instance_1_bgp_peering_address =
         v_instance_1_bgp_peering_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_bgp_settings__instance_1_bgp_peering_address
             v_instance_1_bgp_peering_address
         in
         ("instance_1_bgp_peering_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_bgp_settings__instance_0_bgp_peering_address
             v_instance_0_bgp_peering_address
         in
         ("instance_0_bgp_peering_address", arg) :: bnds
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

type azurerm_vpn_gateway = {
  bgp_route_translation_for_nat_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  routing_preference : string prop option; [@option]
  scale_unit : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  virtual_hub_id : string prop;
  bgp_settings : bgp_settings list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_vpn_gateway) -> ()

let yojson_of_azurerm_vpn_gateway =
  (function
   | {
       bgp_route_translation_for_nat_enabled =
         v_bgp_route_translation_for_nat_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       routing_preference = v_routing_preference;
       scale_unit = v_scale_unit;
       tags = v_tags;
       virtual_hub_id = v_virtual_hub_id;
       bgp_settings = v_bgp_settings;
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
           yojson_of_list yojson_of_bgp_settings v_bgp_settings
         in
         ("bgp_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_hub_id
         in
         ("virtual_hub_id", arg) :: bnds
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
         match v_scale_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scale_unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_routing_preference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "routing_preference", arg in
             bnd :: bnds
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
         match v_bgp_route_translation_for_nat_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "bgp_route_translation_for_nat_enabled", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_vpn_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_vpn_gateway

[@@@deriving.end]

let bgp_settings__instance_0_bgp_peering_address ~custom_ips () :
    bgp_settings__instance_0_bgp_peering_address =
  { custom_ips }

let bgp_settings__instance_1_bgp_peering_address ~custom_ips () :
    bgp_settings__instance_1_bgp_peering_address =
  { custom_ips }

let bgp_settings ?(instance_0_bgp_peering_address = [])
    ?(instance_1_bgp_peering_address = []) ~asn ~peer_weight () :
    bgp_settings =
  {
    asn;
    peer_weight;
    instance_0_bgp_peering_address;
    instance_1_bgp_peering_address;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_vpn_gateway ?bgp_route_translation_for_nat_enabled ?id
    ?routing_preference ?scale_unit ?tags ?(bgp_settings = [])
    ?timeouts ~location ~name ~resource_group_name ~virtual_hub_id ()
    : azurerm_vpn_gateway =
  {
    bgp_route_translation_for_nat_enabled;
    id;
    location;
    name;
    resource_group_name;
    routing_preference;
    scale_unit;
    tags;
    virtual_hub_id;
    bgp_settings;
    timeouts;
  }

type t = {
  bgp_route_translation_for_nat_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  routing_preference : string prop;
  scale_unit : float prop;
  tags : (string * string) list prop;
  virtual_hub_id : string prop;
}

let make ?bgp_route_translation_for_nat_enabled ?id
    ?routing_preference ?scale_unit ?tags ?(bgp_settings = [])
    ?timeouts ~location ~name ~resource_group_name ~virtual_hub_id
    __id =
  let __type = "azurerm_vpn_gateway" in
  let __attrs =
    ({
       bgp_route_translation_for_nat_enabled =
         Prop.computed __type __id
           "bgp_route_translation_for_nat_enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       routing_preference =
         Prop.computed __type __id "routing_preference";
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
        (azurerm_vpn_gateway ?bgp_route_translation_for_nat_enabled
           ?id ?routing_preference ?scale_unit ?tags ~bgp_settings
           ?timeouts ~location ~name ~resource_group_name
           ~virtual_hub_id ());
    attrs = __attrs;
  }

let register ?tf_module ?bgp_route_translation_for_nat_enabled ?id
    ?routing_preference ?scale_unit ?tags ?(bgp_settings = [])
    ?timeouts ~location ~name ~resource_group_name ~virtual_hub_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?bgp_route_translation_for_nat_enabled ?id
      ?routing_preference ?scale_unit ?tags ~bgp_settings ?timeouts
      ~location ~name ~resource_group_name ~virtual_hub_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
