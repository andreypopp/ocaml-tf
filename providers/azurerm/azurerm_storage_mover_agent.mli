(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_storage_mover_agent

val azurerm_storage_mover_agent :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  arc_virtual_machine_id:string prop ->
  arc_virtual_machine_uuid:string prop ->
  name:string prop ->
  storage_mover_id:string prop ->
  unit ->
  azurerm_storage_mover_agent

val yojson_of_azurerm_storage_mover_agent :
  azurerm_storage_mover_agent -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arc_virtual_machine_id : string prop;
  arc_virtual_machine_uuid : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  storage_mover_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  arc_virtual_machine_id:string prop ->
  arc_virtual_machine_uuid:string prop ->
  name:string prop ->
  storage_mover_id:string prop ->
  string ->
  t
