(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_integration_runtime_self_hosted__rbac_authorization

type azurerm_data_factory_integration_runtime_self_hosted__timeouts
type azurerm_data_factory_integration_runtime_self_hosted

type t = private {
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  primary_authorization_key : string prop;
  secondary_authorization_key : string prop;
}

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
  t
