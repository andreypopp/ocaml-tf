(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_desktop_scaling_plan__host_pool
type azurerm_virtual_desktop_scaling_plan__schedule
type azurerm_virtual_desktop_scaling_plan__timeouts
type azurerm_virtual_desktop_scaling_plan

val azurerm_virtual_desktop_scaling_plan :
  ?description:string ->
  ?exclusion_tag:string ->
  ?friendly_name:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_virtual_desktop_scaling_plan__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  time_zone:string ->
  host_pool:azurerm_virtual_desktop_scaling_plan__host_pool list ->
  schedule:azurerm_virtual_desktop_scaling_plan__schedule list ->
  string ->
  unit
