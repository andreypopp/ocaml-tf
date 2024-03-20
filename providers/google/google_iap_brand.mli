(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_iap_brand

val google_iap_brand :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  application_title:string prop ->
  support_email:string prop ->
  unit ->
  google_iap_brand

val yojson_of_google_iap_brand : google_iap_brand -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_title : string prop;
  id : string prop;
  name : string prop;
  org_internal_only : bool prop;
  project : string prop;
  support_email : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  application_title:string prop ->
  support_email:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  application_title:string prop ->
  support_email:string prop ->
  string ->
  t Tf_core.resource
