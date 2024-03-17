(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firestore_document__timeouts
type google_firestore_document

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

val google_firestore_document :
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_firestore_document__timeouts ->
  collection:string prop ->
  document_id:string prop ->
  fields:string prop ->
  string ->
  t
