(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  condition

type google_dns_managed_zone_iam_binding

val google_dns_managed_zone_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  managed_zone:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_dns_managed_zone_iam_binding

val yojson_of_google_dns_managed_zone_iam_binding :
  google_dns_managed_zone_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  managed_zone : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  managed_zone:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  managed_zone:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  string ->
  t Tf_core.resource
