(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub_namespace_customer_managed_key__timeouts
type azurerm_eventhub_namespace_customer_managed_key

val azurerm_eventhub_namespace_customer_managed_key :
  ?id:string ->
  ?infrastructure_encryption_enabled:bool ->
  ?user_assigned_identity_id:string ->
  ?timeouts:azurerm_eventhub_namespace_customer_managed_key__timeouts ->
  eventhub_namespace_id:string ->
  key_vault_key_ids:string list ->
  string ->
  unit
