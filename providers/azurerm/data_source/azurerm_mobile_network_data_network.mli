(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_mobile_network_data_network

val azurerm_mobile_network_data_network :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_mobile_network_data_network

val yojson_of_azurerm_mobile_network_data_network :
  azurerm_mobile_network_data_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
