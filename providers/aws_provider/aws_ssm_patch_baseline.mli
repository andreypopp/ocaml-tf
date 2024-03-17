(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_patch_baseline__approval_rule__patch_filter
type aws_ssm_patch_baseline__approval_rule
type aws_ssm_patch_baseline__global_filter
type aws_ssm_patch_baseline__source
type aws_ssm_patch_baseline

val aws_ssm_patch_baseline :
  ?approved_patches:string prop list ->
  ?approved_patches_compliance_level:string prop ->
  ?approved_patches_enable_non_security:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?operating_system:string prop ->
  ?rejected_patches:string prop list ->
  ?rejected_patches_action:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  approval_rule:aws_ssm_patch_baseline__approval_rule list ->
  global_filter:aws_ssm_patch_baseline__global_filter list ->
  source:aws_ssm_patch_baseline__source list ->
  string ->
  unit
