(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type key_rings = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type google_kms_key_rings

val google_kms_key_rings :
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  unit ->
  google_kms_key_rings

val yojson_of_google_kms_key_rings : google_kms_key_rings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  filter : string prop;
  id : string prop;
  key_rings : key_rings list prop;
  location : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  string ->
  t

val make :
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  string ->
  t Tf_core.resource
