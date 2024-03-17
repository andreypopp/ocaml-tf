(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_proximity_placement_group__timeouts
type azurerm_proximity_placement_group

val azurerm_proximity_placement_group :
  ?allowed_vm_sizes:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone:string prop ->
  ?timeouts:azurerm_proximity_placement_group__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
