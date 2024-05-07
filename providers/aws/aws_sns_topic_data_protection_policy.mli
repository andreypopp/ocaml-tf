(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sns_topic_data_protection_policy

val aws_sns_topic_data_protection_policy :
  ?id:string prop ->
  arn:string prop ->
  policy:string prop ->
  unit ->
  aws_sns_topic_data_protection_policy

val yojson_of_aws_sns_topic_data_protection_policy :
  aws_sns_topic_data_protection_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  arn:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  arn:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource
