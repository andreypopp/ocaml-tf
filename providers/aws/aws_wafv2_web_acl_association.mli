

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
    ?create:string prop ->
    unit ->
    timeouts

type aws_wafv2_web_acl_association

val aws_wafv2_web_acl_association :
    ?id:string prop ->
    ?timeouts:timeouts ->
    resource_arn:string prop ->
    web_acl_arn:string prop ->
    unit ->
    aws_wafv2_web_acl_association

val yojson_of_aws_wafv2_web_acl_association : aws_wafv2_web_acl_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name: string;
  id: string prop;
  resource_arn: string prop;
  web_acl_arn: string prop;
}

val register :
    ?tf_module:tf_module ->
    ?id:string prop ->
    ?timeouts:timeouts ->
    resource_arn:string prop ->
    web_acl_arn:string prop ->
    string ->
    t

val make :
    ?id:string prop ->
    ?timeouts:timeouts ->
    resource_arn:string prop ->
    web_acl_arn:string prop ->
    string ->
    t Tf_core.resource

