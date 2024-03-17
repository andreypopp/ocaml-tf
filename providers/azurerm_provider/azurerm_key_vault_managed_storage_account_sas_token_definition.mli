(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_managed_storage_account_sas_token_definition__timeouts

type azurerm_key_vault_managed_storage_account_sas_token_definition

val azurerm_key_vault_managed_storage_account_sas_token_definition :
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_key_vault_managed_storage_account_sas_token_definition__timeouts ->
  managed_storage_account_id:string ->
  name:string ->
  sas_template_uri:string ->
  sas_type:string ->
  validity_period:string ->
  string ->
  unit
