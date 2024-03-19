(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type posix_user

val posix_user :
  ?secondary_gids:float prop list ->
  gid:float prop ->
  uid:float prop ->
  unit ->
  posix_user

type root_directory__creation_info

val root_directory__creation_info :
  owner_gid:float prop ->
  owner_uid:float prop ->
  permissions:string prop ->
  unit ->
  root_directory__creation_info

type root_directory

val root_directory :
  ?path:string prop ->
  creation_info:root_directory__creation_info list ->
  unit ->
  root_directory

type aws_efs_access_point

val aws_efs_access_point :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  file_system_id:string prop ->
  posix_user:posix_user list ->
  root_directory:root_directory list ->
  unit ->
  aws_efs_access_point

val yojson_of_aws_efs_access_point : aws_efs_access_point -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  file_system_arn : string prop;
  file_system_id : string prop;
  id : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  file_system_id:string prop ->
  posix_user:posix_user list ->
  root_directory:root_directory list ->
  string ->
  t
