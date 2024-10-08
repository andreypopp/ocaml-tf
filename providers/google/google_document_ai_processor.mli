(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_document_ai_processor

val google_document_ai_processor :
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  type_:string prop ->
  unit ->
  google_document_ai_processor

val yojson_of_google_document_ai_processor :
  google_document_ai_processor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  kms_key_name : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
