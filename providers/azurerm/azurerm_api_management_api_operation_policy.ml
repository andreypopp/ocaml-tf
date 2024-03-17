(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_api_operation_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation_policy__timeouts *)

type azurerm_api_management_api_operation_policy = {
  api_management_name : string prop;  (** api_management_name *)
  api_name : string prop;  (** api_name *)
  id : string prop option; [@option]  (** id *)
  operation_id : string prop;  (** operation_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  xml_content : string prop option; [@option]  (** xml_content *)
  xml_link : string prop option; [@option]  (** xml_link *)
  timeouts :
    azurerm_api_management_api_operation_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_operation_policy *)

type t = {
  api_management_name : string prop;
  api_name : string prop;
  id : string prop;
  operation_id : string prop;
  resource_group_name : string prop;
  xml_content : string prop;
  xml_link : string prop;
}

let azurerm_api_management_api_operation_policy ?id ?xml_content
    ?xml_link ?timeouts ~api_management_name ~api_name ~operation_id
    ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_api_management_api_operation_policy"
  in
  let __resource =
    ({
       api_management_name;
       api_name;
       id;
       operation_id;
       resource_group_name;
       xml_content;
       xml_link;
       timeouts;
     }
      : azurerm_api_management_api_operation_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api_operation_policy __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       api_name =
         Prop.computed __resource_type __resource_id "api_name";
       id = Prop.computed __resource_type __resource_id "id";
       operation_id =
         Prop.computed __resource_type __resource_id "operation_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       xml_content =
         Prop.computed __resource_type __resource_id "xml_content";
       xml_link =
         Prop.computed __resource_type __resource_id "xml_link";
     }
      : t)
  in
  __resource_attributes
