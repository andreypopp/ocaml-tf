(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_iam_group_policy_attachment

val aws_iam_group_policy_attachment :
  ?id:string prop ->
  group:string prop ->
  policy_arn:string prop ->
  unit ->
  aws_iam_group_policy_attachment

val yojson_of_aws_iam_group_policy_attachment :
  aws_iam_group_policy_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  group : string prop;
  id : string prop;
  policy_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  group:string prop ->
  policy_arn:string prop ->
  string ->
  t
