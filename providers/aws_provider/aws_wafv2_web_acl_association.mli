(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafv2_web_acl_association__timeouts

type aws_wafv2_web_acl_association

type t = private {
  id: string prop;
  resource_arn: string prop;
  web_acl_arn: string prop;
}

val aws_wafv2_web_acl_association :
    ?id:string prop ->
    ?timeouts:aws_wafv2_web_acl_association__timeouts ->
    resource_arn:string prop ->
    web_acl_arn:string prop ->
    string ->
    t

