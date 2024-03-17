(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_fsx_openzfs_file_system__protocol__nfs__mount_options

type aws_datasync_location_fsx_openzfs_file_system__protocol__nfs
type aws_datasync_location_fsx_openzfs_file_system__protocol
type aws_datasync_location_fsx_openzfs_file_system

type t = private {
  arn : string prop;
  creation_time : string prop;
  fsx_filesystem_arn : string prop;
  id : string prop;
  security_group_arns : string list prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

val aws_datasync_location_fsx_openzfs_file_system :
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  fsx_filesystem_arn:string prop ->
  security_group_arns:string prop list ->
  protocol:
    aws_datasync_location_fsx_openzfs_file_system__protocol list ->
  string ->
  t
