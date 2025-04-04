(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ssm_default_patch_baseline

val aws_ssm_default_patch_baseline :
  ?id:string prop ->
  baseline_id:string prop ->
  operating_system:string prop ->
  unit ->
  aws_ssm_default_patch_baseline

val yojson_of_aws_ssm_default_patch_baseline :
  aws_ssm_default_patch_baseline -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  baseline_id : string prop;
  id : string prop;
  operating_system : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  baseline_id:string prop ->
  operating_system:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  baseline_id:string prop ->
  operating_system:string prop ->
  string ->
  t Tf_core.resource
