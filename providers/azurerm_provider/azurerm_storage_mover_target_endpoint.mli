(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_mover_target_endpoint__timeouts
type azurerm_storage_mover_target_endpoint

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  storage_account_id : string prop;
  storage_container_name : string prop;
  storage_mover_id : string prop;
}

val azurerm_storage_mover_target_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_storage_mover_target_endpoint__timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  storage_container_name:string prop ->
  storage_mover_id:string prop ->
  string ->
  t
