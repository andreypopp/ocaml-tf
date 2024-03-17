(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_group

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  unique_id : string prop;
}

val aws_iam_group :
  ?id:string prop ->
  ?path:string prop ->
  name:string prop ->
  string ->
  t
