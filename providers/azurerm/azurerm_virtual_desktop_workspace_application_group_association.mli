(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_virtual_desktop_workspace_application_group_association

val azurerm_virtual_desktop_workspace_application_group_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_group_id:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_virtual_desktop_workspace_application_group_association

val yojson_of_azurerm_virtual_desktop_workspace_application_group_association :
  azurerm_virtual_desktop_workspace_application_group_association ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_group_id : string prop;
  id : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_group_id:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_group_id:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
