(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_apigee_sync_authorization

val google_apigee_sync_authorization :
  ?id:string prop ->
  ?timeouts:timeouts ->
  identities:string prop list ->
  name:string prop ->
  unit ->
  google_apigee_sync_authorization

val yojson_of_google_apigee_sync_authorization :
  google_apigee_sync_authorization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  identities : string list prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  identities:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  identities:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource
