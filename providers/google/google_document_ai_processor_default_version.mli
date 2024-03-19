(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_document_ai_processor_default_version

val google_document_ai_processor_default_version :
  ?id:string prop ->
  ?timeouts:timeouts ->
  processor:string prop ->
  version:string prop ->
  unit ->
  google_document_ai_processor_default_version

val yojson_of_google_document_ai_processor_default_version :
  google_document_ai_processor_default_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  processor : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  processor:string prop ->
  version:string prop ->
  string ->
  t
