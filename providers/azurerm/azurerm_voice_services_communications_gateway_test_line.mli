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

type azurerm_voice_services_communications_gateway_test_line

val azurerm_voice_services_communications_gateway_test_line :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  phone_number:string prop ->
  purpose:string prop ->
  voice_services_communications_gateway_id:string prop ->
  unit ->
  azurerm_voice_services_communications_gateway_test_line

val yojson_of_azurerm_voice_services_communications_gateway_test_line :
  azurerm_voice_services_communications_gateway_test_line -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  phone_number : string prop;
  purpose : string prop;
  tags : (string * string) list prop;
  voice_services_communications_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  phone_number:string prop ->
  purpose:string prop ->
  voice_services_communications_gateway_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  phone_number:string prop ->
  purpose:string prop ->
  voice_services_communications_gateway_id:string prop ->
  string ->
  t Tf_core.resource
