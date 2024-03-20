(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_dns_managed_zone

val google_dns_managed_zone :
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_dns_managed_zone

val yojson_of_google_dns_managed_zone :
  google_dns_managed_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  dns_name : string prop;
  id : string prop;
  managed_zone_id : float prop;
  name : string prop;
  name_servers : string list prop;
  project : string prop;
  visibility : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
