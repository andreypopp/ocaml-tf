(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subnet_service_endpoint_storage_policy__definition
type azurerm_subnet_service_endpoint_storage_policy__timeouts
type azurerm_subnet_service_endpoint_storage_policy

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_subnet_service_endpoint_storage_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_subnet_service_endpoint_storage_policy__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  definition:
    azurerm_subnet_service_endpoint_storage_policy__definition list ->
  string ->
  t
