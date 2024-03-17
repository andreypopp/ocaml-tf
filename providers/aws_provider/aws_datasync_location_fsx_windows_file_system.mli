(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_fsx_windows_file_system

val aws_datasync_location_fsx_windows_file_system :
  ?domain:string prop ->
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  fsx_filesystem_arn:string prop ->
  password:string prop ->
  security_group_arns:string prop list ->
  user:string prop ->
  string ->
  unit
