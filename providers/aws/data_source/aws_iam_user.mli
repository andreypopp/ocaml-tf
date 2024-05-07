(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_user

val aws_iam_user :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  user_name:string prop ->
  unit ->
  aws_iam_user

val yojson_of_aws_iam_user : aws_iam_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  path : string prop;
  permissions_boundary : string prop;
  tags : (string * string) list prop;
  user_id : string prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  user_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  user_name:string prop ->
  string ->
  t Tf_core.resource
