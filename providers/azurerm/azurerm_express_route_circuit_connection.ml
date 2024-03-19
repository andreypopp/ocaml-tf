(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?address_prefix_ipv6 ?authorization_key ?id
    ?timeouts ~address_prefix_ipv4 ~name ~peer_peering_id ~peering_id
    __resource_id =
  let __resource_type = "azurerm_express_route_circuit_connection" in
  let __resource =
    azurerm_express_route_circuit_connection ?address_prefix_ipv6
      ?authorization_key ?id ?timeouts ~address_prefix_ipv4 ~name
      ~peer_peering_id ~peering_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_express_route_circuit_connection __resource);
  let __resource_attributes =
    ({
       address_prefix_ipv4 =
         Prop.computed __resource_type __resource_id
           "address_prefix_ipv4";
       address_prefix_ipv6 =
         Prop.computed __resource_type __resource_id
           "address_prefix_ipv6";
       authorization_key =
         Prop.computed __resource_type __resource_id
           "authorization_key";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       peer_peering_id =
         Prop.computed __resource_type __resource_id
           "peer_peering_id";
       peering_id =
         Prop.computed __resource_type __resource_id "peering_id";
     }
      : t)
  in
  __resource_attributes
