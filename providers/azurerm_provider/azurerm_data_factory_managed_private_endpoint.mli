(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_managed_private_endpoint__timeouts
type azurerm_data_factory_managed_private_endpoint

val azurerm_data_factory_managed_private_endpoint :
  ?subresource_name:string ->
  ?timeouts:azurerm_data_factory_managed_private_endpoint__timeouts ->
  data_factory_id:string ->
  name:string ->
  target_resource_id:string ->
  string ->
  unit
