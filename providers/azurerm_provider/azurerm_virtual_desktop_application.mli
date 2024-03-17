(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_desktop_application__timeouts
type azurerm_virtual_desktop_application

val azurerm_virtual_desktop_application :
  ?command_line_arguments:string ->
  ?description:string ->
  ?icon_index:float ->
  ?show_in_portal:bool ->
  ?timeouts:azurerm_virtual_desktop_application__timeouts ->
  application_group_id:string ->
  command_line_argument_policy:string ->
  name:string ->
  path:string ->
  string ->
  unit
