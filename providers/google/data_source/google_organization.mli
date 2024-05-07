(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_organization

val google_organization :
  ?domain:string prop ->
  ?id:string prop ->
  ?organization:string prop ->
  unit ->
  google_organization

val yojson_of_google_organization : google_organization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  directory_customer_id : string prop;
  domain : string prop;
  id : string prop;
  lifecycle_state : string prop;
  name : string prop;
  org_id : string prop;
  organization : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?domain:string prop ->
  ?id:string prop ->
  ?organization:string prop ->
  string ->
  t

val make :
  ?domain:string prop ->
  ?id:string prop ->
  ?organization:string prop ->
  string ->
  t Tf_core.resource
