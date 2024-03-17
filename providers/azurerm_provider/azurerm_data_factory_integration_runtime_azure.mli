(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_integration_runtime_azure__timeouts
type azurerm_data_factory_integration_runtime_azure

val azurerm_data_factory_integration_runtime_azure :
  ?compute_type:string ->
  ?core_count:float ->
  ?description:string ->
  ?time_to_live_min:float ->
  ?virtual_network_enabled:bool ->
  ?timeouts:azurerm_data_factory_integration_runtime_azure__timeouts ->
  data_factory_id:string ->
  location:string ->
  name:string ->
  string ->
  unit
