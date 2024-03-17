(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_policy__timeouts *)

type azurerm_api_management_policy = {
  api_management_id : string prop;  (** api_management_id *)
  id : string prop option; [@option]  (** id *)
  xml_content : string prop option; [@option]  (** xml_content *)
  xml_link : string prop option; [@option]  (** xml_link *)
  timeouts : azurerm_api_management_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_policy *)

let azurerm_api_management_policy ?id ?xml_content ?xml_link
    ?timeouts ~api_management_id __resource_id =
  let __resource_type = "azurerm_api_management_policy" in
  let __resource =
    { api_management_id; id; xml_content; xml_link; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_policy __resource);
  ()
