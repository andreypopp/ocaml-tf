(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_desktop_application

val azurerm_virtual_desktop_application :
  ?command_line_arguments:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?icon_index:float prop ->
  ?icon_path:string prop ->
  ?id:string prop ->
  ?show_in_portal:bool prop ->
  ?timeouts:timeouts ->
  application_group_id:string prop ->
  command_line_argument_policy:string prop ->
  name:string prop ->
  path:string prop ->
  unit ->
  azurerm_virtual_desktop_application

val yojson_of_azurerm_virtual_desktop_application :
  azurerm_virtual_desktop_application -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?command_line_arguments:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?icon_index:float prop ->
  ?icon_path:string prop ->
  ?id:string prop ->
  ?show_in_portal:bool prop ->
  ?timeouts:timeouts ->
  application_group_id:string prop ->
  command_line_argument_policy:string prop ->
  name:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?command_line_arguments:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?icon_index:float prop ->
  ?icon_path:string prop ->
  ?id:string prop ->
  ?show_in_portal:bool prop ->
  ?timeouts:timeouts ->
  application_group_id:string prop ->
  command_line_argument_policy:string prop ->
  name:string prop ->
  path:string prop ->
  string ->
  t Tf_core.resource
