(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_managed_storage_account_sas_token_definition__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_storage_account_sas_token_definition__timeouts *)

type azurerm_key_vault_managed_storage_account_sas_token_definition = {
  id : string option; [@option]  (** id *)
  managed_storage_account_id : string;
      (** managed_storage_account_id *)
  name : string;  (** name *)
  sas_template_uri : string;  (** sas_template_uri *)
  sas_type : string;  (** sas_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  validity_period : string;  (** validity_period *)
  timeouts :
    azurerm_key_vault_managed_storage_account_sas_token_definition__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_storage_account_sas_token_definition *)

let azurerm_key_vault_managed_storage_account_sas_token_definition
    ?id ?tags ?timeouts ~managed_storage_account_id ~name
    ~sas_template_uri ~sas_type ~validity_period __resource_id =
  let __resource_type =
    "azurerm_key_vault_managed_storage_account_sas_token_definition"
  in
  let __resource =
    {
      id;
      managed_storage_account_id;
      name;
      sas_template_uri;
      sas_type;
      tags;
      validity_period;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_managed_storage_account_sas_token_definition
       __resource);
  ()
