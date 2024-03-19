(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_iam_role_policy

val aws_iam_role_policy :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  policy:string prop ->
  role:string prop ->
  unit ->
  aws_iam_role_policy

val yojson_of_aws_iam_role_policy : aws_iam_role_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  policy:string prop ->
  role:string prop ->
  string ->
  t
