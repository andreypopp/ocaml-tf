(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_container__timeouts
type azurerm_storage_container

val azurerm_storage_container :
  ?container_access_type:string prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:azurerm_storage_container__timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  string ->
  unit
