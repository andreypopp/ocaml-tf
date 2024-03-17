(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_sync__timeouts
type azurerm_storage_sync

val azurerm_storage_sync :
  ?incoming_traffic_policy:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_storage_sync__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
