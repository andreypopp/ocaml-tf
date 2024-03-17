(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_filestore_backup__timeouts
type google_filestore_backup

val google_filestore_backup :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_filestore_backup__timeouts ->
  location:string prop ->
  name:string prop ->
  source_file_share:string prop ->
  source_instance:string prop ->
  string ->
  unit
