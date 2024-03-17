(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_gateway_api__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway_api__timeouts *)

type azurerm_api_management_gateway_api = {
  api_id : string;  (** api_id *)
  gateway_id : string;  (** gateway_id *)
  id : string option; [@option]  (** id *)
  timeouts : azurerm_api_management_gateway_api__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway_api *)

let azurerm_api_management_gateway_api ?id ?timeouts ~api_id
    ~gateway_id __resource_id =
  let __resource_type = "azurerm_api_management_gateway_api" in
  let __resource = { api_id; gateway_id; id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_gateway_api __resource);
  ()
