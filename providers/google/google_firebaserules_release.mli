(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_firebaserules_release

val google_firebaserules_release :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  ruleset_name:string prop ->
  unit ->
  google_firebaserules_release

val yojson_of_google_firebaserules_release :
  google_firebaserules_release -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  disabled : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
  ruleset_name : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  ruleset_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  ruleset_name:string prop ->
  string ->
  t Tf_core.resource
