(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firestore_index__fields
type google_firestore_index__timeouts
type google_firestore_index

val google_firestore_index :
  ?api_scope:string ->
  ?database:string ->
  ?id:string ->
  ?project:string ->
  ?query_scope:string ->
  ?timeouts:google_firestore_index__timeouts ->
  collection:string ->
  fields:google_firestore_index__fields list ->
  string ->
  unit
