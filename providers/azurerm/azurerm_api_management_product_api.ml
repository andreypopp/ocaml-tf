(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_product_api__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_api_management_product_api__timeouts *)

type azurerm_api_management_product_api = {
  api_management_name : string prop;  (** api_management_name *)
  api_name : string prop;  (** api_name *)
  id : string prop option; [@option]  (** id *)
  product_id : string prop;  (** product_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_api_management_product_api__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_product_api *)

type t = {
  api_management_name : string prop;
  api_name : string prop;
  id : string prop;
  product_id : string prop;
  resource_group_name : string prop;
}

let azurerm_api_management_product_api ?id ?timeouts
    ~api_management_name ~api_name ~product_id ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_api_management_product_api" in
  let __resource =
    ({
       api_management_name;
       api_name;
       id;
       product_id;
       resource_group_name;
       timeouts;
     }
      : azurerm_api_management_product_api)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_product_api __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       api_name =
         Prop.computed __resource_type __resource_id "api_name";
       id = Prop.computed __resource_type __resource_id "id";
       product_id =
         Prop.computed __resource_type __resource_id "product_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
