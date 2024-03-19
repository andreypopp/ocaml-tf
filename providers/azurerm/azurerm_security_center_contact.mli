(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_security_center_contact

val azurerm_security_center_contact :
  ?id:string prop ->
  ?name:string prop ->
  ?phone:string prop ->
  ?timeouts:timeouts ->
  alert_notifications:bool prop ->
  alerts_to_admins:bool prop ->
  email:string prop ->
  unit ->
  azurerm_security_center_contact

val yojson_of_azurerm_security_center_contact :
  azurerm_security_center_contact -> json

(** RESOURCE REGISTRATION *)

type t = private {
  alert_notifications : bool prop;
  alerts_to_admins : bool prop;
  email : string prop;
  id : string prop;
  name : string prop;
  phone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?phone:string prop ->
  ?timeouts:timeouts ->
  alert_notifications:bool prop ->
  alerts_to_admins:bool prop ->
  email:string prop ->
  string ->
  t
