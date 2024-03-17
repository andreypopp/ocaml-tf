(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_snapshot__timeouts
type azurerm_netapp_snapshot

val azurerm_netapp_snapshot :
  ?id:string ->
  ?timeouts:azurerm_netapp_snapshot__timeouts ->
  account_name:string ->
  location:string ->
  name:string ->
  pool_name:string ->
  resource_group_name:string ->
  volume_name:string ->
  string ->
  unit
