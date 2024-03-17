(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_integration_service_environment__timeouts
type azurerm_integration_service_environment

type t = private {
  access_endpoint_type : string prop;
  connector_endpoint_ip_addresses : string list prop;
  connector_outbound_ip_addresses : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  virtual_network_subnet_ids : string list prop;
  workflow_endpoint_ip_addresses : string list prop;
  workflow_outbound_ip_addresses : string list prop;
}

val azurerm_integration_service_environment :
  ?id:string prop ->
  ?sku_name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_integration_service_environment__timeouts ->
  access_endpoint_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_subnet_ids:string prop list ->
  string ->
  t
