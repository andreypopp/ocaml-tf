(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthcare_medtech_service_fhir_destination__timeouts
type azurerm_healthcare_medtech_service_fhir_destination

val azurerm_healthcare_medtech_service_fhir_destination :
  ?id:string ->
  ?timeouts:
    azurerm_healthcare_medtech_service_fhir_destination__timeouts ->
  destination_fhir_mapping_json:string ->
  destination_fhir_service_id:string ->
  destination_identity_resolution_type:string ->
  location:string ->
  medtech_service_id:string ->
  name:string ->
  string ->
  unit
