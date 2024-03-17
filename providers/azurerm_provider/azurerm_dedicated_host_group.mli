(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dedicated_host_group__timeouts
type azurerm_dedicated_host_group

val azurerm_dedicated_host_group :
  ?automatic_placement_enabled:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?zone:string ->
  ?timeouts:azurerm_dedicated_host_group__timeouts ->
  location:string ->
  name:string ->
  platform_fault_domain_count:float ->
  resource_group_name:string ->
  string ->
  unit
