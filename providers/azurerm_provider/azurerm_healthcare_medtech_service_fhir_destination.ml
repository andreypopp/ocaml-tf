(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_healthcare_medtech_service_fhir_destination__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_medtech_service_fhir_destination__timeouts *)

type azurerm_healthcare_medtech_service_fhir_destination = {
  destination_fhir_mapping_json : string;
      (** destination_fhir_mapping_json *)
  destination_fhir_service_id : string;
      (** destination_fhir_service_id *)
  destination_identity_resolution_type : string;
      (** destination_identity_resolution_type *)
  location : string;  (** location *)
  medtech_service_id : string;  (** medtech_service_id *)
  name : string;  (** name *)
  timeouts :
    azurerm_healthcare_medtech_service_fhir_destination__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_healthcare_medtech_service_fhir_destination *)

let azurerm_healthcare_medtech_service_fhir_destination ?timeouts
    ~destination_fhir_mapping_json ~destination_fhir_service_id
    ~destination_identity_resolution_type ~location
    ~medtech_service_id ~name __resource_id =
  let __resource_type =
    "azurerm_healthcare_medtech_service_fhir_destination"
  in
  let __resource =
    {
      destination_fhir_mapping_json;
      destination_fhir_service_id;
      destination_identity_resolution_type;
      location;
      medtech_service_id;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_healthcare_medtech_service_fhir_destination
       __resource);
  ()
