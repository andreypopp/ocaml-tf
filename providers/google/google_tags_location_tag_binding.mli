(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_tags_location_tag_binding

val google_tags_location_tag_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?timeouts:timeouts ->
  parent:string prop ->
  tag_value:string prop ->
  unit ->
  google_tags_location_tag_binding

val yojson_of_google_tags_location_tag_binding :
  google_tags_location_tag_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  tag_value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?timeouts:timeouts ->
  parent:string prop ->
  tag_value:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?timeouts:timeouts ->
  parent:string prop ->
  tag_value:string prop ->
  string ->
  t Tf_core.resource
