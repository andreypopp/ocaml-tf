(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_nginx_deployment__frontend_private
type azurerm_nginx_deployment__frontend_public
type azurerm_nginx_deployment__identity
type azurerm_nginx_deployment__logging_storage_account
type azurerm_nginx_deployment__network_interface
type azurerm_nginx_deployment__timeouts
type azurerm_nginx_deployment

type t = private {
  automatic_upgrade_channel : string prop;
  capacity : float prop;
  diagnose_support_enabled : bool prop;
  email : string prop;
  id : string prop;
  ip_address : string prop;
  location : string prop;
  managed_resource_group : string prop;
  name : string prop;
  nginx_version : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

val azurerm_nginx_deployment :
  ?automatic_upgrade_channel:string prop ->
  ?capacity:float prop ->
  ?diagnose_support_enabled:bool prop ->
  ?email:string prop ->
  ?id:string prop ->
  ?managed_resource_group:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_nginx_deployment__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  frontend_private:azurerm_nginx_deployment__frontend_private list ->
  frontend_public:azurerm_nginx_deployment__frontend_public list ->
  identity:azurerm_nginx_deployment__identity list ->
  logging_storage_account:
    azurerm_nginx_deployment__logging_storage_account list ->
  network_interface:azurerm_nginx_deployment__network_interface list ->
  string ->
  t
