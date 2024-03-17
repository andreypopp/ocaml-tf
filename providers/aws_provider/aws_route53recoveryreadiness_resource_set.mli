(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource__nlb_resource

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource__r53_resource

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource

type aws_route53recoveryreadiness_resource_set__resources
type aws_route53recoveryreadiness_resource_set__timeouts
type aws_route53recoveryreadiness_resource_set

type t = private {
  arn : string prop;
  id : string prop;
  resource_set_name : string prop;
  resource_set_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_route53recoveryreadiness_resource_set :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_route53recoveryreadiness_resource_set__timeouts ->
  resource_set_name:string prop ->
  resource_set_type:string prop ->
  resources:aws_route53recoveryreadiness_resource_set__resources list ->
  string ->
  t
