(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_express_route_circuit_connection = {
  address_prefix_ipv4 : string prop;  (** address_prefix_ipv4 *)
  address_prefix_ipv6 : string prop option; [@option]
      (** address_prefix_ipv6 *)
  authorization_key : string prop option; [@option]
      (** authorization_key *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  peer_peering_id : string prop;  (** peer_peering_id *)
  peering_id : string prop;  (** peering_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_connection *)

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
