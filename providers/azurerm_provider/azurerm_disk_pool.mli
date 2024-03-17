(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_disk_pool__timeouts
type azurerm_disk_pool

val azurerm_disk_pool :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_disk_pool__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  subnet_id:string prop ->
  zones:string prop list ->
  string ->
  unit
