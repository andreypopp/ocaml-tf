(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_desktop_application_group__timeouts
type azurerm_virtual_desktop_application_group

val azurerm_virtual_desktop_application_group :
  ?default_desktop_display_name:string ->
  ?description:string ->
  ?friendly_name:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_virtual_desktop_application_group__timeouts ->
  host_pool_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  type_:string ->
  string ->
  unit
