(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_default_patch_baseline

type t = private {
  baseline_id : string prop;
  id : string prop;
  operating_system : string prop;
}

val aws_ssm_default_patch_baseline :
  ?id:string prop ->
  baseline_id:string prop ->
  operating_system:string prop ->
  string ->
  t
