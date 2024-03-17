(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_filestore_snapshot__timeouts
type google_filestore_snapshot

val google_filestore_snapshot :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_filestore_snapshot__timeouts ->
  instance:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  unit
