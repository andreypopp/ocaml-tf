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

val azurerm_api_management_backend :
  ?description:string ->
  ?resource_id:string ->
  ?title:string ->
  ?timeouts:azurerm_api_management_backend__timeouts ->
  api_management_name:string ->
  name:string ->
  protocol:string ->
  resource_group_name:string ->
  url:string ->
  credentials:azurerm_api_management_backend__credentials list ->
  proxy:azurerm_api_management_backend__proxy list ->
  service_fabric_cluster:
    azurerm_api_management_backend__service_fabric_cluster list ->
  tls:azurerm_api_management_backend__tls list ->
  string ->
  unit
