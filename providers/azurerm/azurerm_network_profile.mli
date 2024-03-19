(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type container_network_interface__ip_configuration

val container_network_interface__ip_configuration :
  name:string prop ->
  subnet_id:string prop ->
  unit ->
  container_network_interface__ip_configuration

type container_network_interface

val container_network_interface :
  name:string prop ->
  ip_configuration:container_network_interface__ip_configuration list ->
  unit ->
  container_network_interface

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_network_profile

val azurerm_network_profile :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  container_network_interface:container_network_interface list ->
  unit ->
  azurerm_network_profile

val yojson_of_azurerm_network_profile :
  azurerm_network_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  container_network_interface_ids : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  container_network_interface:container_network_interface list ->
  string ->
  t
