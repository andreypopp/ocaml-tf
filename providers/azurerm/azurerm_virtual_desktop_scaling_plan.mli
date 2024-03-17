(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_desktop_scaling_plan__host_pool
type azurerm_virtual_desktop_scaling_plan__schedule
type azurerm_virtual_desktop_scaling_plan__timeouts
type azurerm_virtual_desktop_scaling_plan

type t = private {
  description : string prop;
  exclusion_tag : string prop;
  friendly_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  time_zone : string prop;
}

val azurerm_virtual_desktop_scaling_plan :
  ?description:string prop ->
  ?exclusion_tag:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_virtual_desktop_scaling_plan__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  time_zone:string prop ->
  host_pool:azurerm_virtual_desktop_scaling_plan__host_pool list ->
  schedule:azurerm_virtual_desktop_scaling_plan__schedule list ->
  string ->
  t
