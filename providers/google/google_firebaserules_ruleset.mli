(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata = { services : string prop list  (** services *) }

[@@@deriving.end]

type source__files

val source__files :
  ?fingerprint:string prop ->
  content:string prop ->
  name:string prop ->
  unit ->
  source__files

type source

val source :
  ?language:string prop -> files:source__files list -> unit -> source

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_firebaserules_ruleset

val google_firebaserules_ruleset :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  source:source list ->
  unit ->
  google_firebaserules_ruleset

val yojson_of_google_firebaserules_ruleset :
  google_firebaserules_ruleset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  id : string prop;
  metadata : metadata list prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  source:source list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  source:source list ->
  string ->
  t Tf_core.resource
