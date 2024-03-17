(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_product__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_product__timeouts *)

type azurerm_api_management_product = {
  api_management_name : string;  (** api_management_name *)
  approval_required : bool option; [@option]
      (** approval_required *)
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  product_id : string;  (** product_id *)
  published : bool;  (** published *)
  resource_group_name : string;  (** resource_group_name *)
  subscription_required : bool option; [@option]
      (** subscription_required *)
  subscriptions_limit : float option; [@option]
      (** subscriptions_limit *)
  terms : string option; [@option]  (** terms *)
  timeouts : azurerm_api_management_product__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_product *)

let azurerm_api_management_product ?approval_required ?description
    ?subscription_required ?subscriptions_limit ?terms ?timeouts
    ~api_management_name ~display_name ~product_id ~published
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_api_management_product" in
  let __resource =
    {
      api_management_name;
      approval_required;
      description;
      display_name;
      product_id;
      published;
      resource_group_name;
      subscription_required;
      subscriptions_limit;
      terms;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_product __resource);
  ()
