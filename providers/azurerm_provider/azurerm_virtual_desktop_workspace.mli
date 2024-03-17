(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_desktop_workspace__timeouts
type azurerm_virtual_desktop_workspace

val azurerm_virtual_desktop_workspace :
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_virtual_desktop_workspace__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
