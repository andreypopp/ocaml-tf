(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_backend__credentials__authorization
type azurerm_api_management_backend__credentials
type azurerm_api_management_backend__proxy

type azurerm_api_management_backend__service_fabric_cluster__server_x509_name

type azurerm_api_management_backend__service_fabric_cluster
type azurerm_api_management_backend__timeouts
type azurerm_api_management_backend__tls
type azurerm_api_management_backend

type t = private {
  api_management_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  protocol : string prop;
  resource_group_name : string prop;
  resource_id : string prop;
  title : string prop;
  url : string prop;
}

val azurerm_api_management_backend :
  ?description:string prop ->
  ?id:string prop ->
  ?resource_id:string prop ->
  ?title:string prop ->
  ?timeouts:azurerm_api_management_backend__timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  url:string prop ->
  credentials:azurerm_api_management_backend__credentials list ->
  proxy:azurerm_api_management_backend__proxy list ->
  service_fabric_cluster:
    azurerm_api_management_backend__service_fabric_cluster list ->
  tls:azurerm_api_management_backend__tls list ->
  string ->
  t
