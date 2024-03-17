(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_share_directory__timeouts
type azurerm_storage_share_directory

val azurerm_storage_share_directory :
  ?id:string ->
  ?metadata:(string * string) list ->
  ?share_name:string ->
  ?storage_account_name:string ->
  ?storage_share_id:string ->
  ?timeouts:azurerm_storage_share_directory__timeouts ->
  name:string ->
  string ->
  unit
