(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_services_account__encryption__managed_identity
type azurerm_media_services_account__encryption
type azurerm_media_services_account__identity
type azurerm_media_services_account__key_delivery_access_control
type azurerm_media_services_account__storage_account__managed_identity
type azurerm_media_services_account__storage_account
type azurerm_media_services_account__timeouts
type azurerm_media_services_account

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  storage_authentication_type : string prop;
  tags : (string * string) list prop;
}

val azurerm_media_services_account :
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?storage_authentication_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_media_services_account__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  encryption:azurerm_media_services_account__encryption list ->
  identity:azurerm_media_services_account__identity list ->
  key_delivery_access_control:
    azurerm_media_services_account__key_delivery_access_control list ->
  storage_account:
    azurerm_media_services_account__storage_account list ->
  string ->
  t
