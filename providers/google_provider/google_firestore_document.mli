(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firestore_document__timeouts
type google_firestore_document

val google_firestore_document :
  ?database:string ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_firestore_document__timeouts ->
  collection:string ->
  document_id:string ->
  fields:string ->
  string ->
  unit
