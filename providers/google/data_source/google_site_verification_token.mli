(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type google_site_verification_token

val google_site_verification_token :
  ?id:string prop ->
  ?timeouts:timeouts ->
  identifier:string prop ->
  type_:string prop ->
  verification_method:string prop ->
  unit ->
  google_site_verification_token

val yojson_of_google_site_verification_token :
  google_site_verification_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  identifier : string prop;
  token : string prop;
  type_ : string prop;
  verification_method : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  identifier:string prop ->
  type_:string prop ->
  verification_method:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  identifier:string prop ->
  type_:string prop ->
  verification_method:string prop ->
  string ->
  t Tf_core.resource
