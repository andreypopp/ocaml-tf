(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_deployment_script_azure_cli__container

type azurerm_resource_deployment_script_azure_cli__environment_variable

type azurerm_resource_deployment_script_azure_cli__identity
type azurerm_resource_deployment_script_azure_cli__storage_account
type azurerm_resource_deployment_script_azure_cli__timeouts
type azurerm_resource_deployment_script_azure_cli

val azurerm_resource_deployment_script_azure_cli :
  ?cleanup_preference:string prop ->
  ?command_line:string prop ->
  ?force_update_tag:string prop ->
  ?id:string prop ->
  ?primary_script_uri:string prop ->
  ?script_content:string prop ->
  ?supporting_script_uris:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeout:string prop ->
  ?timeouts:azurerm_resource_deployment_script_azure_cli__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  retention_interval:string prop ->
  version:string prop ->
  container:
    azurerm_resource_deployment_script_azure_cli__container list ->
  environment_variable:
    azurerm_resource_deployment_script_azure_cli__environment_variable
    list ->
  identity:
    azurerm_resource_deployment_script_azure_cli__identity list ->
  storage_account:
    azurerm_resource_deployment_script_azure_cli__storage_account
    list ->
  string ->
  unit
