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

type azurerm_express_route_circuit_peering = {
  express_route_circuit_name : string prop;
  id : string prop option; [@option]
  peering_type : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_express_route_circuit_peering) -> ()

let yojson_of_azurerm_express_route_circuit_peering =
  (function
   | {
       express_route_circuit_name = v_express_route_circuit_name;
       id = v_id;
       peering_type = v_peering_type;
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
         let arg = yojson_of_prop yojson_of_string v_peering_type in
         ("peering_type", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_express_route_circuit_name
         in
         ("express_route_circuit_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_express_route_circuit_peering ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_express_route_circuit_peering

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_express_route_circuit_peering ?id ?timeouts
    ~express_route_circuit_name ~peering_type ~resource_group_name ()
    : azurerm_express_route_circuit_peering =
  {
    express_route_circuit_name;
    id;
    peering_type;
    resource_group_name;
    timeouts;
  }

type t = {
  azure_asn : float prop;
  express_route_circuit_name : string prop;
  gateway_manager_etag : string prop;
  id : string prop;
  ipv4_enabled : bool prop;
  peer_asn : float prop;
  peering_type : string prop;
  primary_azure_port : string prop;
  primary_peer_address_prefix : string prop;
  resource_group_name : string prop;
  route_filter_id : string prop;
  secondary_azure_port : string prop;
  secondary_peer_address_prefix : string prop;
  shared_key : string prop;
  vlan_id : float prop;
}

let make ?id ?timeouts ~express_route_circuit_name ~peering_type
    ~resource_group_name __id =
  let __type = "azurerm_express_route_circuit_peering" in
  let __attrs =
    ({
       azure_asn = Prop.computed __type __id "azure_asn";
       express_route_circuit_name =
         Prop.computed __type __id "express_route_circuit_name";
       gateway_manager_etag =
         Prop.computed __type __id "gateway_manager_etag";
       id = Prop.computed __type __id "id";
       ipv4_enabled = Prop.computed __type __id "ipv4_enabled";
       peer_asn = Prop.computed __type __id "peer_asn";
       peering_type = Prop.computed __type __id "peering_type";
       primary_azure_port =
         Prop.computed __type __id "primary_azure_port";
       primary_peer_address_prefix =
         Prop.computed __type __id "primary_peer_address_prefix";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       route_filter_id = Prop.computed __type __id "route_filter_id";
       secondary_azure_port =
         Prop.computed __type __id "secondary_azure_port";
       secondary_peer_address_prefix =
         Prop.computed __type __id "secondary_peer_address_prefix";
       shared_key = Prop.computed __type __id "shared_key";
       vlan_id = Prop.computed __type __id "vlan_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_express_route_circuit_peering
        (azurerm_express_route_circuit_peering ?id ?timeouts
           ~express_route_circuit_name ~peering_type
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~express_route_circuit_name
    ~peering_type ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~express_route_circuit_name ~peering_type
      ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
