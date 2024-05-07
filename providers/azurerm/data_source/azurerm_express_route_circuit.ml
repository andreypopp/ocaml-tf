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

type peerings = {
  azure_asn : float prop;
  peer_asn : float prop;
  peering_type : string prop;
  primary_peer_address_prefix : string prop;
  secondary_peer_address_prefix : string prop;
  shared_key : string prop;
  vlan_id : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : peerings) -> ()

let yojson_of_peerings =
  (function
   | {
       azure_asn = v_azure_asn;
       peer_asn = v_peer_asn;
       peering_type = v_peering_type;
       primary_peer_address_prefix = v_primary_peer_address_prefix;
       secondary_peer_address_prefix =
         v_secondary_peer_address_prefix;
       shared_key = v_shared_key;
       vlan_id = v_vlan_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_vlan_id in
         ("vlan_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_shared_key in
         ("shared_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_secondary_peer_address_prefix
         in
         ("secondary_peer_address_prefix", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_primary_peer_address_prefix
         in
         ("primary_peer_address_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_peering_type in
         ("peering_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_peer_asn in
         ("peer_asn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_azure_asn in
         ("azure_asn", arg) :: bnds
       in
       `Assoc bnds
    : peerings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_peerings

[@@@deriving.end]

type service_provider_properties = {
  bandwidth_in_mbps : float prop;
  peering_location : string prop;
  service_provider_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_provider_properties) -> ()

let yojson_of_service_provider_properties =
  (function
   | {
       bandwidth_in_mbps = v_bandwidth_in_mbps;
       peering_location = v_peering_location;
       service_provider_name = v_service_provider_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_provider_name
         in
         ("service_provider_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_peering_location
         in
         ("peering_location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_bandwidth_in_mbps
         in
         ("bandwidth_in_mbps", arg) :: bnds
       in
       `Assoc bnds
    : service_provider_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_provider_properties

[@@@deriving.end]

type sku = { family : string prop; tier : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | { family = v_family; tier = v_tier } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_family in
         ("family", arg) :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

[@@@deriving.end]

type azurerm_express_route_circuit = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_express_route_circuit) -> ()

let yojson_of_azurerm_express_route_circuit =
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
    : azurerm_express_route_circuit ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_express_route_circuit

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_express_route_circuit ?id ?timeouts ~name
    ~resource_group_name () : azurerm_express_route_circuit =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  peerings : peerings list prop;
  resource_group_name : string prop;
  service_key : string prop;
  service_provider_properties :
    service_provider_properties list prop;
  service_provider_provisioning_state : string prop;
  sku : sku list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_express_route_circuit" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       peerings = Prop.computed __type __id "peerings";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_key = Prop.computed __type __id "service_key";
       service_provider_properties =
         Prop.computed __type __id "service_provider_properties";
       service_provider_provisioning_state =
         Prop.computed __type __id
           "service_provider_provisioning_state";
       sku = Prop.computed __type __id "sku";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_express_route_circuit
        (azurerm_express_route_circuit ?id ?timeouts ~name
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
