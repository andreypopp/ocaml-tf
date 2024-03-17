(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_account_network_rules__private_link_access
type azurerm_storage_account_network_rules__timeouts
type azurerm_storage_account_network_rules

type t = private {
  bypass : string list prop;
  default_action : string prop;
  id : string prop;
  ip_rules : string list prop;
  storage_account_id : string prop;
  virtual_network_subnet_ids : string list prop;
}

val azurerm_storage_account_network_rules :
  ?bypass:string prop list ->
  ?id:string prop ->
  ?ip_rules:string prop list ->
  ?virtual_network_subnet_ids:string prop list ->
  ?timeouts:azurerm_storage_account_network_rules__timeouts ->
  default_action:string prop ->
  storage_account_id:string prop ->
  private_link_access:
    azurerm_storage_account_network_rules__private_link_access list ->
  string ->
  t
