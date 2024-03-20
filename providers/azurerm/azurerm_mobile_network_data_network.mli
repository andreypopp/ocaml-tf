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

type azurerm_mobile_network_data_network

val azurerm_mobile_network_data_network :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_mobile_network_data_network

val yojson_of_azurerm_mobile_network_data_network :
  azurerm_mobile_network_data_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
