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

type azurerm_resource_policy_exemption

val azurerm_resource_policy_exemption :
  ?description:string prop ->
  ?display_name:string prop ->
  ?expires_on:string prop ->
  ?id:string prop ->
  ?metadata:string prop ->
  ?policy_definition_reference_ids:string prop list ->
  ?timeouts:timeouts ->
  exemption_category:string prop ->
  name:string prop ->
  policy_assignment_id:string prop ->
  resource_id:string prop ->
  unit ->
  azurerm_resource_policy_exemption

val yojson_of_azurerm_resource_policy_exemption :
  azurerm_resource_policy_exemption -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  display_name : string prop;
  exemption_category : string prop;
  expires_on : string prop;
  id : string prop;
  metadata : string prop;
  name : string prop;
  policy_assignment_id : string prop;
  policy_definition_reference_ids : string list prop;
  resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?expires_on:string prop ->
  ?id:string prop ->
  ?metadata:string prop ->
  ?policy_definition_reference_ids:string prop list ->
  ?timeouts:timeouts ->
  exemption_category:string prop ->
  name:string prop ->
  policy_assignment_id:string prop ->
  resource_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?expires_on:string prop ->
  ?id:string prop ->
  ?metadata:string prop ->
  ?policy_definition_reference_ids:string prop list ->
  ?timeouts:timeouts ->
  exemption_category:string prop ->
  name:string prop ->
  policy_assignment_id:string prop ->
  resource_id:string prop ->
  string ->
  t Tf_core.resource
