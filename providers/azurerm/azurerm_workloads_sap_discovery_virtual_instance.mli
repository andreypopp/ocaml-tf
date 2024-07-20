(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_workloads_sap_discovery_virtual_instance

val azurerm_workloads_sap_discovery_virtual_instance :
  ?id:string prop ->
  ?managed_resource_group_name:string prop ->
  ?managed_storage_account_name:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  central_server_virtual_machine_id:string prop ->
  environment:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sap_product:string prop ->
  unit ->
  azurerm_workloads_sap_discovery_virtual_instance

val yojson_of_azurerm_workloads_sap_discovery_virtual_instance :
  azurerm_workloads_sap_discovery_virtual_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  central_server_virtual_machine_id : string prop;
  environment : string prop;
  id : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  managed_storage_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  sap_product : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?managed_resource_group_name:string prop ->
  ?managed_storage_account_name:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  central_server_virtual_machine_id:string prop ->
  environment:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sap_product:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?managed_resource_group_name:string prop ->
  ?managed_storage_account_name:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  central_server_virtual_machine_id:string prop ->
  environment:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sap_product:string prop ->
  string ->
  t Tf_core.resource
