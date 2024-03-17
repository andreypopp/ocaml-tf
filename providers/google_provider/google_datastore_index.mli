(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_datastore_index__properties
type google_datastore_index__timeouts
type google_datastore_index

val google_datastore_index :
  ?ancestor:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_datastore_index__timeouts ->
  kind:string prop ->
  properties:google_datastore_index__properties list ->
  string ->
  unit
