(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_container__timeouts
type azurerm_storage_container

val azurerm_storage_container :
  ?container_access_type:string ->
  ?id:string ->
  ?metadata:(string * string) list ->
  ?timeouts:azurerm_storage_container__timeouts ->
  name:string ->
  storage_account_name:string ->
  string ->
  unit
