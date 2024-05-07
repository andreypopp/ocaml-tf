(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_policy_attachment

val aws_iam_policy_attachment :
  ?groups:string prop list ->
  ?id:string prop ->
  ?roles:string prop list ->
  ?users:string prop list ->
  name:string prop ->
  policy_arn:string prop ->
  unit ->
  aws_iam_policy_attachment

val yojson_of_aws_iam_policy_attachment :
  aws_iam_policy_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  groups : string list prop;
  id : string prop;
  name : string prop;
  policy_arn : string prop;
  roles : string list prop;
  users : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?groups:string prop list ->
  ?id:string prop ->
  ?roles:string prop list ->
  ?users:string prop list ->
  name:string prop ->
  policy_arn:string prop ->
  string ->
  t

val make :
  ?groups:string prop list ->
  ?id:string prop ->
  ?roles:string prop list ->
  ?users:string prop list ->
  name:string prop ->
  policy_arn:string prop ->
  string ->
  t Tf_core.resource
