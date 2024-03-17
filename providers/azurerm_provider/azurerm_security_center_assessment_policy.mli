(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_security_center_assessment_policy__timeouts
type azurerm_security_center_assessment_policy

type t = private {
  categories : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  implementation_effort : string prop;
  name : string prop;
  remediation_description : string prop;
  severity : string prop;
  threats : string list prop;
  user_impact : string prop;
}

val azurerm_security_center_assessment_policy :
  ?categories:string prop list ->
  ?id:string prop ->
  ?implementation_effort:string prop ->
  ?remediation_description:string prop ->
  ?severity:string prop ->
  ?threats:string prop list ->
  ?user_impact:string prop ->
  ?timeouts:azurerm_security_center_assessment_policy__timeouts ->
  description:string prop ->
  display_name:string prop ->
  string ->
  t
