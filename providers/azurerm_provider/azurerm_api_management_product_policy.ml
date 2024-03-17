(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_api_management_product_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_product_policy__timeouts *)

type azurerm_api_management_product_policy = {
  api_management_name : string;  (** api_management_name *)
  product_id : string;  (** product_id *)
  resource_group_name : string;  (** resource_group_name *)
  xml_link : string option; [@option]  (** xml_link *)
  timeouts : azurerm_api_management_product_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_product_policy *)

let azurerm_api_management_product_policy ?xml_link ?timeouts
    ~api_management_name ~product_id ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_api_management_product_policy" in
  let __resource =
    {
      api_management_name;
      product_id;
      resource_group_name;
      xml_link;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_product_policy __resource);
  ()
