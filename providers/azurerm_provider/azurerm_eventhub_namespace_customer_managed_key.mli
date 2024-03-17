(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub_namespace_customer_managed_key__timeouts
type azurerm_eventhub_namespace_customer_managed_key

val azurerm_eventhub_namespace_customer_managed_key :
  ?id:string prop ->
  ?infrastructure_encryption_enabled:bool prop ->
  ?user_assigned_identity_id:string prop ->
  ?timeouts:azurerm_eventhub_namespace_customer_managed_key__timeouts ->
  eventhub_namespace_id:string prop ->
  key_vault_key_ids:string prop list ->
  string ->
  unit
