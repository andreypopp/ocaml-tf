(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_shield_drt_access_role_arn_association

val aws_shield_drt_access_role_arn_association :
  ?timeouts:timeouts ->
  role_arn:string prop ->
  unit ->
  aws_shield_drt_access_role_arn_association

val yojson_of_aws_shield_drt_access_role_arn_association :
  aws_shield_drt_access_role_arn_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  role_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?timeouts:timeouts ->
  role_arn:string prop ->
  string ->
  t

val make :
  ?timeouts:timeouts ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource
