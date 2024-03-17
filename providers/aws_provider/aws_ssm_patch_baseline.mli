(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_patch_baseline__approval_rule__patch_filter
type aws_ssm_patch_baseline__approval_rule
type aws_ssm_patch_baseline__global_filter
type aws_ssm_patch_baseline__source
type aws_ssm_patch_baseline

val aws_ssm_patch_baseline :
  ?approved_patches:string list ->
  ?approved_patches_compliance_level:string ->
  ?approved_patches_enable_non_security:bool ->
  ?description:string ->
  ?operating_system:string ->
  ?rejected_patches:string list ->
  ?tags:(string * string) list ->
  name:string ->
  approval_rule:aws_ssm_patch_baseline__approval_rule list ->
  global_filter:aws_ssm_patch_baseline__global_filter list ->
  source:aws_ssm_patch_baseline__source list ->
  string ->
  unit
