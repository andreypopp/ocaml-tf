(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthcare_medtech_service_fhir_destination__timeouts
type azurerm_healthcare_medtech_service_fhir_destination

type t = private {
  destination_fhir_mapping_json : string prop;
  destination_fhir_service_id : string prop;
  destination_identity_resolution_type : string prop;
  id : string prop;
  location : string prop;
  medtech_service_id : string prop;
  name : string prop;
}

val azurerm_healthcare_medtech_service_fhir_destination :
  ?id:string prop ->
  ?timeouts:
    azurerm_healthcare_medtech_service_fhir_destination__timeouts ->
  destination_fhir_mapping_json:string prop ->
  destination_fhir_service_id:string prop ->
  destination_identity_resolution_type:string prop ->
  location:string prop ->
  medtech_service_id:string prop ->
  name:string prop ->
  string ->
  t
