(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_mover_source_endpoint__timeouts
type azurerm_storage_mover_source_endpoint

val azurerm_storage_mover_source_endpoint :
  ?description:string ->
  ?export:string ->
  ?nfs_version:string ->
  ?timeouts:azurerm_storage_mover_source_endpoint__timeouts ->
  host:string ->
  name:string ->
  storage_mover_id:string ->
  string ->
  unit
