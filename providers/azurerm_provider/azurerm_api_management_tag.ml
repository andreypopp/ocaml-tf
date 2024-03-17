(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_api_management_tag__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_tag__timeouts *)

type azurerm_api_management_tag = {
  api_management_id : string;  (** api_management_id *)
  name : string;  (** name *)
  timeouts : azurerm_api_management_tag__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_tag *)

let azurerm_api_management_tag ?timeouts ~api_management_id ~name
    __resource_id =
  let __resource_type = "azurerm_api_management_tag" in
  let __resource = { api_management_id; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_tag __resource);
  ()
