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

type google_network_security_url_lists

val google_network_security_url_lists :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  values:string prop list ->
  unit ->
  google_network_security_url_lists

val yojson_of_google_network_security_url_lists :
  google_network_security_url_lists -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
  values : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  values:string prop list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  values:string prop list ->
  string ->
  t Tf_core.resource
