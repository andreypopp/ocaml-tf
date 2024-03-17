(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_security_center_assessment__status
type azurerm_security_center_assessment__timeouts
type azurerm_security_center_assessment

type t = private {
  additional_data : (string * string) list prop;
  assessment_policy_id : string prop;
  id : string prop;
  target_resource_id : string prop;
}

val azurerm_security_center_assessment :
  ?additional_data:(string * string prop) list ->
  ?id:string prop ->
  ?timeouts:azurerm_security_center_assessment__timeouts ->
  assessment_policy_id:string prop ->
  target_resource_id:string prop ->
  status:azurerm_security_center_assessment__status list ->
  string ->
  t
