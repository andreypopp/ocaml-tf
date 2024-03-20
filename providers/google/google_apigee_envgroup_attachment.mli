(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_apigee_envgroup_attachment

val google_apigee_envgroup_attachment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  envgroup_id:string prop ->
  environment:string prop ->
  unit ->
  google_apigee_envgroup_attachment

val yojson_of_google_apigee_envgroup_attachment :
  google_apigee_envgroup_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  envgroup_id : string prop;
  environment : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  envgroup_id:string prop ->
  environment:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  envgroup_id:string prop ->
  environment:string prop ->
  string ->
  t Tf_core.resource
