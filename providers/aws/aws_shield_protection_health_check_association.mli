(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_shield_protection_health_check_association

val aws_shield_protection_health_check_association :
  ?id:string prop ->
  health_check_arn:string prop ->
  shield_protection_id:string prop ->
  unit ->
  aws_shield_protection_health_check_association

val yojson_of_aws_shield_protection_health_check_association :
  aws_shield_protection_health_check_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  health_check_arn : string prop;
  id : string prop;
  shield_protection_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  health_check_arn:string prop ->
  shield_protection_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  health_check_arn:string prop ->
  shield_protection_id:string prop ->
  string ->
  t Tf_core.resource
