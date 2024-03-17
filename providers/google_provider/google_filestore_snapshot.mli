(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_filestore_snapshot__timeouts
type google_filestore_snapshot

val google_filestore_snapshot :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_filestore_snapshot__timeouts ->
  instance:string ->
  location:string ->
  name:string ->
  string ->
  unit
