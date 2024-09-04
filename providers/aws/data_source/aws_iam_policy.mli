(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_policy

val aws_iam_policy :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?path_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  unit ->
  aws_iam_policy

val yojson_of_aws_iam_policy : aws_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  attachment_count : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  path_prefix : string prop;
  policy : string prop;
  policy_id : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?path_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?path_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
