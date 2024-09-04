(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_datasync_location_fsx_lustre_file_system

val aws_datasync_location_fsx_lustre_file_system :
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  fsx_filesystem_arn:string prop ->
  security_group_arns:string prop list ->
  unit ->
  aws_datasync_location_fsx_lustre_file_system

val yojson_of_aws_datasync_location_fsx_lustre_file_system :
  aws_datasync_location_fsx_lustre_file_system -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  fsx_filesystem_arn : string prop;
  id : string prop;
  security_group_arns : string list prop;
  subdirectory : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  fsx_filesystem_arn:string prop ->
  security_group_arns:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  fsx_filesystem_arn:string prop ->
  security_group_arns:string prop list ->
  string ->
  t Tf_core.resource
