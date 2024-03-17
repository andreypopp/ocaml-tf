(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_security_center_assessment_policy__timeouts
type azurerm_security_center_assessment_policy

val azurerm_security_center_assessment_policy :
  ?categories:string list ->
  ?id:string ->
  ?implementation_effort:string ->
  ?remediation_description:string ->
  ?severity:string ->
  ?threats:string list ->
  ?user_impact:string ->
  ?timeouts:azurerm_security_center_assessment_policy__timeouts ->
  description:string ->
  display_name:string ->
  string ->
  unit
