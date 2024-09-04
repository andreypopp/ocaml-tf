(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_route53recoveryreadiness_recovery_group

val aws_route53recoveryreadiness_recovery_group :
  ?cells:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  recovery_group_name:string prop ->
  unit ->
  aws_route53recoveryreadiness_recovery_group

val yojson_of_aws_route53recoveryreadiness_recovery_group :
  aws_route53recoveryreadiness_recovery_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  cells : string list prop;
  id : string prop;
  recovery_group_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?cells:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  recovery_group_name:string prop ->
  string ->
  t

val make :
  ?cells:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  recovery_group_name:string prop ->
  string ->
  t Tf_core.resource
