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
  ?description:string prop ->
  ?display_name:string prop ->
  ?enforce:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?metadata:string prop ->
  ?not_scopes:string prop list ->
  ?parameters:string prop ->
  ?timeouts:azurerm_management_group_policy_assignment__timeouts ->
  management_group_id:string prop ->
  name:string prop ->
  policy_definition_id:string prop ->
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
