(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_api_release__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_release__timeouts *)

type azurerm_api_management_api_release = {
  api_id : string;  (** api_id *)
  name : string;  (** name *)
  notes : string option; [@option]  (** notes *)
  timeouts : azurerm_api_management_api_release__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_release *)

let azurerm_api_management_api_release ?notes ?timeouts ~api_id ~name
    __resource_id =
  let __resource_type = "azurerm_api_management_api_release" in
  let __resource = { api_id; name; notes; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api_release __resource);
  ()
