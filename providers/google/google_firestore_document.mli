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

type google_firestore_document

val google_firestore_document :
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  collection:string prop ->
  document_id:string prop ->
  fields:string prop ->
  unit ->
  google_firestore_document

val yojson_of_google_firestore_document :
  google_firestore_document -> json

(** RESOURCE REGISTRATION *)

type t = private {
  collection : string prop;
  create_time : string prop;
  database : string prop;
  document_id : string prop;
  fields : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  project : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  collection:string prop ->
  document_id:string prop ->
  fields:string prop ->
  string ->
  t

val make :
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  collection:string prop ->
  document_id:string prop ->
  fields:string prop ->
  string ->
  t Tf_core.resource
