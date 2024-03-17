(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_product_tag__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_api_management_product_tag__timeouts *)

type azurerm_api_management_product_tag = {
  api_management_name : string prop;  (** api_management_name *)
  api_management_product_id : string prop;
      (** api_management_product_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_api_management_product_tag__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_product_tag *)

type t = {
  api_management_name : string prop;
  api_management_product_id : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_api_management_product_tag ?id ?timeouts
    ~api_management_name ~api_management_product_id ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_api_management_product_tag" in
  let __resource =
    ({
       api_management_name;
       api_management_product_id;
       id;
       name;
       resource_group_name;
       timeouts;
     }
      : azurerm_api_management_product_tag)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_product_tag __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       api_management_product_id =
         Prop.computed __resource_type __resource_id
           "api_management_product_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
