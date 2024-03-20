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

type azurerm_arc_machine_extension

val azurerm_arc_machine_extension :
  ?automatic_upgrade_enabled:bool prop ->
  ?force_update_tag:string prop ->
  ?id:string prop ->
  ?protected_settings:string prop ->
  ?settings:string prop ->
  ?tags:(string * string prop) list ->
  ?type_handler_version:string prop ->
  ?timeouts:timeouts ->
  arc_machine_id:string prop ->
  location:string prop ->
  name:string prop ->
  publisher:string prop ->
  type_:string prop ->
  unit ->
  azurerm_arc_machine_extension

val yojson_of_azurerm_arc_machine_extension :
  azurerm_arc_machine_extension -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arc_machine_id : string prop;
  automatic_upgrade_enabled : bool prop;
  force_update_tag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  protected_settings : string prop;
  publisher : string prop;
  settings : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  type_handler_version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?automatic_upgrade_enabled:bool prop ->
  ?force_update_tag:string prop ->
  ?id:string prop ->
  ?protected_settings:string prop ->
  ?settings:string prop ->
  ?tags:(string * string prop) list ->
  ?type_handler_version:string prop ->
  ?timeouts:timeouts ->
  arc_machine_id:string prop ->
  location:string prop ->
  name:string prop ->
  publisher:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?automatic_upgrade_enabled:bool prop ->
  ?force_update_tag:string prop ->
  ?id:string prop ->
  ?protected_settings:string prop ->
  ?settings:string prop ->
  ?tags:(string * string prop) list ->
  ?type_handler_version:string prop ->
  ?timeouts:timeouts ->
  arc_machine_id:string prop ->
  location:string prop ->
  name:string prop ->
  publisher:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
