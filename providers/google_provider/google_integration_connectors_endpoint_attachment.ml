(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_integration_connectors_endpoint_attachment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_integration_connectors_endpoint_attachment__timeouts *)

type google_integration_connectors_endpoint_attachment = {
  description : string prop option; [@option]
      (** Description of the resource. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** Location in which Endpoint Attachment needs to be created. *)
  name : string prop;
      (** Name of Endpoint Attachment needs to be created. *)
  project : string prop option; [@option]  (** project *)
  service_attachment : string prop;
      (** The path of the service attachment. *)
  timeouts :
    google_integration_connectors_endpoint_attachment__timeouts
    option;
}
[@@deriving yojson_of]
(** google_integration_connectors_endpoint_attachment *)

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  endpoint_ip : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_attachment : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let google_integration_connectors_endpoint_attachment ?description
    ?id ?labels ?project ?timeouts ~location ~name
    ~service_attachment __resource_id =
  let __resource_type =
    "google_integration_connectors_endpoint_attachment"
  in
  let __resource =
    ({
       description;
       id;
       labels;
       location;
       name;
       project;
       service_attachment;
       timeouts;
     }
      : google_integration_connectors_endpoint_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_integration_connectors_endpoint_attachment
       __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       endpoint_ip =
         Prop.computed __resource_type __resource_id "endpoint_ip";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       service_attachment =
         Prop.computed __resource_type __resource_id
           "service_attachment";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
