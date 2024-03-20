(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_log_destination

val aws_cloudwatch_log_destination :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  role_arn:string prop ->
  target_arn:string prop ->
  unit ->
  aws_cloudwatch_log_destination

val yojson_of_aws_cloudwatch_log_destination :
  aws_cloudwatch_log_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  role_arn:string prop ->
  target_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  role_arn:string prop ->
  target_arn:string prop ->
  string ->
  t Tf_core.resource
