(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_queue__timeouts
type azurerm_storage_queue

val azurerm_storage_queue :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:azurerm_storage_queue__timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  string ->
  unit
