(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_fsx_openzfs_file_system__protocol__nfs__mount_options

type aws_datasync_location_fsx_openzfs_file_system__protocol__nfs
type aws_datasync_location_fsx_openzfs_file_system__protocol
type aws_datasync_location_fsx_openzfs_file_system

val aws_datasync_location_fsx_openzfs_file_system :
  ?tags:(string * string) list ->
  fsx_filesystem_arn:string ->
  security_group_arns:string list ->
  protocol:
    aws_datasync_location_fsx_openzfs_file_system__protocol list ->
  string ->
  unit
