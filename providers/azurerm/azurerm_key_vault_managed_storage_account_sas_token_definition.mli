(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_key_vault_managed_storage_account_sas_token_definition

val azurerm_key_vault_managed_storage_account_sas_token_definition :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  managed_storage_account_id:string prop ->
  name:string prop ->
  sas_template_uri:string prop ->
  sas_type:string prop ->
  validity_period:string prop ->
  unit ->
  azurerm_key_vault_managed_storage_account_sas_token_definition

val yojson_of_azurerm_key_vault_managed_storage_account_sas_token_definition :
  azurerm_key_vault_managed_storage_account_sas_token_definition ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  managed_storage_account_id : string prop;
  name : string prop;
  sas_template_uri : string prop;
  sas_type : string prop;
  secret_id : string prop;
  tags : (string * string) list prop;
  validity_period : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  managed_storage_account_id:string prop ->
  name:string prop ->
  sas_template_uri:string prop ->
  sas_type:string prop ->
  validity_period:string prop ->
  string ->
  t
