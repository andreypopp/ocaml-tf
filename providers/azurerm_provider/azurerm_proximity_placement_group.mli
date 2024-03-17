(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_proximity_placement_group__timeouts
type azurerm_proximity_placement_group

val azurerm_proximity_placement_group :
  ?allowed_vm_sizes:string list ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?zone:string ->
  ?timeouts:azurerm_proximity_placement_group__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
