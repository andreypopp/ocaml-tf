(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_roles

val aws_iam_roles :
  ?id:string prop ->
  ?name_regex:string prop ->
  ?path_prefix:string prop ->
  unit ->
  aws_iam_roles

val yojson_of_aws_iam_roles : aws_iam_roles -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
