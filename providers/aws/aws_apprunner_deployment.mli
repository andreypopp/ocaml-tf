(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_apprunner_deployment

val aws_apprunner_deployment :
  ?timeouts:timeouts ->
  service_arn:string prop ->
  unit ->
  aws_apprunner_deployment

val yojson_of_aws_apprunner_deployment :
  aws_apprunner_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  operation_id : string prop;
  service_arn : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?timeouts:timeouts ->
  service_arn:string prop ->
  string ->
  t

val make :
  ?timeouts:timeouts ->
  service_arn:string prop ->
  string ->
  t Tf_core.resource
