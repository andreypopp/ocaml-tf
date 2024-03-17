(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_route_server_bgp_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_route_server_bgp_connection__timeouts *)

type azurerm_route_server_bgp_connection = {
  name : string;  (** name *)
  peer_asn : float;  (** peer_asn *)
  peer_ip : string;  (** peer_ip *)
  route_server_id : string;  (** route_server_id *)
  timeouts : azurerm_route_server_bgp_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route_server_bgp_connection *)

let azurerm_route_server_bgp_connection ?timeouts ~name ~peer_asn
    ~peer_ip ~route_server_id __resource_id =
  let __resource_type = "azurerm_route_server_bgp_connection" in
  let __resource =
    { name; peer_asn; peer_ip; route_server_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_route_server_bgp_connection __resource);
  ()
