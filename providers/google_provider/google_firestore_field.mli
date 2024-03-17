(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_firestore_field__index_config__indexes
type google_firestore_field__index_config
type google_firestore_field__timeouts
type google_firestore_field__ttl_config
type google_firestore_field

type t = private {
  collection : string prop;
  database : string prop;
  field : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

val google_firestore_field :
  ?database:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_firestore_field__timeouts ->
  collection:string prop ->
  field:string prop ->
  index_config:google_firestore_field__index_config list ->
  ttl_config:google_firestore_field__ttl_config list ->
  string ->
  t
