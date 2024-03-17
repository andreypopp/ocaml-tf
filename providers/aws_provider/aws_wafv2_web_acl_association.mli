(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafv2_web_acl_association__timeouts

type aws_wafv2_web_acl_association

val aws_wafv2_web_acl_association :
    ?timeouts:aws_wafv2_web_acl_association__timeouts ->
    resource_arn:string ->
    web_acl_arn:string ->
    string ->
    unit

