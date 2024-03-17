(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_desktop_application__timeouts
type azurerm_virtual_desktop_application

type t = private {
  application_group_id : string prop;
  command_line_argument_policy : string prop;
  command_line_arguments : string prop;
  description : string prop;
  friendly_name : string prop;
  icon_index : float prop;
  icon_path : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  show_in_portal : bool prop;
}

val azurerm_virtual_desktop_application :
  ?command_line_arguments:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?icon_index:float prop ->
  ?icon_path:string prop ->
  ?id:string prop ->
  ?show_in_portal:bool prop ->
  ?timeouts:azurerm_virtual_desktop_application__timeouts ->
  application_group_id:string prop ->
  command_line_argument_policy:string prop ->
  name:string prop ->
  path:string prop ->
  string ->
  t
