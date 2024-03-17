(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_nginx_deployment__frontend_private
type azurerm_nginx_deployment__frontend_public
type azurerm_nginx_deployment__identity
type azurerm_nginx_deployment__logging_storage_account
type azurerm_nginx_deployment__network_interface
type azurerm_nginx_deployment__timeouts
type azurerm_nginx_deployment

val azurerm_nginx_deployment :
  ?automatic_upgrade_channel:string ->
  ?capacity:float ->
  ?diagnose_support_enabled:bool ->
  ?email:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_nginx_deployment__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  frontend_private:azurerm_nginx_deployment__frontend_private list ->
  frontend_public:azurerm_nginx_deployment__frontend_public list ->
  identity:azurerm_nginx_deployment__identity list ->
  logging_storage_account:
    azurerm_nginx_deployment__logging_storage_account list ->
  network_interface:azurerm_nginx_deployment__network_interface list ->
  string ->
  unit
