(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_active_directory_domain_service__initial_replica_set
type azurerm_active_directory_domain_service__notifications
type azurerm_active_directory_domain_service__secure_ldap
type azurerm_active_directory_domain_service__security
type azurerm_active_directory_domain_service__timeouts
type azurerm_active_directory_domain_service

val azurerm_active_directory_domain_service :
  ?domain_configuration_type:string ->
  ?filtered_sync_enabled:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_active_directory_domain_service__timeouts ->
  domain_name:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  initial_replica_set:
    azurerm_active_directory_domain_service__initial_replica_set list ->
  notifications:
    azurerm_active_directory_domain_service__notifications list ->
  secure_ldap:
    azurerm_active_directory_domain_service__secure_ldap list ->
  security:azurerm_active_directory_domain_service__security list ->
  string ->
  unit
