(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type insights_configuration

val insights_configuration :
  ?notifications_enabled:bool prop ->
  insights_enabled:bool prop ->
  unit ->
  insights_configuration

type aws_xray_group

val aws_xray_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  filter_expression:string prop ->
  group_name:string prop ->
  insights_configuration:insights_configuration list ->
  unit ->
  aws_xray_group

val yojson_of_aws_xray_group : aws_xray_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  filter_expression : string prop;
  group_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  filter_expression:string prop ->
  group_name:string prop ->
  insights_configuration:insights_configuration list ->
  string ->
  t
