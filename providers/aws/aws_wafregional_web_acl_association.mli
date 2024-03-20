(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_wafregional_web_acl_association

val aws_wafregional_web_acl_association :
  ?id:string prop ->
  resource_arn:string prop ->
  web_acl_id:string prop ->
  unit ->
  aws_wafregional_web_acl_association

val yojson_of_aws_wafregional_web_acl_association :
  aws_wafregional_web_acl_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  resource_arn : string prop;
  web_acl_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  resource_arn:string prop ->
  web_acl_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  resource_arn:string prop ->
  web_acl_id:string prop ->
  string ->
  t Tf_core.resource
