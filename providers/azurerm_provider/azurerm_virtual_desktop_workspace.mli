(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_desktop_workspace__timeouts
type azurerm_virtual_desktop_workspace

val azurerm_virtual_desktop_workspace :
  ?description:string ->
  ?friendly_name:string ->
  ?id:string ->
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_virtual_desktop_workspace__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
