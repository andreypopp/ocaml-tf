(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_dns_record_set

val google_dns_record_set :
  ?project:string prop ->
  managed_zone:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  google_dns_record_set

val yojson_of_google_dns_record_set : google_dns_record_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  managed_zone : string prop;
  name : string prop;
  project : string prop;
  rrdatas : string list prop;
  ttl : float prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?project:string prop ->
  managed_zone:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?project:string prop ->
  managed_zone:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
