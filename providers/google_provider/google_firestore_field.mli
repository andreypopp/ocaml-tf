(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firestore_field__index_config__indexes
type google_firestore_field__index_config
type google_firestore_field__timeouts
type google_firestore_field__ttl_config
type google_firestore_field

val google_firestore_field :
  ?database:string ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_firestore_field__timeouts ->
  collection:string ->
  field:string ->
  index_config:google_firestore_field__index_config list ->
  ttl_config:google_firestore_field__ttl_config list ->
  string ->
  unit
