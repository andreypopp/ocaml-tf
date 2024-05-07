(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_user_policy_attachment

val aws_iam_user_policy_attachment :
  ?id:string prop ->
  policy_arn:string prop ->
  user:string prop ->
  unit ->
  aws_iam_user_policy_attachment

val yojson_of_aws_iam_user_policy_attachment :
  aws_iam_user_policy_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  policy_arn : string prop;
  user : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  policy_arn:string prop ->
  user:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  policy_arn:string prop ->
  user:string prop ->
  string ->
  t Tf_core.resource
