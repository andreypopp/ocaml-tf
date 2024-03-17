(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_filestore_instance__file_shares__nfs_export_options
type google_filestore_instance__file_shares
type google_filestore_instance__networks
type google_filestore_instance__timeouts
type google_filestore_instance

val google_filestore_instance :
  ?description:string ->
  ?kms_key_name:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_filestore_instance__timeouts ->
  name:string ->
  tier:string ->
  file_shares:google_filestore_instance__file_shares list ->
  networks:google_filestore_instance__networks list ->
  string ->
  unit
