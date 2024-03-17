(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_disk_pool__timeouts
type azurerm_disk_pool

val azurerm_disk_pool :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_disk_pool__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  subnet_id:string ->
  zones:string list ->
  string ->
  unit
