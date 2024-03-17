(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_security_center_assessment__status
type azurerm_security_center_assessment__timeouts
type azurerm_security_center_assessment

val azurerm_security_center_assessment :
  ?additional_data:(string * string) list ->
  ?id:string ->
  ?timeouts:azurerm_security_center_assessment__timeouts ->
  assessment_policy_id:string ->
  target_resource_id:string ->
  status:azurerm_security_center_assessment__status list ->
  string ->
  unit
