(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_api_operation_tag__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation_tag__timeouts *)

type azurerm_api_management_api_operation_tag = {
  api_operation_id : string prop;  (** api_operation_id *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts :
    azurerm_api_management_api_operation_tag__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation_tag *)

type t = {
  api_operation_id : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
}

let azurerm_api_management_api_operation_tag ?id ?timeouts
    ~api_operation_id ~display_name ~name __resource_id =
  let __resource_type = "azurerm_api_management_api_operation_tag" in
  let __resource =
    ({ api_operation_id; display_name; id; name; timeouts }
      : azurerm_api_management_api_operation_tag)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api_operation_tag __resource);
  let __resource_attributes =
    ({
       api_operation_id =
         Prop.computed __resource_type __resource_id
           "api_operation_id";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
