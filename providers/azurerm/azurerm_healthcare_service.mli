(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication_configuration

val authentication_configuration :
  ?audience:string prop ->
  ?authority:string prop ->
  ?smart_proxy_enabled:bool prop ->
  unit ->
  authentication_configuration

type cors_configuration

val cors_configuration :
  ?allow_credentials:bool prop ->
  ?allowed_headers:string prop list ->
  ?allowed_methods:string prop list ->
  ?allowed_origins:string prop list ->
  ?max_age_in_seconds:float prop ->
  unit ->
  cors_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_healthcare_service

val azurerm_healthcare_service :
  ?access_policy_object_ids:string prop list ->
  ?cosmosdb_key_vault_key_versionless_id:string prop ->
  ?cosmosdb_throughput:float prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?authentication_configuration:authentication_configuration list ->
  ?cors_configuration:cors_configuration list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_healthcare_service

val yojson_of_azurerm_healthcare_service :
  azurerm_healthcare_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_policy_object_ids : string list prop;
  cosmosdb_key_vault_key_versionless_id : string prop;
  cosmosdb_throughput : float prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_policy_object_ids:string prop list ->
  ?cosmosdb_key_vault_key_versionless_id:string prop ->
  ?cosmosdb_throughput:float prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?authentication_configuration:authentication_configuration list ->
  ?cors_configuration:cors_configuration list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?access_policy_object_ids:string prop list ->
  ?cosmosdb_key_vault_key_versionless_id:string prop ->
  ?cosmosdb_throughput:float prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?authentication_configuration:authentication_configuration list ->
  ?cors_configuration:cors_configuration list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
