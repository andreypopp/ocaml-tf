(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type encryption__managed_identity

val encryption__managed_identity :
  ?use_system_assigned_identity:bool prop ->
  ?user_assigned_identity_id:string prop ->
  unit ->
  encryption__managed_identity

type encryption

val encryption :
  ?key_vault_key_identifier:string prop ->
  ?type_:string prop ->
  managed_identity:encryption__managed_identity list ->
  unit ->
  encryption

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type key_delivery_access_control

val key_delivery_access_control :
  ?default_action:string prop ->
  ?ip_allow_list:string prop list ->
  unit ->
  key_delivery_access_control

type storage_account__managed_identity

val storage_account__managed_identity :
  ?use_system_assigned_identity:bool prop ->
  ?user_assigned_identity_id:string prop ->
  unit ->
  storage_account__managed_identity

type storage_account

val storage_account :
  ?is_primary:bool prop ->
  id:string prop ->
  managed_identity:storage_account__managed_identity list ->
  unit ->
  storage_account

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_media_services_account

val azurerm_media_services_account :
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?storage_authentication_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  encryption:encryption list ->
  identity:identity list ->
  key_delivery_access_control:key_delivery_access_control list ->
  storage_account:storage_account list ->
  unit ->
  azurerm_media_services_account

val yojson_of_azurerm_media_services_account :
  azurerm_media_services_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  storage_authentication_type : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?storage_authentication_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  encryption:encryption list ->
  identity:identity list ->
  key_delivery_access_control:key_delivery_access_control list ->
  storage_account:storage_account list ->
  string ->
  t
