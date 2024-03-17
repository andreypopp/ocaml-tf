(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory__github_configuration
type azurerm_data_factory__global_parameter
type azurerm_data_factory__identity
type azurerm_data_factory__timeouts
type azurerm_data_factory__vsts_configuration
type azurerm_data_factory

val azurerm_data_factory :
  ?customer_managed_key_id:string prop ->
  ?customer_managed_key_identity_id:string prop ->
  ?id:string prop ->
  ?managed_virtual_network_enabled:bool prop ->
  ?public_network_enabled:bool prop ->
  ?purview_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_data_factory__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  github_configuration:
    azurerm_data_factory__github_configuration list ->
  global_parameter:azurerm_data_factory__global_parameter list ->
  identity:azurerm_data_factory__identity list ->
  vsts_configuration:azurerm_data_factory__vsts_configuration list ->
  string ->
  unit
