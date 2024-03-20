(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ssm_patch_group

val aws_ssm_patch_group :
  ?id:string prop ->
  baseline_id:string prop ->
  patch_group:string prop ->
  unit ->
  aws_ssm_patch_group

val yojson_of_aws_ssm_patch_group : aws_ssm_patch_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  baseline_id : string prop;
  id : string prop;
  patch_group : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  baseline_id:string prop ->
  patch_group:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  baseline_id:string prop ->
  patch_group:string prop ->
  string ->
  t Tf_core.resource
