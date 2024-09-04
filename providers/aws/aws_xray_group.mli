(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?insights_configuration:insights_configuration list ->
  filter_expression:string prop ->
  group_name:string prop ->
  unit ->
  aws_xray_group

val yojson_of_aws_xray_group : aws_xray_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  filter_expression : string prop;
  group_name : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?insights_configuration:insights_configuration list ->
  filter_expression:string prop ->
  group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?insights_configuration:insights_configuration list ->
  filter_expression:string prop ->
  group_name:string prop ->
  string ->
  t Tf_core.resource
