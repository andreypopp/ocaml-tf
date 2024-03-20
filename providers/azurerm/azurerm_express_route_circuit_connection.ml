(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_express_route_circuit_connection = {
  address_prefix_ipv4 : string prop;
  address_prefix_ipv6 : string prop option; [@option]
  authorization_key : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  peer_peering_id : string prop;
  peering_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_express_route_circuit_connection) -> ()

let yojson_of_azurerm_express_route_circuit_connection =
  (function
   | {
       address_prefix_ipv4 = v_address_prefix_ipv4;
       address_prefix_ipv6 = v_address_prefix_ipv6;
       authorization_key = v_authorization_key;
       id = v_id;
       name = v_name;
       peer_peering_id = v_peer_peering_id;
       peering_id = v_peering_id;
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
         let arg = yojson_of_prop yojson_of_string v_peering_id in
         ("peering_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_peer_peering_id
         in
         ("peer_peering_id", arg) :: bnds
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
       let bnds =
         match v_authorization_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorization_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_prefix_ipv6 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_prefix_ipv6", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_prefix_ipv4
         in
         ("address_prefix_ipv4", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_express_route_circuit_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_express_route_circuit_connection

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_express_route_circuit_connection ?address_prefix_ipv6
    ?authorization_key ?id ?timeouts ~address_prefix_ipv4 ~name
    ~peer_peering_id ~peering_id () :
    azurerm_express_route_circuit_connection =
  {
    address_prefix_ipv4;
    address_prefix_ipv6;
    authorization_key;
    id;
    name;
    peer_peering_id;
    peering_id;
    timeouts;
  }

type t = {
  address_prefix_ipv4 : string prop;
  address_prefix_ipv6 : string prop;
  authorization_key : string prop;
  id : string prop;
  name : string prop;
  peer_peering_id : string prop;
  peering_id : string prop;
}

let make ?address_prefix_ipv6 ?authorization_key ?id ?timeouts
    ~address_prefix_ipv4 ~name ~peer_peering_id ~peering_id __id =
  let __type = "azurerm_express_route_circuit_connection" in
  let __attrs =
    ({
       address_prefix_ipv4 =
         Prop.computed __type __id "address_prefix_ipv4";
       address_prefix_ipv6 =
         Prop.computed __type __id "address_prefix_ipv6";
       authorization_key =
         Prop.computed __type __id "authorization_key";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       peer_peering_id = Prop.computed __type __id "peer_peering_id";
       peering_id = Prop.computed __type __id "peering_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_express_route_circuit_connection
        (azurerm_express_route_circuit_connection
           ?address_prefix_ipv6 ?authorization_key ?id ?timeouts
           ~address_prefix_ipv4 ~name ~peer_peering_id ~peering_id ());
    attrs = __attrs;
  }

let register ?tf_module ?address_prefix_ipv6 ?authorization_key ?id
    ?timeouts ~address_prefix_ipv4 ~name ~peer_peering_id ~peering_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?address_prefix_ipv6 ?authorization_key ?id ?timeouts
      ~address_prefix_ipv4 ~name ~peer_peering_id ~peering_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
