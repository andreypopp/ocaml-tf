(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subscription_policy_assignment__identity
type azurerm_subscription_policy_assignment__non_compliance_message
type azurerm_subscription_policy_assignment__overrides__selectors
type azurerm_subscription_policy_assignment__overrides

type azurerm_subscription_policy_assignment__resource_selectors__selectors

type azurerm_subscription_policy_assignment__resource_selectors
type azurerm_subscription_policy_assignment__timeouts
type azurerm_subscription_policy_assignment

val azurerm_subscription_policy_assignment :
  ?description:string ->
  ?display_name:string ->
  ?enforce:bool ->
  ?id:string ->
  ?location:string ->
  ?metadata:string ->
  ?not_scopes:string list ->
  ?parameters:string ->
  ?timeouts:azurerm_subscription_policy_assignment__timeouts ->
  name:string ->
  policy_definition_id:string ->
  subscription_id:string ->
  identity:azurerm_subscription_policy_assignment__identity list ->
  non_compliance_message:
    azurerm_subscription_policy_assignment__non_compliance_message
    list ->
  overrides:azurerm_subscription_policy_assignment__overrides list ->
  resource_selectors:
    azurerm_subscription_policy_assignment__resource_selectors list ->
  string ->
  unit
