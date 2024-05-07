(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_wafv2_web_acl

val aws_wafv2_web_acl :
  ?id:string prop ->
  name:string prop ->
  scope:string prop ->
  unit ->
  aws_wafv2_web_acl

val yojson_of_aws_wafv2_web_acl : aws_wafv2_web_acl -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
