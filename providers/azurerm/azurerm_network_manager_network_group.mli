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

type azurerm_network_manager_network_group

val azurerm_network_manager_network_group :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  unit ->
  azurerm_network_manager_network_group

val yojson_of_azurerm_network_manager_network_group :
  azurerm_network_manager_network_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  string ->
  t Tf_core.resource
