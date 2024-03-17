(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_disk_access__timeouts
type azurerm_disk_access

val azurerm_disk_access :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_disk_access__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
