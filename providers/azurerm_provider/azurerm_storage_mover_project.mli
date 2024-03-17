(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_mover_project__timeouts
type azurerm_storage_mover_project

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  storage_mover_id : string prop;
}

val azurerm_storage_mover_project :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_storage_mover_project__timeouts ->
  name:string prop ->
  storage_mover_id:string prop ->
  string ->
  t
