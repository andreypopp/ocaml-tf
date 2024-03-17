(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_api_management_named_value__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_named_value__timeouts *)

type azurerm_api_management_named_value__value_from_key_vault = {
  identity_client_id : string option; [@option]
      (** identity_client_id *)
  secret_id : string;  (** secret_id *)
}
[@@deriving yojson_of]
(** azurerm_api_management_named_value__value_from_key_vault *)

type azurerm_api_management_named_value = {
  api_management_name : string;  (** api_management_name *)
  display_name : string;  (** display_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  secret : bool option; [@option]  (** secret *)
  tags : string list option; [@option]  (** tags *)
  value : string option; [@option]  (** value *)
  timeouts : azurerm_api_management_named_value__timeouts option;
  value_from_key_vault :
    azurerm_api_management_named_value__value_from_key_vault list;
}
[@@deriving yojson_of]
(** azurerm_api_management_named_value *)

let azurerm_api_management_named_value ?secret ?tags ?value ?timeouts
    ~api_management_name ~display_name ~name ~resource_group_name
    ~value_from_key_vault __resource_id =
  let __resource_type = "azurerm_api_management_named_value" in
  let __resource =
    {
      api_management_name;
      display_name;
      name;
      resource_group_name;
      secret;
      tags;
      value;
      timeouts;
      value_from_key_vault;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_named_value __resource);
  ()
