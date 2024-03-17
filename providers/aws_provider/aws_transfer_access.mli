(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_access__home_directory_mappings
type aws_transfer_access__posix_profile
type aws_transfer_access

val aws_transfer_access :
  ?home_directory:string ->
  ?home_directory_type:string ->
  ?policy:string ->
  ?role:string ->
  external_id:string ->
  server_id:string ->
  home_directory_mappings:
    aws_transfer_access__home_directory_mappings list ->
  posix_profile:aws_transfer_access__posix_profile list ->
  string ->
  unit
