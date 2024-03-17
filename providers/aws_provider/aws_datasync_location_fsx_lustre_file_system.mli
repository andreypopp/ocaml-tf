(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_fsx_lustre_file_system

val aws_datasync_location_fsx_lustre_file_system :
  ?id:string ->
  ?subdirectory:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  fsx_filesystem_arn:string ->
  security_group_arns:string list ->
  string ->
  unit
