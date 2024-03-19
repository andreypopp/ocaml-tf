(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_healthcare_medtech_service_fhir_destination = {
  destination_fhir_mapping_json : string prop;
      (** destination_fhir_mapping_json *)
  destination_fhir_service_id : string prop;
      (** destination_fhir_service_id *)
  destination_identity_resolution_type : string prop;
      (** destination_identity_resolution_type *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  medtech_service_id : string prop;  (** medtech_service_id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_healthcare_medtech_service_fhir_destination *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_healthcare_medtech_service_fhir_destination ?id ?timeouts
    ~destination_fhir_mapping_json ~destination_fhir_service_id
    ~destination_identity_resolution_type ~location
    ~medtech_service_id ~name () :
    azurerm_healthcare_medtech_service_fhir_destination =
  {
    destination_fhir_mapping_json;
    destination_fhir_service_id;
    destination_identity_resolution_type;
    id;
    location;
    medtech_service_id;
    name;
    timeouts;
  }

type t = {
  destination_fhir_mapping_json : string prop;
  destination_fhir_service_id : string prop;
  destination_identity_resolution_type : string prop;
  id : string prop;
  location : string prop;
  medtech_service_id : string prop;
  name : string prop;
}

let register ?tf_module ?id ?timeouts ~destination_fhir_mapping_json
    ~destination_fhir_service_id
    ~destination_identity_resolution_type ~location
    ~medtech_service_id ~name __resource_id =
  let __resource_type =
    "azurerm_healthcare_medtech_service_fhir_destination"
  in
  let __resource =
    azurerm_healthcare_medtech_service_fhir_destination ?id ?timeouts
      ~destination_fhir_mapping_json ~destination_fhir_service_id
      ~destination_identity_resolution_type ~location
      ~medtech_service_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_healthcare_medtech_service_fhir_destination
       __resource);
  let __resource_attributes =
    ({
       destination_fhir_mapping_json =
         Prop.computed __resource_type __resource_id
           "destination_fhir_mapping_json";
       destination_fhir_service_id =
         Prop.computed __resource_type __resource_id
           "destination_fhir_service_id";
       destination_identity_resolution_type =
         Prop.computed __resource_type __resource_id
           "destination_identity_resolution_type";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       medtech_service_id =
         Prop.computed __resource_type __resource_id
           "medtech_service_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
