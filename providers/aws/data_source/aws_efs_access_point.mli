(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type posix_user = {
  gid : float prop;  (** gid *)
  secondary_gids : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secondary_gids *)
  uid : float prop;  (** uid *)
}

type root_directory__creation_info = {
  owner_gid : float prop;  (** owner_gid *)
  owner_uid : float prop;  (** owner_uid *)
  permissions : string prop;  (** permissions *)
}

type root_directory = {
  creation_info : root_directory__creation_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** creation_info *)
  path : string prop;  (** path *)
}

type aws_efs_access_point

val aws_efs_access_point :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  access_point_id:string prop ->
  unit ->
  aws_efs_access_point

val yojson_of_aws_efs_access_point : aws_efs_access_point -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_point_id : string prop;
  arn : string prop;
  file_system_arn : string prop;
  file_system_id : string prop;
  id : string prop;
  owner_id : string prop;
  posix_user : posix_user list prop;
  root_directory : root_directory list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  access_point_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  access_point_id:string prop ->
  string ->
  t Tf_core.resource
