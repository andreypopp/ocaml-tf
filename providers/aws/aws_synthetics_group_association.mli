(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_synthetics_group_association

val aws_synthetics_group_association :
  ?id:string prop ->
  canary_arn:string prop ->
  group_name:string prop ->
  unit ->
  aws_synthetics_group_association

val yojson_of_aws_synthetics_group_association :
  aws_synthetics_group_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  canary_arn : string prop;
  group_arn : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  canary_arn:string prop ->
  group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  canary_arn:string prop ->
  group_name:string prop ->
  string ->
  t Tf_core.resource
