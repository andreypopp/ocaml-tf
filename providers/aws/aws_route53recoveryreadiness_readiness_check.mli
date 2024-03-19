(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_route53recoveryreadiness_readiness_check

val aws_route53recoveryreadiness_readiness_check :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  readiness_check_name:string prop ->
  resource_set_name:string prop ->
  unit ->
  aws_route53recoveryreadiness_readiness_check

val yojson_of_aws_route53recoveryreadiness_readiness_check :
  aws_route53recoveryreadiness_readiness_check -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  readiness_check_name : string prop;
  resource_set_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  readiness_check_name:string prop ->
  resource_set_name:string prop ->
  string ->
  t
