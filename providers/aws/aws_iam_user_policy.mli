(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_iam_user_policy

val aws_iam_user_policy :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  policy:string prop ->
  user:string prop ->
  unit ->
  aws_iam_user_policy

val yojson_of_aws_iam_user_policy : aws_iam_user_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
  user : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  policy:string prop ->
  user:string prop ->
  string ->
  t
