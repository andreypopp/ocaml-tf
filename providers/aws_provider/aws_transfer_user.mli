(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_user__home_directory_mappings
type aws_transfer_user__posix_profile
type aws_transfer_user__timeouts
type aws_transfer_user

val aws_transfer_user :
  ?home_directory:string ->
  ?home_directory_type:string ->
  ?id:string ->
  ?policy:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_transfer_user__timeouts ->
  role:string ->
  server_id:string ->
  user_name:string ->
  home_directory_mappings:
    aws_transfer_user__home_directory_mappings list ->
  posix_profile:aws_transfer_user__posix_profile list ->
  string ->
  unit
