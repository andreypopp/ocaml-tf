(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_access__home_directory_mappings
type aws_transfer_access__posix_profile
type aws_transfer_access

val aws_transfer_access :
  ?home_directory:string prop ->
  ?home_directory_type:string prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?role:string prop ->
  external_id:string prop ->
  server_id:string prop ->
  home_directory_mappings:
    aws_transfer_access__home_directory_mappings list ->
  posix_profile:aws_transfer_access__posix_profile list ->
  string ->
  unit
