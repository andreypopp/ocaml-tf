(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_efs_access_points

val aws_efs_access_points :
  ?id:string prop ->
  file_system_id:string prop ->
  unit ->
  aws_efs_access_points

val yojson_of_aws_efs_access_points : aws_efs_access_points -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arns : string list prop;
  file_system_id : string prop;
  id : string prop;
  ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  file_system_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  file_system_id:string prop ->
  string ->
  t Tf_core.resource
