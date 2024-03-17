(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_mover_source_endpoint__timeouts
type azurerm_storage_mover_source_endpoint

val azurerm_storage_mover_source_endpoint :
  ?description:string prop ->
  ?export:string prop ->
  ?id:string prop ->
  ?nfs_version:string prop ->
  ?timeouts:azurerm_storage_mover_source_endpoint__timeouts ->
  host:string prop ->
  name:string prop ->
  storage_mover_id:string prop ->
  string ->
  unit
