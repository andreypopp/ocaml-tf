(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_express_route_circuit_authorization__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_authorization__timeouts *)

type azurerm_express_route_circuit_authorization = {
  express_route_circuit_name : string;
      (** express_route_circuit_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts :
    azurerm_express_route_circuit_authorization__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_authorization *)

let azurerm_express_route_circuit_authorization ?timeouts
    ~express_route_circuit_name ~name ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_express_route_circuit_authorization"
  in
  let __resource =
    {
      express_route_circuit_name;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_express_route_circuit_authorization __resource);
  ()
