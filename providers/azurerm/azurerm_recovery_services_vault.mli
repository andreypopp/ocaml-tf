(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_recovery_services_vault__encryption
type azurerm_recovery_services_vault__identity
type azurerm_recovery_services_vault__monitoring
type azurerm_recovery_services_vault__timeouts
type azurerm_recovery_services_vault

type t = private {
  classic_vmware_replication_enabled : bool prop;
  cross_region_restore_enabled : bool prop;
  id : string prop;
  immutability : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  soft_delete_enabled : bool prop;
  storage_mode_type : string prop;
  tags : (string * string) list prop;
}

val azurerm_recovery_services_vault :
  ?classic_vmware_replication_enabled:bool prop ->
  ?cross_region_restore_enabled:bool prop ->
  ?id:string prop ->
  ?immutability:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?soft_delete_enabled:bool prop ->
  ?storage_mode_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_recovery_services_vault__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  encryption:azurerm_recovery_services_vault__encryption list ->
  identity:azurerm_recovery_services_vault__identity list ->
  monitoring:azurerm_recovery_services_vault__monitoring list ->
  string ->
  t
