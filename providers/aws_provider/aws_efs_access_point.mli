(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_efs_access_point__posix_user
type aws_efs_access_point__root_directory__creation_info
type aws_efs_access_point__root_directory
type aws_efs_access_point

val aws_efs_access_point :
  ?tags:(string * string) list ->
  file_system_id:string ->
  posix_user:aws_efs_access_point__posix_user list ->
  root_directory:aws_efs_access_point__root_directory list ->
  string ->
  unit
