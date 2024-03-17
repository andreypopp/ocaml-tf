(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_deployment_script_azure_power_shell__container

type azurerm_resource_deployment_script_azure_power_shell__environment_variable

type azurerm_resource_deployment_script_azure_power_shell__identity

type azurerm_resource_deployment_script_azure_power_shell__storage_account

type azurerm_resource_deployment_script_azure_power_shell__timeouts
type azurerm_resource_deployment_script_azure_power_shell

val azurerm_resource_deployment_script_azure_power_shell :
  ?cleanup_preference:string ->
  ?command_line:string ->
  ?force_update_tag:string ->
  ?id:string ->
  ?primary_script_uri:string ->
  ?script_content:string ->
  ?supporting_script_uris:string list ->
  ?tags:(string * string) list ->
  ?timeout:string ->
  ?timeouts:
    azurerm_resource_deployment_script_azure_power_shell__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  retention_interval:string ->
  version:string ->
  container:
    azurerm_resource_deployment_script_azure_power_shell__container
    list ->
  environment_variable:
    azurerm_resource_deployment_script_azure_power_shell__environment_variable
    list ->
  identity:
    azurerm_resource_deployment_script_azure_power_shell__identity
    list ->
  storage_account:
    azurerm_resource_deployment_script_azure_power_shell__storage_account
    list ->
  string ->
  unit
