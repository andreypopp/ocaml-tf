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

type azurerm_security_center_setting

val azurerm_security_center_setting :
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  setting_name:string prop ->
  unit ->
  azurerm_security_center_setting

val yojson_of_azurerm_security_center_setting :
  azurerm_security_center_setting -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enabled : bool prop;
  id : string prop;
  setting_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  setting_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  setting_name:string prop ->
  string ->
  t Tf_core.resource
