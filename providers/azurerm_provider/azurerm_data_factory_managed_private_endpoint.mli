(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_managed_private_endpoint__timeouts
type azurerm_data_factory_managed_private_endpoint

val azurerm_data_factory_managed_private_endpoint :
  ?fqdns:string prop list ->
  ?id:string prop ->
  ?subresource_name:string prop ->
  ?timeouts:azurerm_data_factory_managed_private_endpoint__timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  target_resource_id:string prop ->
  string ->
  unit
