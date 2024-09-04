(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_route53recoveryreadiness_readiness_check

val aws_route53recoveryreadiness_readiness_check :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  readiness_check_name:string prop ->
  resource_set_name:string prop ->
  unit ->
  aws_route53recoveryreadiness_readiness_check

val yojson_of_aws_route53recoveryreadiness_readiness_check :
  aws_route53recoveryreadiness_readiness_check -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  readiness_check_name : string prop;
  resource_set_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  readiness_check_name:string prop ->
  resource_set_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  readiness_check_name:string prop ->
  resource_set_name:string prop ->
  string ->
  t Tf_core.resource
