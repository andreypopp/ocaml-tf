(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_integration_runtime_self_hosted__rbac_authorization

type azurerm_data_factory_integration_runtime_self_hosted__timeouts
type azurerm_data_factory_integration_runtime_self_hosted

val azurerm_data_factory_integration_runtime_self_hosted :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_data_factory_integration_runtime_self_hosted__timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  rbac_authorization:
    azurerm_data_factory_integration_runtime_self_hosted__rbac_authorization
    list ->
  string ->
  unit
