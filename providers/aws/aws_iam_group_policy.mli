(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_group_policy

val aws_iam_group_policy :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  group:string prop ->
  policy:string prop ->
  unit ->
  aws_iam_group_policy

val yojson_of_aws_iam_group_policy : aws_iam_group_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  group : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  group:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  group:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource
