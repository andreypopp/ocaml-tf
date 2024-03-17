(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource__nlb_resource

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource__r53_resource

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource

type aws_route53recoveryreadiness_resource_set__resources
type aws_route53recoveryreadiness_resource_set__timeouts
type aws_route53recoveryreadiness_resource_set

val aws_route53recoveryreadiness_resource_set :
  ?tags:(string * string) list ->
  ?timeouts:aws_route53recoveryreadiness_resource_set__timeouts ->
  resource_set_name:string ->
  resource_set_type:string ->
  resources:aws_route53recoveryreadiness_resource_set__resources list ->
  string ->
  unit
