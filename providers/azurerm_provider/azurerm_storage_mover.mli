(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_mover__timeouts
type azurerm_storage_mover

val azurerm_storage_mover :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_storage_mover__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
