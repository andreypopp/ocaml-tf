(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption = {
  key_vault_key_id : string prop;  (** key_vault_key_id *)
}

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type key_vault_reference

val key_vault_reference :
  id:string prop -> url:string prop -> unit -> key_vault_reference

type network_profile__account_access__ip_rule

val network_profile__account_access__ip_rule :
  ?action:string prop ->
  ip_range:string prop ->
  unit ->
  network_profile__account_access__ip_rule

type network_profile__account_access

val network_profile__account_access :
  ?default_action:string prop ->
  ?ip_rule:network_profile__account_access__ip_rule list ->
  unit ->
  network_profile__account_access

type network_profile__node_management_access__ip_rule

val network_profile__node_management_access__ip_rule :
  ?action:string prop ->
  ip_range:string prop ->
  unit ->
  network_profile__node_management_access__ip_rule

type network_profile__node_management_access

val network_profile__node_management_access :
  ?default_action:string prop ->
  ?ip_rule:network_profile__node_management_access__ip_rule list ->
  unit ->
  network_profile__node_management_access

type network_profile

val network_profile :
  ?account_access:network_profile__account_access list ->
  ?node_management_access:
    network_profile__node_management_access list ->
  unit ->
  network_profile

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_batch_account

val azurerm_batch_account :
  ?allowed_authentication_modes:string prop list ->
  ?encryption:encryption list ->
  ?id:string prop ->
  ?pool_allocation_mode:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?storage_account_authentication_mode:string prop ->
  ?storage_account_id:string prop ->
  ?storage_account_node_identity:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?key_vault_reference:key_vault_reference list ->
  ?network_profile:network_profile list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_batch_account

val yojson_of_azurerm_batch_account : azurerm_batch_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_endpoint : string prop;
  allowed_authentication_modes : string list prop;
  encryption : encryption list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  pool_allocation_mode : string prop;
  primary_access_key : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  storage_account_authentication_mode : string prop;
  storage_account_id : string prop;
  storage_account_node_identity : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_authentication_modes:string prop list ->
  ?encryption:encryption list ->
  ?id:string prop ->
  ?pool_allocation_mode:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?storage_account_authentication_mode:string prop ->
  ?storage_account_id:string prop ->
  ?storage_account_node_identity:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?key_vault_reference:key_vault_reference list ->
  ?network_profile:network_profile list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?allowed_authentication_modes:string prop list ->
  ?encryption:encryption list ->
  ?id:string prop ->
  ?pool_allocation_mode:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?storage_account_authentication_mode:string prop ->
  ?storage_account_id:string prop ->
  ?storage_account_node_identity:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?key_vault_reference:key_vault_reference list ->
  ?network_profile:network_profile list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
