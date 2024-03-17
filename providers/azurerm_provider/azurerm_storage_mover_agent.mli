(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_mover_agent__timeouts
type azurerm_storage_mover_agent

val azurerm_storage_mover_agent :
  ?description:string ->
  ?timeouts:azurerm_storage_mover_agent__timeouts ->
  arc_virtual_machine_id:string ->
  arc_virtual_machine_uuid:string ->
  name:string ->
  storage_mover_id:string ->
  string ->
  unit
