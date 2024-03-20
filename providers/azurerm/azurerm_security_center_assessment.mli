(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type status

val status :
  ?cause:string prop ->
  ?description:string prop ->
  code:string prop ->
  unit ->
  status

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_security_center_assessment

val azurerm_security_center_assessment :
  ?additional_data:(string * string prop) list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  assessment_policy_id:string prop ->
  target_resource_id:string prop ->
  status:status list ->
  unit ->
  azurerm_security_center_assessment

val yojson_of_azurerm_security_center_assessment :
  azurerm_security_center_assessment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  additional_data : (string * string) list prop;
  assessment_policy_id : string prop;
  id : string prop;
  target_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_data:(string * string prop) list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  assessment_policy_id:string prop ->
  target_resource_id:string prop ->
  status:status list ->
  string ->
  t

val make :
  ?additional_data:(string * string prop) list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  assessment_policy_id:string prop ->
  target_resource_id:string prop ->
  status:status list ->
  string ->
  t Tf_core.resource
