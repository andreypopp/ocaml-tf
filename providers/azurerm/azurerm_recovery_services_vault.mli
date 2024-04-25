(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption

val encryption :
  ?use_system_assigned_identity:bool prop ->
  ?user_assigned_identity_id:string prop ->
  infrastructure_encryption_enabled:bool prop ->
  key_id:string prop ->
  unit ->
  encryption

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type monitoring

val monitoring :
  ?alerts_for_all_job_failures_enabled:bool prop ->
  ?alerts_for_critical_operation_failures_enabled:bool prop ->
  unit ->
  monitoring

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_recovery_services_vault

val azurerm_recovery_services_vault :
  ?classic_vmware_replication_enabled:bool prop ->
  ?cross_region_restore_enabled:bool prop ->
  ?id:string prop ->
  ?immutability:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?soft_delete_enabled:bool prop ->
  ?storage_mode_type:string prop ->
  ?tags:(string * string prop) list ->
  ?encryption:encryption list ->
  ?identity:identity list ->
  ?monitoring:monitoring list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  unit ->
  azurerm_recovery_services_vault

val yojson_of_azurerm_recovery_services_vault :
  azurerm_recovery_services_vault -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?classic_vmware_replication_enabled:bool prop ->
  ?cross_region_restore_enabled:bool prop ->
  ?id:string prop ->
  ?immutability:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?soft_delete_enabled:bool prop ->
  ?storage_mode_type:string prop ->
  ?tags:(string * string prop) list ->
  ?encryption:encryption list ->
  ?identity:identity list ->
  ?monitoring:monitoring list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t

val make :
  ?classic_vmware_replication_enabled:bool prop ->
  ?cross_region_restore_enabled:bool prop ->
  ?id:string prop ->
  ?immutability:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?soft_delete_enabled:bool prop ->
  ?storage_mode_type:string prop ->
  ?tags:(string * string prop) list ->
  ?encryption:encryption list ->
  ?identity:identity list ->
  ?monitoring:monitoring list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t Tf_core.resource
