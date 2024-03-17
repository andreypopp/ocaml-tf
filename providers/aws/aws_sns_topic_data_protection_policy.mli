(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sns_topic_data_protection_policy

type t = private {
  arn : string prop;
  id : string prop;
  policy : string prop;
}

val aws_sns_topic_data_protection_policy :
  ?id:string prop ->
  arn:string prop ->
  policy:string prop ->
  string ->
  t
