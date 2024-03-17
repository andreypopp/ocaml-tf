(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_policy_set_definition__policy_definition_group
type azurerm_policy_set_definition__policy_definition_reference
type azurerm_policy_set_definition__timeouts
type azurerm_policy_set_definition

val azurerm_policy_set_definition :
  ?description:string prop ->
  ?id:string prop ->
  ?management_group_id:string prop ->
  ?metadata:string prop ->
  ?parameters:string prop ->
  ?timeouts:azurerm_policy_set_definition__timeouts ->
  display_name:string prop ->
  name:string prop ->
  policy_type:string prop ->
  policy_definition_group:
    azurerm_policy_set_definition__policy_definition_group list ->
  policy_definition_reference:
    azurerm_policy_set_definition__policy_definition_reference list ->
  string ->
  unit
