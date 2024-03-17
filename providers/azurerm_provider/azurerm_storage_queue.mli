(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_queue__timeouts
type azurerm_storage_queue

val azurerm_storage_queue :
  ?metadata:(string * string) list ->
  ?timeouts:azurerm_storage_queue__timeouts ->
  name:string ->
  storage_account_name:string ->
  string ->
  unit
