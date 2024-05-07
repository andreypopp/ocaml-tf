(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_group

val aws_iam_group :
  ?id:string prop ->
  ?path:string prop ->
  name:string prop ->
  unit ->
  aws_iam_group

val yojson_of_aws_iam_group : aws_iam_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  unique_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?path:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?path:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
