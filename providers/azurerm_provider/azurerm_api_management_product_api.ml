(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_api_management_product_api__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_api_management_product_api__timeouts *)

type azurerm_api_management_product_api = {
  api_management_name : string;  (** api_management_name *)
  api_name : string;  (** api_name *)
  product_id : string;  (** product_id *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts : azurerm_api_management_product_api__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_product_api *)

let azurerm_api_management_product_api ?timeouts ~api_management_name
    ~api_name ~product_id ~resource_group_name __resource_id =
  let __resource_type = "azurerm_api_management_product_api" in
  let __resource =
    {
      api_management_name;
      api_name;
      product_id;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_product_api __resource);
  ()