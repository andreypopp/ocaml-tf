(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_recovery_services_vault__encryption
type azurerm_recovery_services_vault__identity
type azurerm_recovery_services_vault__monitoring
type azurerm_recovery_services_vault__timeouts
type azurerm_recovery_services_vault

val azurerm_recovery_services_vault :
  ?classic_vmware_replication_enabled:bool ->
  ?cross_region_restore_enabled:bool ->
  ?id:string ->
  ?immutability:string ->
  ?public_network_access_enabled:bool ->
  ?soft_delete_enabled:bool ->
  ?storage_mode_type:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_recovery_services_vault__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  encryption:azurerm_recovery_services_vault__encryption list ->
  identity:azurerm_recovery_services_vault__identity list ->
  monitoring:azurerm_recovery_services_vault__monitoring list ->
  string ->
  unit
