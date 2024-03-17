(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_active_directory_domain_service__initial_replica_set
type azurerm_active_directory_domain_service__notifications
type azurerm_active_directory_domain_service__secure_ldap
type azurerm_active_directory_domain_service__security
type azurerm_active_directory_domain_service__timeouts
type azurerm_active_directory_domain_service

val azurerm_active_directory_domain_service :
  ?domain_configuration_type:string prop ->
  ?filtered_sync_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_active_directory_domain_service__timeouts ->
  domain_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  initial_replica_set:
    azurerm_active_directory_domain_service__initial_replica_set list ->
  notifications:
    azurerm_active_directory_domain_service__notifications list ->
  secure_ldap:
    azurerm_active_directory_domain_service__secure_ldap list ->
  security:azurerm_active_directory_domain_service__security list ->
  string ->
  unit
