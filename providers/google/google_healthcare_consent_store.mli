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

type google_healthcare_consent_store

val google_healthcare_consent_store :
  ?default_consent_ttl:string prop ->
  ?enable_consent_create_on_update:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  name:string prop ->
  unit ->
  google_healthcare_consent_store

val yojson_of_google_healthcare_consent_store :
  google_healthcare_consent_store -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dataset : string prop;
  default_consent_ttl : string prop;
  effective_labels : string Tf_core.assoc prop;
  enable_consent_create_on_update : bool prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_consent_ttl:string prop ->
  ?enable_consent_create_on_update:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?default_consent_ttl:string prop ->
  ?enable_consent_create_on_update:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
