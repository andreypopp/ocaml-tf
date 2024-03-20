(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_security_center_assessment_policy

val azurerm_security_center_assessment_policy :
  ?categories:string prop list ->
  ?id:string prop ->
  ?implementation_effort:string prop ->
  ?remediation_description:string prop ->
  ?severity:string prop ->
  ?threats:string prop list ->
  ?user_impact:string prop ->
  ?timeouts:timeouts ->
  description:string prop ->
  display_name:string prop ->
  unit ->
  azurerm_security_center_assessment_policy

val yojson_of_azurerm_security_center_assessment_policy :
  azurerm_security_center_assessment_policy -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?categories:string prop list ->
  ?id:string prop ->
  ?implementation_effort:string prop ->
  ?remediation_description:string prop ->
  ?severity:string prop ->
  ?threats:string prop list ->
  ?user_impact:string prop ->
  ?timeouts:timeouts ->
  description:string prop ->
  display_name:string prop ->
  string ->
  t

val make :
  ?categories:string prop list ->
  ?id:string prop ->
  ?implementation_effort:string prop ->
  ?remediation_description:string prop ->
  ?severity:string prop ->
  ?threats:string prop list ->
  ?user_impact:string prop ->
  ?timeouts:timeouts ->
  description:string prop ->
  display_name:string prop ->
  string ->
  t Tf_core.resource
