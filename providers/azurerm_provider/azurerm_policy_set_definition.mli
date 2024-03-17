(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_policy_set_definition__policy_definition_group
type azurerm_policy_set_definition__policy_definition_reference
type azurerm_policy_set_definition__timeouts
type azurerm_policy_set_definition

val azurerm_policy_set_definition :
  ?description:string ->
  ?id:string ->
  ?management_group_id:string ->
  ?metadata:string ->
  ?parameters:string ->
  ?timeouts:azurerm_policy_set_definition__timeouts ->
  display_name:string ->
  name:string ->
  policy_type:string ->
  policy_definition_group:
    azurerm_policy_set_definition__policy_definition_group list ->
  policy_definition_reference:
    azurerm_policy_set_definition__policy_definition_reference list ->
  string ->
  unit
