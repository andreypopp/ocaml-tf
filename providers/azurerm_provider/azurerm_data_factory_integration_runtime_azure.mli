(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_integration_runtime_azure__timeouts
type azurerm_data_factory_integration_runtime_azure

val azurerm_data_factory_integration_runtime_azure :
  ?cleanup_enabled:bool prop ->
  ?compute_type:string prop ->
  ?core_count:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?time_to_live_min:float prop ->
  ?virtual_network_enabled:bool prop ->
  ?timeouts:azurerm_data_factory_integration_runtime_azure__timeouts ->
  data_factory_id:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  unit
