(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_account_vdm_attributes__dashboard_attributes
type aws_sesv2_account_vdm_attributes__guardian_attributes
type aws_sesv2_account_vdm_attributes

val aws_sesv2_account_vdm_attributes :
  vdm_enabled:string ->
  dashboard_attributes:
    aws_sesv2_account_vdm_attributes__dashboard_attributes list ->
  guardian_attributes:
    aws_sesv2_account_vdm_attributes__guardian_attributes list ->
  string ->
  unit
