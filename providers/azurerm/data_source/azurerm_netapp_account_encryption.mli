(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_netapp_account_encryption

val azurerm_netapp_account_encryption :
  ?encryption_key:string prop ->
  ?id:string prop ->
  ?system_assigned_identity_principal_id:string prop ->
  ?user_assigned_identity_id:string prop ->
  ?timeouts:timeouts ->
  netapp_account_id:string prop ->
  unit ->
  azurerm_netapp_account_encryption

val yojson_of_azurerm_netapp_account_encryption :
  azurerm_netapp_account_encryption -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  encryption_key : string prop;
  id : string prop;
  netapp_account_id : string prop;
  system_assigned_identity_principal_id : string prop;
  user_assigned_identity_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?encryption_key:string prop ->
  ?id:string prop ->
  ?system_assigned_identity_principal_id:string prop ->
  ?user_assigned_identity_id:string prop ->
  ?timeouts:timeouts ->
  netapp_account_id:string prop ->
  string ->
  t

val make :
  ?encryption_key:string prop ->
  ?id:string prop ->
  ?system_assigned_identity_principal_id:string prop ->
  ?user_assigned_identity_id:string prop ->
  ?timeouts:timeouts ->
  netapp_account_id:string prop ->
  string ->
  t Tf_core.resource
