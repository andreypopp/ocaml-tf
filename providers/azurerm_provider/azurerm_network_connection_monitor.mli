(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_connection_monitor__endpoint__filter__item
type azurerm_network_connection_monitor__endpoint__filter
type azurerm_network_connection_monitor__endpoint

type azurerm_network_connection_monitor__test_configuration__http_configuration__request_header

type azurerm_network_connection_monitor__test_configuration__http_configuration

type azurerm_network_connection_monitor__test_configuration__icmp_configuration

type azurerm_network_connection_monitor__test_configuration__success_threshold

type azurerm_network_connection_monitor__test_configuration__tcp_configuration

type azurerm_network_connection_monitor__test_configuration
type azurerm_network_connection_monitor__test_group
type azurerm_network_connection_monitor__timeouts
type azurerm_network_connection_monitor

val azurerm_network_connection_monitor :
  ?notes:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_network_connection_monitor__timeouts ->
  location:string ->
  name:string ->
  network_watcher_id:string ->
  endpoint:azurerm_network_connection_monitor__endpoint list ->
  test_configuration:
    azurerm_network_connection_monitor__test_configuration list ->
  test_group:azurerm_network_connection_monitor__test_group list ->
  string ->
  unit
