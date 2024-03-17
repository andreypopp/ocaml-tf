(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_endpoint_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_endpoint_attachment__timeouts *)

type google_apigee_endpoint_attachment = {
  endpoint_attachment_id : string;
      (** ID of the endpoint attachment. *)
  location : string;  (** Location of the endpoint attachment. *)
  org_id : string;
      (** The Apigee Organization associated with the Apigee instance,
in the format 'organizations/{{org_name}}'. *)
  service_attachment : string;
      (** Format: projects/*/regions/*/serviceAttachments/* *)
  timeouts : google_apigee_endpoint_attachment__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_endpoint_attachment *)

let google_apigee_endpoint_attachment ?timeouts
    ~endpoint_attachment_id ~location ~org_id ~service_attachment
    __resource_id =
  let __resource_type = "google_apigee_endpoint_attachment" in
  let __resource =
    {
      endpoint_attachment_id;
      location;
      org_id;
      service_attachment;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_endpoint_attachment __resource);
  ()
