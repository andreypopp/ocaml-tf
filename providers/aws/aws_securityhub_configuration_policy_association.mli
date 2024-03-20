(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_securityhub_configuration_policy_association

val aws_securityhub_configuration_policy_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  policy_id:string prop ->
  target_id:string prop ->
  unit ->
  aws_securityhub_configuration_policy_association

val yojson_of_aws_securityhub_configuration_policy_association :
  aws_securityhub_configuration_policy_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  policy_id : string prop;
  target_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  policy_id:string prop ->
  target_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  policy_id:string prop ->
  target_id:string prop ->
  string ->
  t Tf_core.resource
