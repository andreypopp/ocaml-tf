(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_batch_account__identity
type azurerm_batch_account__key_vault_reference
type azurerm_batch_account__network_profile__account_access__ip_rule
type azurerm_batch_account__network_profile__account_access

type azurerm_batch_account__network_profile__node_management_access__ip_rule

type azurerm_batch_account__network_profile__node_management_access
type azurerm_batch_account__network_profile
type azurerm_batch_account__timeouts

type azurerm_batch_account__encryption = {
  key_vault_key_id : string;  (** key_vault_key_id *)
}
[@@deriving yojson_of]

type azurerm_batch_account

val azurerm_batch_account :
  ?encryption:azurerm_batch_account__encryption list ->
  ?pool_allocation_mode:string ->
  ?public_network_access_enabled:bool ->
  ?storage_account_authentication_mode:string ->
  ?storage_account_id:string ->
  ?storage_account_node_identity:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_batch_account__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_batch_account__identity list ->
  key_vault_reference:azurerm_batch_account__key_vault_reference list ->
  network_profile:azurerm_batch_account__network_profile list ->
  string ->
  unit
