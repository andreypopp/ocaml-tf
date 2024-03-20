(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type key_vault_connection_string

val key_vault_connection_string :
  linked_service_name:string prop ->
  secret_name:string prop ->
  unit ->
  key_vault_connection_string

type key_vault_password

val key_vault_password :
  linked_service_name:string prop ->
  secret_name:string prop ->
  unit ->
  key_vault_password

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_linked_service_azure_sql_database

val azurerm_data_factory_linked_service_azure_sql_database :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?service_principal_id:string prop ->
  ?service_principal_key:string prop ->
  ?tenant_id:string prop ->
  ?use_managed_identity:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  key_vault_connection_string:key_vault_connection_string list ->
  key_vault_password:key_vault_password list ->
  unit ->
  azurerm_data_factory_linked_service_azure_sql_database

val yojson_of_azurerm_data_factory_linked_service_azure_sql_database :
  azurerm_data_factory_linked_service_azure_sql_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  connection_string : string prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  service_principal_id : string prop;
  service_principal_key : string prop;
  tenant_id : string prop;
  use_managed_identity : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?service_principal_id:string prop ->
  ?service_principal_key:string prop ->
  ?tenant_id:string prop ->
  ?use_managed_identity:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  key_vault_connection_string:key_vault_connection_string list ->
  key_vault_password:key_vault_password list ->
  string ->
  t

val make :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?connection_string:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?parameters:(string * string prop) list ->
  ?service_principal_id:string prop ->
  ?service_principal_key:string prop ->
  ?tenant_id:string prop ->
  ?use_managed_identity:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  key_vault_connection_string:key_vault_connection_string list ->
  key_vault_password:key_vault_password list ->
  string ->
  t Tf_core.resource
