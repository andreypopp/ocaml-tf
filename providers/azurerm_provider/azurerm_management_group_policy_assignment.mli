(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_management_group_policy_assignment__identity

type azurerm_management_group_policy_assignment__non_compliance_message

type azurerm_management_group_policy_assignment__overrides__selectors
type azurerm_management_group_policy_assignment__overrides

type azurerm_management_group_policy_assignment__resource_selectors__selectors

type azurerm_management_group_policy_assignment__resource_selectors
type azurerm_management_group_policy_assignment__timeouts
type azurerm_management_group_policy_assignment

val azurerm_management_group_policy_assignment :
  ?description:string ->
  ?display_name:string ->
  ?enforce:bool ->
  ?id:string ->
  ?location:string ->
  ?metadata:string ->
  ?not_scopes:string list ->
  ?parameters:string ->
  ?timeouts:azurerm_management_group_policy_assignment__timeouts ->
  management_group_id:string ->
  name:string ->
  policy_definition_id:string ->
  identity:azurerm_management_group_policy_assignment__identity list ->
  non_compliance_message:
    azurerm_management_group_policy_assignment__non_compliance_message
    list ->
  overrides:
    azurerm_management_group_policy_assignment__overrides list ->
  resource_selectors:
    azurerm_management_group_policy_assignment__resource_selectors
    list ->
  string ->
  unit
