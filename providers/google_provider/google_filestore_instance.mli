(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_filestore_instance__file_shares__nfs_export_options
type google_filestore_instance__file_shares
type google_filestore_instance__networks
type google_filestore_instance__timeouts
type google_filestore_instance

val google_filestore_instance :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:google_filestore_instance__timeouts ->
  name:string prop ->
  tier:string prop ->
  file_shares:google_filestore_instance__file_shares list ->
  networks:google_filestore_instance__networks list ->
  string ->
  unit
