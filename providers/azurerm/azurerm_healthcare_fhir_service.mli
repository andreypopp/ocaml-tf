(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication

val authentication :
  ?smart_proxy_enabled:bool prop ->
  audience:string prop ->
  authority:string prop ->
  unit ->
  authentication

type cors

val cors :
  ?credentials_allowed:bool prop ->
  ?max_age_in_seconds:float prop ->
  allowed_headers:string prop list ->
  allowed_methods:string prop list ->
  allowed_origins:string prop list ->
  unit ->
  cors

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type oci_artifact

val oci_artifact :
  ?digest:string prop ->
  ?image_name:string prop ->
  login_server:string prop ->
  unit ->
  oci_artifact

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_healthcare_fhir_service

val azurerm_healthcare_fhir_service :
  ?access_policy_object_ids:string prop list ->
  ?configuration_export_storage_account_name:string prop ->
  ?container_registry_login_server_url:string prop list ->
  ?id:string prop ->
  ?kind:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  workspace_id:string prop ->
  authentication:authentication list ->
  cors:cors list ->
  identity:identity list ->
  oci_artifact:oci_artifact list ->
  unit ->
  azurerm_healthcare_fhir_service

val yojson_of_azurerm_healthcare_fhir_service :
  azurerm_healthcare_fhir_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_policy_object_ids : string list prop;
  configuration_export_storage_account_name : string prop;
  container_registry_login_server_url : string list prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_policy_object_ids:string prop list ->
  ?configuration_export_storage_account_name:string prop ->
  ?container_registry_login_server_url:string prop list ->
  ?id:string prop ->
  ?kind:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  workspace_id:string prop ->
  authentication:authentication list ->
  cors:cors list ->
  identity:identity list ->
  oci_artifact:oci_artifact list ->
  string ->
  t

val make :
  ?access_policy_object_ids:string prop list ->
  ?configuration_export_storage_account_name:string prop ->
  ?container_registry_login_server_url:string prop list ->
  ?id:string prop ->
  ?kind:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  workspace_id:string prop ->
  authentication:authentication list ->
  cors:cors list ->
  identity:identity list ->
  oci_artifact:oci_artifact list ->
  string ->
  t Tf_core.resource
