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

type azurerm_network_interface_security_group_association

val azurerm_network_interface_security_group_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  network_interface_id:string prop ->
  network_security_group_id:string prop ->
  unit ->
  azurerm_network_interface_security_group_association

val yojson_of_azurerm_network_interface_security_group_association :
  azurerm_network_interface_security_group_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  network_interface_id : string prop;
  network_security_group_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  network_interface_id:string prop ->
  network_security_group_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  network_interface_id:string prop ->
  network_security_group_id:string prop ->
  string ->
  t Tf_core.resource
