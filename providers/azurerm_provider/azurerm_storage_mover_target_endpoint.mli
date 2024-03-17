(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_mover_target_endpoint__timeouts
type azurerm_storage_mover_target_endpoint

val azurerm_storage_mover_target_endpoint :
  ?description:string ->
  ?id:string ->
  ?timeouts:azurerm_storage_mover_target_endpoint__timeouts ->
  name:string ->
  storage_account_id:string ->
  storage_container_name:string ->
  storage_mover_id:string ->
  string ->
  unit
