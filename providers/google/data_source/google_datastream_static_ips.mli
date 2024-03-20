(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_datastream_static_ips

val google_datastream_static_ips :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  unit ->
  google_datastream_static_ips

val yojson_of_google_datastream_static_ips :
  google_datastream_static_ips -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  project : string prop;
  static_ips : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  string ->
  t Tf_core.resource
