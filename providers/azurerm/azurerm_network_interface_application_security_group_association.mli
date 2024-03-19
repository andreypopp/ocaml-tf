(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_network_interface_application_security_group_association

val azurerm_network_interface_application_security_group_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_security_group_id:string prop ->
  network_interface_id:string prop ->
  unit ->
  azurerm_network_interface_application_security_group_association

val yojson_of_azurerm_network_interface_application_security_group_association :
  azurerm_network_interface_application_security_group_association ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  application_security_group_id : string prop;
  id : string prop;
  network_interface_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_security_group_id:string prop ->
  network_interface_id:string prop ->
  string ->
  t
