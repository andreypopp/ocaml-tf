(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_mover_agent__timeouts
type azurerm_storage_mover_agent

type t = private {
  arc_virtual_machine_id : string prop;
  arc_virtual_machine_uuid : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  storage_mover_id : string prop;
}

val azurerm_storage_mover_agent :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_storage_mover_agent__timeouts ->
  arc_virtual_machine_id:string prop ->
  arc_virtual_machine_uuid:string prop ->
  name:string prop ->
  storage_mover_id:string prop ->
  string ->
  t
