(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
