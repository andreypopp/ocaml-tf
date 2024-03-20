(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_policy

val aws_iam_policy :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?path_prefix:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  aws_iam_policy

val yojson_of_aws_iam_policy : aws_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  path_prefix : string prop;
  policy : string prop;
  policy_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?path_prefix:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?path_prefix:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
