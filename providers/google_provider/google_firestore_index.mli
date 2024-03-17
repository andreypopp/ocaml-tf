(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firestore_index__fields
type google_firestore_index__timeouts
type google_firestore_index

val google_firestore_index :
  ?api_scope:string prop ->
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?query_scope:string prop ->
  ?timeouts:google_firestore_index__timeouts ->
  collection:string prop ->
  fields:google_firestore_index__fields list ->
  string ->
  unit
