(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_integration_connectors_endpoint_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_integration_connectors_endpoint_attachment__timeouts *)

type google_integration_connectors_endpoint_attachment = {
  description : string option; [@option]
      (** Description of the resource. *)
  labels : (string * string) list option; [@option]
      (** Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** Location in which Endpoint Attachment needs to be created. *)
  name : string;
      (** Name of Endpoint Attachment needs to be created. *)
  service_attachment : string;
      (** The path of the service attachment. *)
  timeouts :
    google_integration_connectors_endpoint_attachment__timeouts
    option;
}
[@@deriving yojson_of]
(** google_integration_connectors_endpoint_attachment *)

let google_integration_connectors_endpoint_attachment ?description
    ?labels ?timeouts ~location ~name ~service_attachment
    __resource_id =
  let __resource_type =
    "google_integration_connectors_endpoint_attachment"
  in
  let __resource =
    {
      description;
      labels;
      location;
      name;
      service_attachment;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_integration_connectors_endpoint_attachment
       __resource);
  ()
