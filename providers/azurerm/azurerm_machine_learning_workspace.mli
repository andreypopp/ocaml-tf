(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption

val encryption :
  ?user_assigned_identity_id:string prop ->
  key_id:string prop ->
  key_vault_id:string prop ->
  unit ->
  encryption

type feature_store

val feature_store :
  ?computer_spark_runtime_version:string prop ->
  ?offline_connection_name:string prop ->
  ?online_connection_name:string prop ->
  unit ->
  feature_store

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type managed_network

val managed_network :
  ?isolation_mode:string prop -> unit -> managed_network

type serverless_compute

val serverless_compute :
  ?public_ip_enabled:bool prop ->
  ?subnet_id:string prop ->
  unit ->
  serverless_compute

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_machine_learning_workspace

val azurerm_machine_learning_workspace :
  ?container_registry_id:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?high_business_impact:bool prop ->
  ?id:string prop ->
  ?image_build_compute_name:string prop ->
  ?kind:string prop ->
  ?primary_user_assigned_identity:string prop ->
  ?public_access_behind_virtual_network_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku_name:string prop ->
  ?tags:(string * string prop) list ->
  ?v1_legacy_mode_enabled:bool prop ->
  ?encryption:encryption list ->
  ?feature_store:feature_store list ->
  ?managed_network:managed_network list ->
  ?serverless_compute:serverless_compute list ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  key_vault_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  identity:identity list ->
  unit ->
  azurerm_machine_learning_workspace

val yojson_of_azurerm_machine_learning_workspace :
  azurerm_machine_learning_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_insights_id : string prop;
  container_registry_id : string prop;
  description : string prop;
  discovery_url : string prop;
  friendly_name : string prop;
  high_business_impact : bool prop;
  id : string prop;
  image_build_compute_name : string prop;
  key_vault_id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  primary_user_assigned_identity : string prop;
  public_access_behind_virtual_network_enabled : bool prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
  v1_legacy_mode_enabled : bool prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?container_registry_id:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?high_business_impact:bool prop ->
  ?id:string prop ->
  ?image_build_compute_name:string prop ->
  ?kind:string prop ->
  ?primary_user_assigned_identity:string prop ->
  ?public_access_behind_virtual_network_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku_name:string prop ->
  ?tags:(string * string prop) list ->
  ?v1_legacy_mode_enabled:bool prop ->
  ?encryption:encryption list ->
  ?feature_store:feature_store list ->
  ?managed_network:managed_network list ->
  ?serverless_compute:serverless_compute list ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  key_vault_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  identity:identity list ->
  string ->
  t

val make :
  ?container_registry_id:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?high_business_impact:bool prop ->
  ?id:string prop ->
  ?image_build_compute_name:string prop ->
  ?kind:string prop ->
  ?primary_user_assigned_identity:string prop ->
  ?public_access_behind_virtual_network_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku_name:string prop ->
  ?tags:(string * string prop) list ->
  ?v1_legacy_mode_enabled:bool prop ->
  ?encryption:encryption list ->
  ?feature_store:feature_store list ->
  ?managed_network:managed_network list ->
  ?serverless_compute:serverless_compute list ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  key_vault_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  identity:identity list ->
  string ->
  t Tf_core.resource
