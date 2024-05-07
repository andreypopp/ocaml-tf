(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type non_compliance_message

val non_compliance_message :
  ?policy_definition_reference_id:string prop ->
  content:string prop ->
  unit ->
  non_compliance_message

type overrides__selectors

val overrides__selectors :
  ?in_:string prop list ->
  ?not_in:string prop list ->
  unit ->
  overrides__selectors

type overrides

val overrides :
  ?selectors:overrides__selectors list ->
  value:string prop ->
  unit ->
  overrides

type resource_selectors__selectors

val resource_selectors__selectors :
  ?in_:string prop list ->
  ?not_in:string prop list ->
  kind:string prop ->
  unit ->
  resource_selectors__selectors

type resource_selectors

val resource_selectors :
  ?name:string prop ->
  selectors:resource_selectors__selectors list ->
  unit ->
  resource_selectors

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_subscription_policy_assignment

val azurerm_subscription_policy_assignment :
  ?description:string prop ->
  ?display_name:string prop ->
  ?enforce:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?metadata:string prop ->
  ?not_scopes:string prop list ->
  ?parameters:string prop ->
  ?identity:identity list ->
  ?non_compliance_message:non_compliance_message list ->
  ?overrides:overrides list ->
  ?resource_selectors:resource_selectors list ->
  ?timeouts:timeouts ->
  name:string prop ->
  policy_definition_id:string prop ->
  subscription_id:string prop ->
  unit ->
  azurerm_subscription_policy_assignment

val yojson_of_azurerm_subscription_policy_assignment :
  azurerm_subscription_policy_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  enforce : bool prop;
  id : string prop;
  location : string prop;
  metadata : string prop;
  name : string prop;
  not_scopes : string list prop;
  parameters : string prop;
  policy_definition_id : string prop;
  subscription_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?enforce:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?metadata:string prop ->
  ?not_scopes:string prop list ->
  ?parameters:string prop ->
  ?identity:identity list ->
  ?non_compliance_message:non_compliance_message list ->
  ?overrides:overrides list ->
  ?resource_selectors:resource_selectors list ->
  ?timeouts:timeouts ->
  name:string prop ->
  policy_definition_id:string prop ->
  subscription_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?enforce:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?metadata:string prop ->
  ?not_scopes:string prop list ->
  ?parameters:string prop ->
  ?identity:identity list ->
  ?non_compliance_message:non_compliance_message list ->
  ?overrides:overrides list ->
  ?resource_selectors:resource_selectors list ->
  ?timeouts:timeouts ->
  name:string prop ->
  policy_definition_id:string prop ->
  subscription_id:string prop ->
  string ->
  t Tf_core.resource
