(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_disk_access__timeouts
type azurerm_disk_access

val azurerm_disk_access :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_disk_access__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
