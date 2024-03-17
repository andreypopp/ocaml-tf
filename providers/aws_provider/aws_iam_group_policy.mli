(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_group_policy

type t = private {
  group : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
}

val aws_iam_group_policy :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  group:string prop ->
  policy:string prop ->
  string ->
  t
