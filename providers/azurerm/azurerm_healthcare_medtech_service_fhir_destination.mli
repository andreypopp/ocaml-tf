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

type azurerm_healthcare_medtech_service_fhir_destination

val azurerm_healthcare_medtech_service_fhir_destination :
  ?id:string prop ->
  ?timeouts:timeouts ->
  destination_fhir_mapping_json:string prop ->
  destination_fhir_service_id:string prop ->
  destination_identity_resolution_type:string prop ->
  location:string prop ->
  medtech_service_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_healthcare_medtech_service_fhir_destination

val yojson_of_azurerm_healthcare_medtech_service_fhir_destination :
  azurerm_healthcare_medtech_service_fhir_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  destination_fhir_mapping_json : string prop;
  destination_fhir_service_id : string prop;
  destination_identity_resolution_type : string prop;
  id : string prop;
  location : string prop;
  medtech_service_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  destination_fhir_mapping_json:string prop ->
  destination_fhir_service_id:string prop ->
  destination_identity_resolution_type:string prop ->
  location:string prop ->
  medtech_service_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  destination_fhir_mapping_json:string prop ->
  destination_fhir_service_id:string prop ->
  destination_identity_resolution_type:string prop ->
  location:string prop ->
  medtech_service_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
