(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_spec

val encryption_spec :
  ?kms_key_name:string prop -> unit -> encryption_spec

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_healthcare_dataset

val google_healthcare_dataset :
  ?id:string prop ->
  ?project:string prop ->
  ?time_zone:string prop ->
  ?encryption_spec:encryption_spec list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_healthcare_dataset

val yojson_of_google_healthcare_dataset :
  google_healthcare_dataset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  time_zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?time_zone:string prop ->
  ?encryption_spec:encryption_spec list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?time_zone:string prop ->
  ?encryption_spec:encryption_spec list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
