(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_linked_service_kusto

val azurerm_data_factory_linked_service_kusto :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?service_principal_id:string prop ->
  ?service_principal_key:string prop ->
  ?tenant:string prop ->
  ?use_managed_identity:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  kusto_database_name:string prop ->
  kusto_endpoint:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_linked_service_kusto

val yojson_of_azurerm_data_factory_linked_service_kusto :
  azurerm_data_factory_linked_service_kusto -> json

(** RESOURCE REGISTRATION *)

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  kusto_database_name : string prop;
  kusto_endpoint : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  service_principal_id : string prop;
  service_principal_key : string prop;
  tenant : string prop;
  use_managed_identity : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?service_principal_id:string prop ->
  ?service_principal_key:string prop ->
  ?tenant:string prop ->
  ?use_managed_identity:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  kusto_database_name:string prop ->
  kusto_endpoint:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?service_principal_id:string prop ->
  ?service_principal_key:string prop ->
  ?tenant:string prop ->
  ?use_managed_identity:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  kusto_database_name:string prop ->
  kusto_endpoint:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
