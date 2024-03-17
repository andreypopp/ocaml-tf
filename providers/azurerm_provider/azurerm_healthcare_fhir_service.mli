(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthcare_fhir_service__authentication
type azurerm_healthcare_fhir_service__cors
type azurerm_healthcare_fhir_service__identity
type azurerm_healthcare_fhir_service__oci_artifact
type azurerm_healthcare_fhir_service__timeouts
type azurerm_healthcare_fhir_service

val azurerm_healthcare_fhir_service :
  ?access_policy_object_ids:string prop list ->
  ?configuration_export_storage_account_name:string prop ->
  ?container_registry_login_server_url:string prop list ->
  ?id:string prop ->
  ?kind:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_healthcare_fhir_service__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  workspace_id:string prop ->
  authentication:azurerm_healthcare_fhir_service__authentication list ->
  cors:azurerm_healthcare_fhir_service__cors list ->
  identity:azurerm_healthcare_fhir_service__identity list ->
  oci_artifact:azurerm_healthcare_fhir_service__oci_artifact list ->
  string ->
  unit
