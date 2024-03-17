(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthcare_fhir_service__authentication
type azurerm_healthcare_fhir_service__cors
type azurerm_healthcare_fhir_service__identity
type azurerm_healthcare_fhir_service__oci_artifact
type azurerm_healthcare_fhir_service__timeouts
type azurerm_healthcare_fhir_service

val azurerm_healthcare_fhir_service :
  ?access_policy_object_ids:string list ->
  ?configuration_export_storage_account_name:string ->
  ?container_registry_login_server_url:string list ->
  ?id:string ->
  ?kind:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_healthcare_fhir_service__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  workspace_id:string ->
  authentication:azurerm_healthcare_fhir_service__authentication list ->
  cors:azurerm_healthcare_fhir_service__cors list ->
  identity:azurerm_healthcare_fhir_service__identity list ->
  oci_artifact:azurerm_healthcare_fhir_service__oci_artifact list ->
  string ->
  unit
