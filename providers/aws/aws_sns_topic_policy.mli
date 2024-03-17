(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sns_topic_policy

type t = private {
  arn : string prop;
  id : string prop;
  owner : string prop;
  policy : string prop;
}

val aws_sns_topic_policy :
  ?id:string prop ->
  arn:string prop ->
  policy:string prop ->
  string ->
  t
