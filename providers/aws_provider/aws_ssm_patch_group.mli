(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_patch_group

type t = private {
  baseline_id : string prop;
  id : string prop;
  patch_group : string prop;
}

val aws_ssm_patch_group :
  ?id:string prop ->
  baseline_id:string prop ->
  patch_group:string prop ->
  string ->
  t
