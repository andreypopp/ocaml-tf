(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_document_ai_warehouse_location

val google_document_ai_warehouse_location :
  ?document_creator_default_role:string prop ->
  ?id:string prop ->
  ?kms_key:string prop ->
  ?timeouts:timeouts ->
  access_control_mode:string prop ->
  database_type:string prop ->
  location:string prop ->
  project_number:string prop ->
  unit ->
  google_document_ai_warehouse_location

val yojson_of_google_document_ai_warehouse_location :
  google_document_ai_warehouse_location -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_control_mode : string prop;
  database_type : string prop;
  document_creator_default_role : string prop;
  id : string prop;
  kms_key : string prop;
  location : string prop;
  project_number : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?document_creator_default_role:string prop ->
  ?id:string prop ->
  ?kms_key:string prop ->
  ?timeouts:timeouts ->
  access_control_mode:string prop ->
  database_type:string prop ->
  location:string prop ->
  project_number:string prop ->
  string ->
  t
