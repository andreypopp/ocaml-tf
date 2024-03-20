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

type azurerm_security_center_workspace

val azurerm_security_center_workspace :
  ?id:string prop ->
  ?timeouts:timeouts ->
  scope:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_security_center_workspace

val yojson_of_azurerm_security_center_workspace :
  azurerm_security_center_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  scope : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  scope:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  scope:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
