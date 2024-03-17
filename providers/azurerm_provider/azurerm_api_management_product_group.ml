(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_product_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_api_management_product_group__timeouts *)

type azurerm_api_management_product_group = {
  api_management_name : string prop;  (** api_management_name *)
  group_name : string prop;  (** group_name *)
  id : string prop option; [@option]  (** id *)
  product_id : string prop;  (** product_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_api_management_product_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_product_group *)

let azurerm_api_management_product_group ?id ?timeouts
    ~api_management_name ~group_name ~product_id ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_api_management_product_group" in
  let __resource =
    {
      api_management_name;
      group_name;
      id;
      product_id;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_product_group __resource);
  ()
