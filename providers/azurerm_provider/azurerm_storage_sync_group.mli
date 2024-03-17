(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_sync_group__timeouts
type azurerm_storage_sync_group

type t = private {
  id : string prop;
  name : string prop;
  storage_sync_id : string prop;
}

val azurerm_storage_sync_group :
  ?id:string prop ->
  ?timeouts:azurerm_storage_sync_group__timeouts ->
  name:string prop ->
  storage_sync_id:string prop ->
  string ->
  t
