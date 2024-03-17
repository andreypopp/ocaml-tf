(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory__github_configuration
type azurerm_data_factory__global_parameter
type azurerm_data_factory__identity
type azurerm_data_factory__timeouts
type azurerm_data_factory__vsts_configuration
type azurerm_data_factory

val azurerm_data_factory :
  ?customer_managed_key_id:string ->
  ?customer_managed_key_identity_id:string ->
  ?managed_virtual_network_enabled:bool ->
  ?public_network_enabled:bool ->
  ?purview_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_data_factory__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  github_configuration:
    azurerm_data_factory__github_configuration list ->
  global_parameter:azurerm_data_factory__global_parameter list ->
  identity:azurerm_data_factory__identity list ->
  vsts_configuration:azurerm_data_factory__vsts_configuration list ->
  string ->
  unit
