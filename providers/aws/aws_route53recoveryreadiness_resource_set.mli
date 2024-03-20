(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type resources__dns_target_resource__target_resource__nlb_resource

val resources__dns_target_resource__target_resource__nlb_resource :
  ?arn:string prop ->
  unit ->
  resources__dns_target_resource__target_resource__nlb_resource

type resources__dns_target_resource__target_resource__r53_resource

val resources__dns_target_resource__target_resource__r53_resource :
  ?domain_name:string prop ->
  ?record_set_id:string prop ->
  unit ->
  resources__dns_target_resource__target_resource__r53_resource

type resources__dns_target_resource__target_resource

val resources__dns_target_resource__target_resource :
  nlb_resource:
    resources__dns_target_resource__target_resource__nlb_resource
    list ->
  r53_resource:
    resources__dns_target_resource__target_resource__r53_resource
    list ->
  unit ->
  resources__dns_target_resource__target_resource

type resources__dns_target_resource

val resources__dns_target_resource :
  ?hosted_zone_arn:string prop ->
  ?record_set_id:string prop ->
  ?record_type:string prop ->
  domain_name:string prop ->
  target_resource:
    resources__dns_target_resource__target_resource list ->
  unit ->
  resources__dns_target_resource

type resources

val resources :
  ?readiness_scopes:string prop list ->
  ?resource_arn:string prop ->
  dns_target_resource:resources__dns_target_resource list ->
  unit ->
  resources

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_route53recoveryreadiness_resource_set

val aws_route53recoveryreadiness_resource_set :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  resource_set_name:string prop ->
  resource_set_type:string prop ->
  resources:resources list ->
  unit ->
  aws_route53recoveryreadiness_resource_set

val yojson_of_aws_route53recoveryreadiness_resource_set :
  aws_route53recoveryreadiness_resource_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  resource_set_name : string prop;
  resource_set_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  resource_set_name:string prop ->
  resource_set_type:string prop ->
  resources:resources list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  resource_set_name:string prop ->
  resource_set_type:string prop ->
  resources:resources list ->
  string ->
  t Tf_core.resource
