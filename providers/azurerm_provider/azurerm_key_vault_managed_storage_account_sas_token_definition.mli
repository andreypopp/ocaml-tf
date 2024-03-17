(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_managed_storage_account_sas_token_definition__timeouts

type azurerm_key_vault_managed_storage_account_sas_token_definition

val azurerm_key_vault_managed_storage_account_sas_token_definition :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:
    azurerm_key_vault_managed_storage_account_sas_token_definition__timeouts ->
  managed_storage_account_id:string prop ->
  name:string prop ->
  sas_template_uri:string prop ->
  sas_type:string prop ->
  validity_period:string prop ->
  string ->
  unit
