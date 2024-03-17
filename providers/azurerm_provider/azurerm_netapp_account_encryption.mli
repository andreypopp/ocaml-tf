(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_account_encryption__timeouts
type azurerm_netapp_account_encryption

val azurerm_netapp_account_encryption :
  ?system_assigned_identity_principal_id:string ->
  ?user_assigned_identity_id:string ->
  ?timeouts:azurerm_netapp_account_encryption__timeouts ->
  encryption_key:string ->
  netapp_account_id:string ->
  string ->
  unit
