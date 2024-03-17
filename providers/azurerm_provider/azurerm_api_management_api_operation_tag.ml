(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_api_operation_tag__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation_tag__timeouts *)

type azurerm_api_management_api_operation_tag = {
  api_operation_id : string;  (** api_operation_id *)
  display_name : string;  (** display_name *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  timeouts :
    azurerm_api_management_api_operation_tag__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation_tag *)

let azurerm_api_management_api_operation_tag ?id ?timeouts
    ~api_operation_id ~display_name ~name __resource_id =
  let __resource_type = "azurerm_api_management_api_operation_tag" in
  let __resource =
    { api_operation_id; display_name; id; name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api_operation_tag __resource);
  ()
