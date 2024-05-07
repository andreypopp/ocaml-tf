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

type protocol__smb__mount_options

val protocol__smb__mount_options :
  ?version:string prop -> unit -> protocol__smb__mount_options

type protocol__smb

val protocol__smb :
  ?domain:string prop ->
  password:string prop ->
  user:string prop ->
  mount_options:protocol__smb__mount_options list ->
  unit ->
  protocol__smb

type protocol

val protocol :
  ?nfs:protocol__nfs list ->
  ?smb:protocol__smb list ->
  unit ->
  protocol

type aws_datasync_location_fsx_ontap_file_system

val aws_datasync_location_fsx_ontap_file_system :
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  security_group_arns:string prop list ->
  storage_virtual_machine_arn:string prop ->
  protocol:protocol list ->
  unit ->
  aws_datasync_location_fsx_ontap_file_system

val yojson_of_aws_datasync_location_fsx_ontap_file_system :
  aws_datasync_location_fsx_ontap_file_system -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  fsx_filesystem_arn : string prop;
  id : string prop;
  security_group_arns : string list prop;
  storage_virtual_machine_arn : string prop;
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
  security_group_arns:string prop list ->
  storage_virtual_machine_arn:string prop ->
  protocol:protocol list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  security_group_arns:string prop list ->
  storage_virtual_machine_arn:string prop ->
  protocol:protocol list ->
  string ->
  t Tf_core.resource
