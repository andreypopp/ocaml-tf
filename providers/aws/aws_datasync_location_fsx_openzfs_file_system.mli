(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type protocol__nfs__mount_options

val protocol__nfs__mount_options :
  ?version:string prop -> unit -> protocol__nfs__mount_options

type protocol__nfs

val protocol__nfs :
  mount_options:protocol__nfs__mount_options list ->
  unit ->
  protocol__nfs

type protocol

val protocol : nfs:protocol__nfs list -> unit -> protocol

type aws_datasync_location_fsx_openzfs_file_system

val aws_datasync_location_fsx_openzfs_file_system :
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  fsx_filesystem_arn:string prop ->
  security_group_arns:string prop list ->
  protocol:protocol list ->
  unit ->
  aws_datasync_location_fsx_openzfs_file_system

val yojson_of_aws_datasync_location_fsx_openzfs_file_system :
  aws_datasync_location_fsx_openzfs_file_system -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  fsx_filesystem_arn:string prop ->
  security_group_arns:string prop list ->
  protocol:protocol list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  fsx_filesystem_arn:string prop ->
  security_group_arns:string prop list ->
  protocol:protocol list ->
  string ->
  t Tf_core.resource
