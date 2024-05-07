(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

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
  unit ->
  aws_datasync_location_fsx_windows_file_system

val yojson_of_aws_datasync_location_fsx_windows_file_system :
  aws_datasync_location_fsx_windows_file_system -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  domain : string prop;
  fsx_filesystem_arn : string prop;
  id : string prop;
  password : string prop;
  security_group_arns : string list prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
  user : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  t

val make :
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
  t Tf_core.resource
