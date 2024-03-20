(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~destination_fhir_mapping_json
    ~destination_fhir_service_id
    ~destination_identity_resolution_type ~location
    ~medtech_service_id ~name __id =
  let __type =
    "azurerm_healthcare_medtech_service_fhir_destination"
  in
  let __attrs =
    ({
       destination_fhir_mapping_json =
         Prop.computed __type __id "destination_fhir_mapping_json";
       destination_fhir_service_id =
         Prop.computed __type __id "destination_fhir_service_id";
       destination_identity_resolution_type =
         Prop.computed __type __id
           "destination_identity_resolution_type";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       medtech_service_id =
         Prop.computed __type __id "medtech_service_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_healthcare_medtech_service_fhir_destination
        (azurerm_healthcare_medtech_service_fhir_destination ?id
           ?timeouts ~destination_fhir_mapping_json
           ~destination_fhir_service_id
           ~destination_identity_resolution_type ~location
           ~medtech_service_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~destination_fhir_mapping_json
    ~destination_fhir_service_id
    ~destination_identity_resolution_type ~location
    ~medtech_service_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~destination_fhir_mapping_json
      ~destination_fhir_service_id
      ~destination_identity_resolution_type ~location
      ~medtech_service_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
