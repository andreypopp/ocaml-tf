(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_express_route_circuit_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_connection__timeouts *)

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
  timeouts :
    azurerm_express_route_circuit_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_connection *)

let azurerm_express_route_circuit_connection ?address_prefix_ipv6
    ?authorization_key ?id ?timeouts ~address_prefix_ipv4 ~name
    ~peer_peering_id ~peering_id __resource_id =
  let __resource_type = "azurerm_express_route_circuit_connection" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_express_route_circuit_connection __resource);
  ()
