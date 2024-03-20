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

type ipsec_policy = {
  dh_group : string prop;
  ike_encryption : string prop;
  ike_integrity : string prop;
  ipsec_encryption : string prop;
  ipsec_integrity : string prop;
  pfs_group : string prop;
  sa_datasize : float prop;
  sa_lifetime : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ipsec_policy) -> ()

let yojson_of_ipsec_policy =
  (function
   | {
       dh_group = v_dh_group;
       ike_encryption = v_ike_encryption;
       ike_integrity = v_ike_integrity;
       ipsec_encryption = v_ipsec_encryption;
       ipsec_integrity = v_ipsec_integrity;
       pfs_group = v_pfs_group;
       sa_datasize = v_sa_datasize;
       sa_lifetime = v_sa_lifetime;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_sa_lifetime in
         ("sa_lifetime", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_sa_datasize in
         ("sa_datasize", arg) :: bnds
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
    : ipsec_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ipsec_policy

[@@@deriving.end]

type traffic_selector_policy = {
  local_address_cidrs : string prop list;
  remote_address_cidrs : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic_selector_policy) -> ()

let yojson_of_traffic_selector_policy =
  (function
   | {
       local_address_cidrs = v_local_address_cidrs;
       remote_address_cidrs = v_remote_address_cidrs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_remote_address_cidrs
         in
         ("remote_address_cidrs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_local_address_cidrs
         in
         ("local_address_cidrs", arg) :: bnds
       in
       `Assoc bnds
    : traffic_selector_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic_selector_policy

[@@@deriving.end]

type azurerm_virtual_network_gateway_connection = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_network_gateway_connection) -> ()

let yojson_of_azurerm_virtual_network_gateway_connection =
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
    : azurerm_virtual_network_gateway_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_network_gateway_connection

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_virtual_network_gateway_connection ?id ?timeouts ~name
    ~resource_group_name () :
    azurerm_virtual_network_gateway_connection =
  { id; name; resource_group_name; timeouts }

type t = {
  authorization_key : string prop;
  connection_protocol : string prop;
  dpd_timeout_seconds : float prop;
  egress_bytes_transferred : float prop;
  enable_bgp : bool prop;
  express_route_circuit_id : string prop;
  express_route_gateway_bypass : bool prop;
  id : string prop;
  ingress_bytes_transferred : float prop;
  ipsec_policy : ipsec_policy list prop;
  local_azure_ip_address_enabled : bool prop;
  local_network_gateway_id : string prop;
  location : string prop;
  name : string prop;
  peer_virtual_network_gateway_id : string prop;
  resource_group_name : string prop;
  resource_guid : string prop;
  routing_weight : float prop;
  shared_key : string prop;
  tags : (string * string) list prop;
  traffic_selector_policy : traffic_selector_policy list prop;
  type_ : string prop;
  use_policy_based_traffic_selectors : bool prop;
  virtual_network_gateway_id : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_virtual_network_gateway_connection" in
  let __attrs =
    ({
       authorization_key =
         Prop.computed __type __id "authorization_key";
       connection_protocol =
         Prop.computed __type __id "connection_protocol";
       dpd_timeout_seconds =
         Prop.computed __type __id "dpd_timeout_seconds";
       egress_bytes_transferred =
         Prop.computed __type __id "egress_bytes_transferred";
       enable_bgp = Prop.computed __type __id "enable_bgp";
       express_route_circuit_id =
         Prop.computed __type __id "express_route_circuit_id";
       express_route_gateway_bypass =
         Prop.computed __type __id "express_route_gateway_bypass";
       id = Prop.computed __type __id "id";
       ingress_bytes_transferred =
         Prop.computed __type __id "ingress_bytes_transferred";
       ipsec_policy = Prop.computed __type __id "ipsec_policy";
       local_azure_ip_address_enabled =
         Prop.computed __type __id "local_azure_ip_address_enabled";
       local_network_gateway_id =
         Prop.computed __type __id "local_network_gateway_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       peer_virtual_network_gateway_id =
         Prop.computed __type __id "peer_virtual_network_gateway_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       resource_guid = Prop.computed __type __id "resource_guid";
       routing_weight = Prop.computed __type __id "routing_weight";
       shared_key = Prop.computed __type __id "shared_key";
       tags = Prop.computed __type __id "tags";
       traffic_selector_policy =
         Prop.computed __type __id "traffic_selector_policy";
       type_ = Prop.computed __type __id "type";
       use_policy_based_traffic_selectors =
         Prop.computed __type __id
           "use_policy_based_traffic_selectors";
       virtual_network_gateway_id =
         Prop.computed __type __id "virtual_network_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_network_gateway_connection
        (azurerm_virtual_network_gateway_connection ?id ?timeouts
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
