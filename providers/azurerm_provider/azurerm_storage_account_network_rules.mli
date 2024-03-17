(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_account_network_rules__private_link_access
type azurerm_storage_account_network_rules__timeouts
type azurerm_storage_account_network_rules

val azurerm_storage_account_network_rules :
  ?bypass:string list ->
  ?id:string ->
  ?ip_rules:string list ->
  ?virtual_network_subnet_ids:string list ->
  ?timeouts:azurerm_storage_account_network_rules__timeouts ->
  default_action:string ->
  storage_account_id:string ->
  private_link_access:
    azurerm_storage_account_network_rules__private_link_access list ->
  string ->
  unit
