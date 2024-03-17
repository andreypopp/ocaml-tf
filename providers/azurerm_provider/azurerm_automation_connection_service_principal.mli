(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_connection_service_principal__timeouts
type azurerm_automation_connection_service_principal

val azurerm_automation_connection_service_principal :
  ?description:string ->
  ?id:string ->
  ?timeouts:azurerm_automation_connection_service_principal__timeouts ->
  application_id:string ->
  automation_account_name:string ->
  certificate_thumbprint:string ->
  name:string ->
  resource_group_name:string ->
  subscription_id:string ->
  tenant_id:string ->
  string ->
  unit
