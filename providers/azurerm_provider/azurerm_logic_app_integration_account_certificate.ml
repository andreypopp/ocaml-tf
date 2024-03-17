(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_logic_app_integration_account_certificate__key_vault_key = {
  key_name : string;  (** key_name *)
  key_vault_id : string;  (** key_vault_id *)
  key_version : string option; [@option]  (** key_version *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_certificate__key_vault_key *)

type azurerm_logic_app_integration_account_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_certificate__timeouts *)

type azurerm_logic_app_integration_account_certificate = {
  integration_account_name : string;  (** integration_account_name *)
  metadata : string option; [@option]  (** metadata *)
  name : string;  (** name *)
  public_certificate : string option; [@option]
      (** public_certificate *)
  resource_group_name : string;  (** resource_group_name *)
  key_vault_key :
    azurerm_logic_app_integration_account_certificate__key_vault_key
    list;
  timeouts :
    azurerm_logic_app_integration_account_certificate__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_certificate *)

let azurerm_logic_app_integration_account_certificate ?metadata
    ?public_certificate ?timeouts ~integration_account_name ~name
    ~resource_group_name ~key_vault_key __resource_id =
  let __resource_type =
    "azurerm_logic_app_integration_account_certificate"
  in
  let __resource =
    {
      integration_account_name;
      metadata;
      name;
      public_certificate;
      resource_group_name;
      key_vault_key;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account_certificate
       __resource);
  ()
