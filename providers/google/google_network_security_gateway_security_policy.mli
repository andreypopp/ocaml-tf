(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_network_security_gateway_security_policy

val google_network_security_gateway_security_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_network_security_gateway_security_policy

val yojson_of_google_network_security_gateway_security_policy :
  google_network_security_gateway_security_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
