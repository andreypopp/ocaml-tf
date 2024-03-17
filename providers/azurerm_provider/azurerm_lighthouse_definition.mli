(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lighthouse_definition__authorization

type azurerm_lighthouse_definition__eligible_authorization__just_in_time_access_policy__approver

type azurerm_lighthouse_definition__eligible_authorization__just_in_time_access_policy

type azurerm_lighthouse_definition__eligible_authorization
type azurerm_lighthouse_definition__plan
type azurerm_lighthouse_definition__timeouts
type azurerm_lighthouse_definition

val azurerm_lighthouse_definition :
  ?description:string prop ->
  ?id:string prop ->
  ?lighthouse_definition_id:string prop ->
  ?timeouts:azurerm_lighthouse_definition__timeouts ->
  managing_tenant_id:string prop ->
  name:string prop ->
  scope:string prop ->
  authorization:azurerm_lighthouse_definition__authorization list ->
  eligible_authorization:
    azurerm_lighthouse_definition__eligible_authorization list ->
  plan:azurerm_lighthouse_definition__plan list ->
  string ->
  unit
