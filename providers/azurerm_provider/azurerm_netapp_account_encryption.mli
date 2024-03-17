(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_account_encryption__timeouts
type azurerm_netapp_account_encryption

type t = private {
  encryption_key : string prop;
  id : string prop;
  netapp_account_id : string prop;
  system_assigned_identity_principal_id : string prop;
  user_assigned_identity_id : string prop;
}

val azurerm_netapp_account_encryption :
  ?id:string prop ->
  ?system_assigned_identity_principal_id:string prop ->
  ?user_assigned_identity_id:string prop ->
  ?timeouts:azurerm_netapp_account_encryption__timeouts ->
  encryption_key:string prop ->
  netapp_account_id:string prop ->
  string ->
  t
