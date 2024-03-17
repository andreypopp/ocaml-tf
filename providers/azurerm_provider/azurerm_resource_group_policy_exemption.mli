(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_group_policy_exemption__timeouts
type azurerm_resource_group_policy_exemption

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
  resource_group_id : string prop;
}

val azurerm_resource_group_policy_exemption :
  ?description:string prop ->
  ?display_name:string prop ->
  ?expires_on:string prop ->
  ?id:string prop ->
  ?metadata:string prop ->
  ?policy_definition_reference_ids:string prop list ->
  ?timeouts:azurerm_resource_group_policy_exemption__timeouts ->
  exemption_category:string prop ->
  name:string prop ->
  policy_assignment_id:string prop ->
  resource_group_id:string prop ->
  string ->
  t
