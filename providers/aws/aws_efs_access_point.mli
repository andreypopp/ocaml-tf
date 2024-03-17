(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_efs_access_point__posix_user
type aws_efs_access_point__root_directory__creation_info
type aws_efs_access_point__root_directory
type aws_efs_access_point

type t = private {
  arn : string prop;
  file_system_arn : string prop;
  file_system_id : string prop;
  id : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_efs_access_point :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  file_system_id:string prop ->
  posix_user:aws_efs_access_point__posix_user list ->
  root_directory:aws_efs_access_point__root_directory list ->
  string ->
  t
