(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_group_policy_assignment__identity
type azurerm_resource_group_policy_assignment__non_compliance_message
type azurerm_resource_group_policy_assignment__overrides__selectors
type azurerm_resource_group_policy_assignment__overrides

type azurerm_resource_group_policy_assignment__resource_selectors__selectors

type azurerm_resource_group_policy_assignment__resource_selectors
type azurerm_resource_group_policy_assignment__timeouts
type azurerm_resource_group_policy_assignment

val azurerm_resource_group_policy_assignment :
  ?description:string prop ->
  ?display_name:string prop ->
  ?enforce:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?metadata:string prop ->
  ?not_scopes:string prop list ->
  ?parameters:string prop ->
  ?timeouts:azurerm_resource_group_policy_assignment__timeouts ->
  name:string prop ->
  policy_definition_id:string prop ->
  resource_group_id:string prop ->
  identity:azurerm_resource_group_policy_assignment__identity list ->
  non_compliance_message:
    azurerm_resource_group_policy_assignment__non_compliance_message
    list ->
  overrides:azurerm_resource_group_policy_assignment__overrides list ->
  resource_selectors:
    azurerm_resource_group_policy_assignment__resource_selectors list ->
  string ->
  unit
