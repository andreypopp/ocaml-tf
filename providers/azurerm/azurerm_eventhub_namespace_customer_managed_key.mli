(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_eventhub_namespace_customer_managed_key

val azurerm_eventhub_namespace_customer_managed_key :
  ?id:string prop ->
  ?infrastructure_encryption_enabled:bool prop ->
  ?user_assigned_identity_id:string prop ->
  ?timeouts:timeouts ->
  eventhub_namespace_id:string prop ->
  key_vault_key_ids:string prop list ->
  unit ->
  azurerm_eventhub_namespace_customer_managed_key

val yojson_of_azurerm_eventhub_namespace_customer_managed_key :
  azurerm_eventhub_namespace_customer_managed_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  eventhub_namespace_id : string prop;
  id : string prop;
  infrastructure_encryption_enabled : bool prop;
  key_vault_key_ids : string list prop;
  user_assigned_identity_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?infrastructure_encryption_enabled:bool prop ->
  ?user_assigned_identity_id:string prop ->
  ?timeouts:timeouts ->
  eventhub_namespace_id:string prop ->
  key_vault_key_ids:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?infrastructure_encryption_enabled:bool prop ->
  ?user_assigned_identity_id:string prop ->
  ?timeouts:timeouts ->
  eventhub_namespace_id:string prop ->
  key_vault_key_ids:string prop list ->
  string ->
  t Tf_core.resource
