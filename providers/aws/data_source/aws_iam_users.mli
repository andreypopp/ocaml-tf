(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_users

val aws_iam_users :
  ?id:string prop ->
  ?name_regex:string prop ->
  ?path_prefix:string prop ->
  unit ->
  aws_iam_users

val yojson_of_aws_iam_users : aws_iam_users -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arns : string list prop;
  id : string prop;
  name_regex : string prop;
  names : string list prop;
  path_prefix : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name_regex:string prop ->
  ?path_prefix:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name_regex:string prop ->
  ?path_prefix:string prop ->
  string ->
  t Tf_core.resource
