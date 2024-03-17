(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_filestore_backup__timeouts
type google_filestore_backup

val google_filestore_backup :
  ?description:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_filestore_backup__timeouts ->
  location:string ->
  name:string ->
  source_file_share:string ->
  source_instance:string ->
  string ->
  unit
