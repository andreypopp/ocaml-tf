(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_api_tag__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_tag__timeouts *)

type azurerm_api_management_api_tag = {
  api_id : string prop;  (** api_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : azurerm_api_management_api_tag__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_tag *)

let azurerm_api_management_api_tag ?id ?timeouts ~api_id ~name
    __resource_id =
  let __resource_type = "azurerm_api_management_api_tag" in
  let __resource = { api_id; id; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api_tag __resource);
  ()
